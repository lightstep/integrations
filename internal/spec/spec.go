package spec

import (
	"encoding/csv"
	"fmt"
	alerts2 "github.com/lightstep/integrations/internal/alerts"
	"github.com/lightstep/integrations/internal/constants"
	"github.com/lightstep/integrations/internal/dashboards"
	"github.com/lightstep/integrations/internal/examples/compose"
	helm2 "github.com/lightstep/integrations/internal/examples/helm"
	k8s2 "github.com/lightstep/integrations/internal/examples/k8s"
	images2 "github.com/lightstep/integrations/internal/images"
	"github.com/lightstep/integrations/internal/spec/mock"
	"github.com/lightstep/integrations/internal/templates"
	"github.com/lightstep/integrations/internal/utils"
	"gopkg.in/yaml.v3"
	"html/template"
	"io"
	"log"
	"strings"

	//"log"
	"os"
)

const (
	// Templates path
	Base     = "integrations"
	BasePath = "integrations/internal/"
)

var mockData = ReadmeData{
	Title:           "Agent Check: Docker Compose",
	Overview:        "This check monitors Docker Compose, etc.",
	IntegrationName: "docker_compose",
	InitConfig:      "blank or `{}`",
	InstanceConfig:  `{"server": "%%host%%", "port":"443"}`,
}

// Run is the main function that starts the application. It reads a spec file, unmarshals it into a Spec object,
// and renders the spec's components.
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

	log.Printf("%s Service Components have been successfully created! \n", spec.Name)
	return nil
}

// Add adds a file to the FileSet. The file is added at the path specified by file.Path.
func (f *FileSet) Add(file File) {
	(*f)[file.Path+"/"+file.Name] = file
}

// Render generates components for each file in the FileSet, based on the specified sub-directory.
// It also generates a README file for the repository.
func (f *FileSet) Render(componentName string) error {
	for _, file := range *f {
		switch componentName {
		case constants.DashboardubDir:
			newDashboard := dashboards.NewDashboard(componentName)
			if err := newDashboard.Generate(file.Path, file.Content); err != nil {
				return err
			}
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
	}

	return nil
}

// GenerateRepoReadme creates a README file for the component by applying the supplied data to a template.
func GenerateRepoReadme(componentName string) error {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", Base, componentName))
	f, err := os.Create(fmt.Sprintf("%s/%s", path, constants.ReadMeFile))
	if err != nil {
		return fmt.Errorf("error creating file: %v", err)
	}
	defer f.Close()

	readmeTemplate, err := GetTemplate(constants.ReadMeTemplate)
	if err != nil {
		return err
	}
	t := template.Must(template.New(constants.ReadMeName).Parse(string(readmeTemplate)))
	err = t.Execute(f, mockData)
	if err != nil {
		return fmt.Errorf("error executing template: %v", err)
	}

	return nil
}

func GetDirStructure() (DirStructure, error) {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", BasePath, constants.SpecConfigFile))
	data, err := os.ReadFile(path)
	if err != nil {
		return DirStructure{}, fmt.Errorf("error: %v", err)
	}

	var df DirStructure
	err = yaml.Unmarshal(data, &df)
	if err != nil {
		return DirStructure{}, fmt.Errorf("error: %v", err)
	}

	return df, nil
}

type Component struct {
	Name     string
	Files    []string
	Path     string
	Template string
}

// Render creates a directory for the spec and renders all of its components.
func (s Spec) Render() error {
	basePath, _ := utils.GetRelativePath(Base)
	servicePath := fmt.Sprintf("%s/%s", basePath, s.AppID)

	if err := os.Mkdir(servicePath, 0755); err != nil {
		return fmt.Errorf("unable to create directory for service '%s': %v", s.Name, err)
	}

	for _, component := range s.Components {
		dirStructure, err := GetDirStructure()
		if err != nil {
			return fmt.Errorf("error getting component files: %v", err)
		}

		comp, ok := dirStructure.DirTree[component.Name]
		if !ok {
			return fmt.Errorf("error getting component dir: %v", component.Name)
		}

		component.Path = fmt.Sprintf("%s/%s", servicePath, comp.Path)
		component.Files = comp.Files
		component.Template = comp.Template

		if err := component.Render(s.AppID); err != nil {
			return fmt.Errorf("error rendering component: %s %v", component.Name, err)
		}
	}

	if err := CopySpec(basePath, servicePath); err != nil {
		return fmt.Errorf("error copy spec file: %v", err)
	}
	if err := GenerateMetricsData(servicePath); err != nil {
		return fmt.Errorf("error generating metircs file: %v", err)
	}

	return nil
}

// Render creates directories for the component and renders all of its files.
func (c *Component) Render(appId string) error {
	fs := make(FileSet)

	if err := os.MkdirAll(c.Path, 0755); err != nil {
		return fmt.Errorf("error creating directory: %v", err)
	}
	if err := c.addFile(c.Template, fs, c.Path); err != nil {
		return fmt.Errorf("error adding file files: %v", err)
	}
	if err := fs.Render(c.Name); err != nil {
		return fmt.Errorf("error rendering files: %v", err)
	}
	if err := GenerateRepoReadme(appId); err != nil {
		return fmt.Errorf("error generating readme file: %v", err)
	}

	return nil
}

func GenerateMetricsData(servicePath string) error {
	filePath := fmt.Sprintf("%s/%s", servicePath, "metrics.csv")
	file, err := os.Create(filePath)
	if err != nil {
		return fmt.Errorf("error creating csv file: %v", err)
	}
	defer file.Close()

	writer := csv.NewWriter(file)
	defer writer.Flush()

	for _, line := range strings.Split(mock.MockMetrics, "\n") {
		if err := writer.Write(strings.Split(line, ",")); err != nil {
			return fmt.Errorf("error : %v", err)
		}
	}

	return nil
}

func CopySpec(src, dst string) error {
	srcFile, err := os.Open(fmt.Sprintf("%s/spec.yaml", src))
	if err != nil {
		return err
	}
	defer srcFile.Close()

	dstFile, err := os.Create(fmt.Sprintf("%s/spec.yaml", dst))
	if err != nil {
		return err
	}
	defer dstFile.Close()

	_, err = io.Copy(dstFile, srcFile)
	if err != nil {
		return err
	}

	return dstFile.Sync()
}

// addFile sets the content for each file in the component's file list.
func (c *Component) addFile(tmplPath string, fs FileSet, path string) error {
	for _, filename := range c.Files {
		template, err := GetTemplate(tmplPath)
		if err != nil {
			return err
		}
		fs.Add(File{Name: filename, Path: path, Content: template})
	}

	return nil
}

// GetTemplate retrieves the content of the specified template file.
func GetTemplate(tmplPath string) (templateBytes []byte, err error) {
	templateBytes, err = ReadTemplate(tmplPath)
	if err != nil {
		return nil, err
	}

	return templateBytes, nil
}

// ReadTemplate reads the content of the specified template file from the embedded file system.
func ReadTemplate(path string) ([]byte, error) {
	templateBytes, err := templates.TemplateContent.ReadFile(path)
	if err != nil {
		return nil, fmt.Errorf("error reading template file: %v", err)
	}

	return templateBytes, nil
}
