package compose

import (
	"fmt"
	"gopkg.in/yaml.v3"
	"html/template"
	"os"
)

const (
	CompTemplateName = "docker-compose"
	CompFile         = "docker-compose.yml"
	configFile       = "./config/compose.yaml"
)

type Compose interface {
	Generate(string, []byte) error
}

type Service struct {
	Name      string   `json:"name" yaml:"name"`
	Container string   `json:"container" yaml:"container"`
	Image     string   `json:"image" yaml:"image"`
	EnvVar    string   `json:"env_var" yaml:"env_var"`
	Ports     []string `json:"ports" yaml:"ports"`
	Command   []string `json:"command" yaml:"command"`
	Networks  []string `json:"networks" yaml:"networks"`
}

type OtelCollector struct {
	Name      string   `json:"name" yaml:"name"`
	Container string   `json:"container" yaml:"container"`
	EnvVar    string   `json:"env_var" yaml:"env_var"`
	Configs   []Config `json:"configs" yaml:"configs"`
	Command   []string `json:"command" yaml:"command"`
	Networks  []string `json:"networks" yaml:"networks"`
	Version   string   `json:"version" yaml:"version"`
}

type Config struct {
	Source string `json:"source" yaml:"source"`
	Target string `json:"target" yaml:"target"`
}

type compose struct {
	Service   Service       `json:"service" yaml:"service"`
	Collector OtelCollector `json:"otelCollector" yaml:"otelCollector"`
}

func NewCompose(componentName string) Compose {
	config, _ := GetConfig(componentName)
	return &compose{
		Service:   config.Service,
		Collector: config.Collector,
	}
}

func (c *compose) Generate(path string, content []byte) error {
	t := template.Must(template.New(CompTemplateName).Parse(string(content)))

	f, err := os.Create(fmt.Sprintf("%s/%s", path, CompFile))
	if err != nil {
		return fmt.Errorf("error creating file: %v", err)
	}
	defer f.Close()

	err = t.Execute(f, c)
	if err != nil {
		return fmt.Errorf("error executing template: %v", err)
	}

	return nil
}

func GetConfig(componentName string) (*compose, error) {
	data, err := os.ReadFile(configFile)
	if err != nil {
		return nil, fmt.Errorf("error renreding files: %v", err)
	}

	var c *compose

	if err = yaml.Unmarshal(data, &c); err != nil {
		return nil, fmt.Errorf("error renreding files: %v", err)
	}

	c.Service.Name = fmt.Sprintf("%sService", componentName)
	c.Service.Container = componentName
	c.Service.Image = fmt.Sprintf("%s:latest", componentName)

	return c, nil
}
