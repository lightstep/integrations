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

func Run(specFile string) error {
	// Read spec file
	data, err := os.ReadFile(specFile)
	if err != nil {
		return fmt.Errorf("unable to read spec file: %v", err)
	}

	// Unmarshal spec
	var spec Spec
	err = yaml.Unmarshal(data, &spec)
	if err != nil {
		return fmt.Errorf("unable to unmarshal spec, ensure it is in the correct format: %v", err)
	}

	// Generate components
	if err = spec.Render(); err != nil {
		return fmt.Errorf("error rendering service: %v", err)
	}

	log.Println("Service Components have been successfully created!")
	return nil
}

func getIntegrationOptions(data []byte, err error) (IntegrationsConfig, error) {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", BasePath, constants.SpecConfigOptions))
	data, err = os.ReadFile(path)
	if err != nil {
		return IntegrationsConfig{}, fmt.Errorf("unable to read spec file: %v", err)
	}

	var intConfig IntegrationsConfig
	err = yaml.Unmarshal(data, &intConfig)
	if err != nil {
		return IntegrationsConfig{}, fmt.Errorf("unable to unmarshal file: %v", err)
	}
	return intConfig, nil
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
			// TODO: generate collector.yaml file
			//receiver := collector.NewReceiver(prompt.GetCategory())
			//receiver.Generate("", []byte{})

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

//TODO: Remove
//func GetComponentFiles() (DirectoryFiles, error) {
//	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", BasePath, constants.SpecConfigFile))
//	data, err := os.ReadFile(path)
//	if err != nil {
//		return DirectoryFiles{}, fmt.Errorf("error: %v", err)
//	}
//
//	var df DirectoryFiles
//	err = yaml.Unmarshal(data, &df)
//	if err != nil {
//		return DirectoryFiles{}, fmt.Errorf("error: %v", err)
//	}
//
//	return df, nil
//}

type Component interface {
	// paths within each component are relative to the integration package root
	// so this argument can set the path to the component root
	Render() error
}

type Artifacts struct {
	Files    []string
	Template string
}

type ComponentSpec struct {
	Name  string
	Files []string
	Path  string
}

type Template struct {
	Name string
}

// Render
func (s Spec) Render() error {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", Base, s.Name))
	if err := os.Mkdir(path, 0755); err != nil {
		return fmt.Errorf("unable to create directory for service '%s': %v", s.Name, err)
	}

	for _, component := range s.Components {
		component.Render()
	}

	return nil
}

func (c *ComponentSpec) Render() error {
	fs := make(FileSet)

	d := strings.Split(c.Path, "/")
	subDir := d[1]
	if subDir == "" {
		subDir = d[0]
	}

	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", Base, filepath.Join(c.Name, c.Path)))
	if err := os.MkdirAll(path, 0755); err != nil {
		return fmt.Errorf("error creating directory: %v", err)
	}
	if err := c.addFile(subDir, fs, path); err != nil {
		return fmt.Errorf("error adding file files: %v", err)
	}
	if err := fs.Render(c.Name, subDir); err != nil {
		return fmt.Errorf("error rendering files: %v", err)
	}
	return nil
}

func (c *ComponentSpec) addFile(dir string, fs FileSet, path string) error {
	// Setting files info
	for _, filename := range c.Files {
		// Put the content
		template, err := GetTemplate(dir)
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
