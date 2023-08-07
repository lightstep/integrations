package template

import (
	"bytes"
	"errors"
	"io/fs"
	"os"
	"text/template"
)


// CoreTemplates is the embedded file system containing our templates
//go:embed tools/internal/templates/*
var CoreTemplates embed.FS

// Template structure to represent our template specification
type Template struct {
	Vars map[string]string `yaml:"Vars"`
	Name string            `yaml:"Name"`
	Path string            `yaml:"Path"`
}

// ValidationErr represents a custom error type for validation
type ValidationErr struct {
	Msg string
}

func (e *ValidationErr) Error() string {
	return e.Msg
}

func (t *Template) Render() error {
	// Check if the template name corresponds to a directory or a single file
	fileInfo, err := CoreTemplates.Stat("tools/internal/templates/" + t.Name)
	if err != nil {
		return err
	}

	if fileInfo.IsDir() {
		// Handle directory of templates
		entries, err := CoreTemplates.ReadDir("tools/internal/templates/" + t.Name)
		if err != nil {
			return err
		}

		for _, entry := range entries {
			if !entry.IsDir() {
				if err := t.renderFile(entry.Name()); err != nil {
					return err
				}
			}
		}
	} else {
		// Handle single template file
		return t.renderFile(t.Name)
	}

	return nil
}

func (t *Template) renderFile(filename string) error {
	templateData, err := CoreTemplates.ReadFile("tools/internal/templates/" + filename)
	if err != nil {
		return err
	}

	tmpl, err := template.New(filename).Parse(string(templateData))
	if err != nil {
		return err
	}

	var buffer bytes.Buffer
	if err = tmpl.Execute(&buffer, t.Vars); err != nil {
		return err
	}

	// Write the rendered content to the location specified by the Path
	return os.WriteFile(t.Path+"/"+filename, buffer.Bytes(), fs.ModePerm)
}

