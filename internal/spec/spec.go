package spec

import (
	"fmt"
	alerts2 "github.com/lightstep/integrations/internal/alerts"
	"github.com/lightstep/integrations/internal/constants"
	"github.com/lightstep/integrations/internal/examples/compose"
	helm2 "github.com/lightstep/integrations/internal/examples/helm"
	k8s2 "github.com/lightstep/integrations/internal/examples/k8s"
	images2 "github.com/lightstep/integrations/internal/images"
	"github.com/lightstep/integrations/internal/utils"
	"gopkg.in/yaml.v3"
	"html/template"
	"log"
	"path/filepath"
	"strings"

	//"log"
	"os"
)

const (
	// Templates path
	Base             = "integrations"
	BasePath         = "integrations/internal/"
	BaseTemplatePath = BasePath + "templates/"
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

	Components []ComponentSpec `json:"components,omitempty" yaml:"components,omitempty"`
}

type Author struct {
	Name string `json:"name" yaml:"name"`
}

type SignalData struct {
	Name string `json:"name,omitempty"`
	Type string `json:"type,omitempty"`
	Path string `json:"path,omitempty"`
}

type ImageData struct {
	Name        string `json:"name,omitempty"`
	Description string `json:"description,omitempty"`
	Path        string `json:"path,omitempty"`
}

type Change struct {
	Description string `json:"description,omitempty"`
	Date        string `json:"date,omitempty"`
}

type Changelog struct {
	Path    string   `json:"path,omitempty"`
	Changes []Change `json:"changes,omitempty"`
}

type Example struct {
	Name     string `json:"name,omitempty"`
	Platform string `json:"platform,omitempty"`
	Files    []File `json:"files,omitempty"`
}

type Assets struct {
	Files    []string
	Template string
}

type DirectoryFiles struct {
	DirAssets map[string]Assets `yaml:"dir_assets"`
}

type File struct {
	Name        string `json:"name,omitempty"`
	Description string `json:"description,omitempty"`
	Path        string `json:"path,omitempty"`
	Content     []byte `json:"content,omitempty"`
}

type FileSet map[string]File

func Run(specFile string) error {
	// Read spec file
	data, err := os.ReadFile(specFile)
	if err != nil {
		return fmt.Errorf("unable to read spec file: %v", err)
	}

	// Unmarshal spec
	var s Spec
	err = yaml.Unmarshal(data, &s)
	if err != nil {
		return fmt.Errorf("unable to unmarshal spec, ensure it is in the correct format: %v", err)
	}

	// Generate components
	for _, component := range s.Components {
		if err = component.Render(); err != nil {
			return fmt.Errorf("unable to create directory for component '%s': %v", component.Name, err)
		}
	}

	log.Println("Directories for components have been successfully created.")
	return nil
}

func (f *FileSet) Add(file File) {
	(*f)[file.Path+"/"+file.Name] = file
}

func (f *FileSet) Render(componentName string, subDir string) error {
	// write generator and store each file
	data := ReadmeData{
		Title:           "Agent Check: Docker Compose",
		Overview:        "This check monitors Docker Compose, etc.",
		IntegrationName: "docker_compose",
		InitConfig:      "blank or `{}`",
		InstanceConfig:  `{"server": "%%host%%", "port":"443"}`,
	}

	for _, file := range *f {
		switch subDir {
		case constants.DashboardubDir:
			//TODO: To be integrated
		case constants.ComposeSubDir:
			newCompose := compose.NewCompose(componentName)
			if err := newCompose.Generate(file.Path, file.Content); err != nil {
				return err
			}
		case constants.HelmSubDir:
			newHelm := helm2.NewHelm(componentName)
			if err := newHelm.Generate(file.Path, file.Content); err != nil {
				return err
			}
		case constants.AlertsSubDir:
			newAlerts := alerts2.NewAlerts(componentName)
			if err := newAlerts.Generate(file.Path, file.Content); err != nil {
				return err
			}
		case constants.K8sDir:
			newK8s := k8s2.NewK8s(componentName)
			if err := newK8s.Generate(file.Path, file.Content); err != nil {
				return err
			}
		default:
			newImages := images2.NewIMages()
			if err := newImages.Generate(file.Path, file.Content); err != nil {
				return err
			}
		}
		if _, err := GenerateRepoReadme(componentName, data); err != nil {
			return err
		}
	}

	return nil
}

type ReadmeData struct {
	Title           string
	Overview        string
	IntegrationName string
	InitConfig      string
	InstanceConfig  string
}

func GenerateRepoReadme(componentName string, data ReadmeData) ([]byte, error) {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", Base, componentName))
	f, err := os.Create(fmt.Sprintf("%s/%s", path, constants.ReadMeFile))
	if err != nil {
		return nil, fmt.Errorf("error creating file: %v", err)
	}
	defer f.Close()

	// 1. get the template?
	readmeTemplate, err := GetTemplate(constants.ReadMeTemplate)
	if err != nil {
		return nil, err
	}
	t := template.Must(template.New(constants.ReadMeName).Parse(string(readmeTemplate)))
	// 2. execute the template
	err = t.Execute(f, data)
	if err != nil {
		return nil, fmt.Errorf("error executing template: %v", err)
	}
	// 3. data is what's in repo
	return nil, nil
}

func GetComponentFiles() (DirectoryFiles, error) {
	data, err := os.ReadFile(constants.ConfigFile)
	if err != nil {
		return DirectoryFiles{}, fmt.Errorf("error: %v", err)
	}

	var df DirectoryFiles
	err = yaml.Unmarshal(data, &df)
	if err != nil {
		return DirectoryFiles{}, fmt.Errorf("error: %v", err)
	}

	return df, nil
}

type Component interface {
	// paths within each component are relative to the integration package root
	// so this argument can set the path to the component root
	Render() error
}

type ComponentSpec struct {
	Name string
}

func (c ComponentSpec) Render() error {
	if err := os.Mkdir(fmt.Sprintf("./%s", c.Name), 0755); err != nil {
		return fmt.Errorf("unable to create directory for component '%s': %v", c.Name, err)
	}

	fs := make(FileSet)

	// Render each subdirectory
	directoryFiles, err := GetComponentFiles()
	if err != nil {
		return fmt.Errorf("error creating directory: %v", err)
	}

	for dir, assets := range directoryFiles.DirAssets {
		d := strings.Split(dir, "/")
		subDir := d[1]
		if subDir == "" {
			subDir = d[0]
		}

		path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", Base, filepath.Join(c.Name, dir)))
		if err = os.MkdirAll(path, 0755); err != nil {
			return fmt.Errorf("error creating directory: %v", err)
		}
		if err = addFile(assets, fs, path); err != nil {
			return fmt.Errorf("error adding file files: %v", err)
		}
		if err = fs.Render(c.Name, subDir); err != nil {
			return fmt.Errorf("error renreding files: %v", err)
		}
	}

	return nil
}

func addFile(assets Assets, fs FileSet, path string) error {
	// Setting files info
	for _, filename := range assets.Files {
		// Put the content
		template, err := GetTemplate(assets.Template)
		if err != nil {
			return err
		}
		fs.Add(File{Name: filename, Path: path, Content: template})
	}
	return nil
}

func GetTemplate(templatePath string) (template []byte, err error) {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", BaseTemplatePath, templatePath))
	template, err = ReadTemplate(path)
	if err != nil {
		return nil, err
	}
	return template, nil
}

func ReadTemplate(path string) ([]byte, error) {
	tmplBytes, err := os.ReadFile(path)
	if err != nil {
		return nil, fmt.Errorf("error: %v", err)
	}
	return tmplBytes, nil
}
