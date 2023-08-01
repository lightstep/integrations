package compose

import (
	"fmt"
	"github.com/lightstep/integrations/internal/utils"
	"gopkg.in/yaml.v3"
	"html/template"
	"os"
	"path/filepath"
)

const (
	compTemplateName = "docker-compose"
	compFile         = "docker-compose.yml"
	configFile       = "config/compose_config.yaml"
	composePath      = "integrations/internal/examples/compose"
)

type Compose interface {
	TemplateRender(string, []byte) error
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

func (c *compose) TemplateRender(path string, templateBytes []byte) error {
	f, err := os.Create(fmt.Sprintf("%s/%s", path, compFile))
	if err != nil {
		return fmt.Errorf("error creating file: %v", err)
	}
	defer f.Close()

	tmpl, err := template.New(compTemplateName).Parse(string(templateBytes))
	if err != nil {
		return fmt.Errorf("error creating template: %v", err)
	}
	t := template.Must(tmpl, nil)
	err = t.Execute(f, c)
	if err != nil {
		return fmt.Errorf("error executing template: %v", err)
	}

	return nil
}

func GetConfig(componentName string) (*compose, error) {
	path, _ := utils.GetRelativePath(composePath)
	data, err := os.ReadFile(filepath.Join(path, configFile))
	if err != nil {
		return nil, fmt.Errorf("error reading compose config files: %v", err)
	}

	var c *compose

	if err = yaml.Unmarshal(data, &c); err != nil {
		return nil, fmt.Errorf("error unmarshalling files: %v", err)
	}

	c.Service.Name = fmt.Sprintf("%sService", componentName)
	c.Service.Container = componentName
	c.Service.Image = fmt.Sprintf("%s:latest", componentName)

	return c, nil
}
