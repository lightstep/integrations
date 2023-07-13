package spec

import (
	"fmt"
	alerts2 "github.com/lightstep/integrations/internal/alerts"
	"github.com/lightstep/integrations/internal/constants"
	"github.com/lightstep/integrations/internal/examples/compose"
	helm2 "github.com/lightstep/integrations/internal/examples/helm"
	k8s2 "github.com/lightstep/integrations/internal/examples/k8s"
	images2 "github.com/lightstep/integrations/internal/images"
	"github.com/lightstep/integrations/internal/userprompt"
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

	optionsPrompt   = "Please select an integration option:"
	componentPrompt = "Do you want to generate component '%s'? (yes/no): "
)

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

	intConfig, selectedOption, err := getIntegrationOptions(data, err)
	if err != nil {
		return fmt.Errorf("unable to get integration options: %v", err)
	}

	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", BasePath, constants.CollectorConfig))
	data, err = os.ReadFile(path)
	if err != nil {
		return fmt.Errorf("unable to read spec file: %v", err)
	}

	var collectorConfig CollectorConfig
	err = yaml.Unmarshal(data, &collectorConfig)
	if err != nil {
		return fmt.Errorf("unable to unmarshal file: %v", err)
	}

	// Type assertion for "collector"
	collector, ok := collectorConfig.Integrations[intConfig.Options[selectedOption]]
	if !ok {
		return fmt.Errorf("unable to get collector for: %v", intConfig.Options[selectedOption])
	}
	fmt.Printf("Your collectors: %v \n", collector)

	// Generate components
	for _, component := range s.Components {
		category, ok := collector.(map[string]interface{})[component.Name].(string)
		if !ok {
			return fmt.Errorf("unable to find category for %s", component.Name)
		}
		fmt.Printf("Your category: %v \n", category)

		userPrompt := userprompt.NewUserPrompt(component.Name, intConfig.Options[selectedOption], category)

		generate, err := userPrompt.GetString(fmt.Sprintf(componentPrompt, component.Name))
		if err != nil {
			return fmt.Errorf("error reading input: %v", err)
		}
		if generate == "yes" {
			if err = component.Render(userPrompt); err != nil {
				return fmt.Errorf("unable to render component '%s': %v", component.Name, err)
			}
		}
	}

	log.Println("Components have been successfully created!")
	return nil
}

func getIntegrationOptions(data []byte, err error) (IntegrationsConfig, string, error) {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", BasePath, constants.SpecConfigOptions))
	data, err = os.ReadFile(path)
	if err != nil {
		return IntegrationsConfig{}, "", fmt.Errorf("unable to read spec file: %v", err)
	}

	var intConfig IntegrationsConfig
	err = yaml.Unmarshal(data, &intConfig)
	if err != nil {
		return IntegrationsConfig{}, "", fmt.Errorf("unable to unmarshal file: %v", err)
	}

	selectedOption, err := userprompt.GetOption(optionsPrompt, intConfig.Options)
	if err != nil {
		fmt.Println("Error: ", err)
	}
	fmt.Println("You selected:", selectedOption)
	return intConfig, selectedOption, nil
}

func (f *FileSet) Add(file File) {
	(*f)[file.Path+"/"+file.Name] = file
}

func (f *FileSet) Render(componentName string, subDir string, prompt userprompt.UserPrompt) error {
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
		if _, err := GenerateRepoReadme(componentName, data, prompt); err != nil {
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

func GenerateRepoReadme(componentName string, data ReadmeData, prompt userprompt.UserPrompt) ([]byte, error) {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s/%s", Base, prompt.GetOption(), componentName))
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
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s", BasePath, constants.SpecConfigFile))
	data, err := os.ReadFile(path)
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
	Render(userprompt.UserPrompt) error
}

type ComponentSpec struct {
	Name string
}

// Render
func (c ComponentSpec) Render(userPrompt userprompt.UserPrompt) error {
	path, _ := utils.GetRelativePath(fmt.Sprintf("%s/%s/%s", Base, userPrompt.GetOption(), c.Name))
	if err := os.Mkdir(path, 0755); err != nil {
		return fmt.Errorf("unable to create directory for component '%s': %v", c.Name, err)
	}

	fs := make(FileSet)

	// Render each subdirectory
	componentFiles, err := GetComponentFiles()
	if err != nil {
		return fmt.Errorf("error getting component files: %v", err)
	}

	for dir, assets := range componentFiles.DirectoryTree {
		d := strings.Split(dir, "/")
		subDir := d[1]
		if subDir == "" {
			subDir = d[0]
		}

		path, _ = utils.GetRelativePath(fmt.Sprintf("%s/%s/%s", Base, userPrompt.GetOption(), filepath.Join(c.Name, dir)))
		if err = os.MkdirAll(path, 0755); err != nil {
			return fmt.Errorf("error creating directory: %v", err)
		}
		if err = addFile(assets, fs, path); err != nil {
			return fmt.Errorf("error adding file files: %v", err)
		}
		if err = fs.Render(c.Name, subDir, userPrompt); err != nil {
			return fmt.Errorf("error rendering files: %v", err)
		}
	}

	return nil
}

func addFile(assets Directories, fs FileSet, path string) error {
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
