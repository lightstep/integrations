package spec

import (
	"fmt"
	"os"
	"path/filepath"
)

type Spec struct {
	Version string   `json:"version,omitempty" yaml:"version,omitempty"`
	ID      string   `json:"id" yaml:"id"`
	Name    string   `json:"name" yaml:"name"`
	Author  Author   `json:"author,omitempty" yaml:"author,omitempty"`
	Tags    []string `json:"tags,omitempty" yaml:"tags,omitempty"`
	Status  string   `json:"status,omitempty" yaml:"status,omitempty"`

	Signals   []SignalData `json:"signals,omitempty" yaml:"signals,omitempty"`
	Images    []ImageData  `json:"images,omitempty" yaml:"images,omitempty"`
	Changelog Changelog    `json:"changelog,omitempty" yaml:"changelog,omitempty"`

	Components []component `json:"components,omitempty" yaml:"components,omitempty"`
}

type Author struct {
	Name string `json:"name" yaml:"name"`
}

type SignalData struct {
	Name string `json:"name,omitempty" yaml:"name,omitempty"`
	Type string `json:"type,omitempty" yaml:"type,omitempty"`
	Path string `json:"path,omitempty" yaml:"path,omitempty"`
}

type ImageData struct {
	Name        string `json:"name,omitempty" yaml:"name,omitempty"`
	Description string `json:"description,omitempty" yaml:"description,omitempty"`
	Path        string `json:"path,omitempty" yaml:"path,omitempty"`
}

type Change struct {
	Description string `json:"description,omitempty" yaml:"description,omitempty"`
	Date        string `json:"date,omitempty" yaml:"date,omitempty"`
}

type Changelog struct {
	Path    string   `json:"path,omitempty" yaml:"path,omitempty"`
	Changes []Change `json:"changes,omitempty" yaml:"changes,omitempty"`
}

type Example struct {
	Name     string `json:"name,omitempty" yaml:"name,omitempty"`
	Platform string `json:"platform,omitempty" yaml:"platform,omitempty"`
	Files    []File `json:"files,omitempty" yaml:"files,omitempty"`
}

type File struct {
	Name        string `json:"name,omitempty" yaml:"name,omitempty"`
	Description string `json:"description,omitempty" yaml:"description,omitempty"`
	Path        string `json:"path,omitempty" yaml:"path,omitempty"`
	content     []byte `json:"content,omitempty" yaml:"content,omitempty"`
}

type FileSet map[string]File // `json:"file_set,omitempty"`

func (f *FileSet) Add(file File) {
	(*f)[file.Path+file.Name] = file
}

func (f *FileSet) Render() error {
	// TODO: implement this to write generator and store each file
	return nil
}

func GenerateRepoReadme() ([]byte, error) {
	// 1. get the template?
	// 2. execute the template
	// 3. data is what's in repo
	return nil, nil
}

type Component interface {
	// paths within each component are relative to the integration package root
	// so this argument can set the path to the component root
	Render() error
}

type component struct {
	Name string
}

func (c component) Render() error {
	// Generate directories for each component
	err := os.Mkdir(fmt.Sprintf("./%s", c.Name), 0755)
	if err != nil {
		return fmt.Errorf("unable to create directory for component '%s': %v", c.Name, err)
	}
	if err := createComponentDirectories(c.Name); err != nil {
		return err
	}
	return nil
}

func createComponentDirectories(serviceName string) error {
	// Define the subdirectories to be created for each component
	subDirs := []string{
		"examples/compose",
		"examples/helm/templates",
		"examples/k8s/templates",
		"dashboards/overview",
		"alerts/mem",
		"images",
	}

	// Create each subdirectory
	for _, dir := range subDirs {
		path := filepath.Join(serviceName, dir)
		if err := os.MkdirAll(path, 0755); err != nil {
			return fmt.Errorf("unable to create directory '%s': %v", path, err)
		}
	}

	return nil
}
