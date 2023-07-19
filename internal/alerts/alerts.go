package alerts

import (
	"fmt"
	"github.com/lightstep/integrations/internal/dashboards"
	"github.com/lightstep/integrations/internal/utils"
	"gopkg.in/yaml.v3"
	"html/template"
	"os"
	"path/filepath"
)

const (
	alertsTemplateName = "alerts"
	alertsFile         = "example-alert.tf"
	alertsPath         = "integrations/internal/alerts"
	mockAlertsPath     = alertsPath + "/mock"
	mockAlertsFile     = "mock-data.yaml"
)

type Alerts interface {
	Generate(string, []byte) error
}

type alerts struct {
	RequiredProviders dashboards.RequiredProviders `json:"required_providers" yaml:"required_providers"`
	RequiredVersion   string                       `json:"required_version" yaml:"required_version"`
	Resource          AlertResource                `json:"resource" yaml:"resource"`
}

func NewAlerts(componentName string) Alerts {
	config, _ := getConfig(componentName)
	return &alerts{
		RequiredProviders: config.RequiredProviders,
		RequiredVersion:   config.RequiredVersion,
		Resource:          config.Resource,
	}
}

func (a alerts) Generate(path string, templateBytes []byte) error {
	f, err := os.Create(fmt.Sprintf("%s/%s", path, alertsFile))
	if err != nil {
		return fmt.Errorf("error creating file: %v", err)
	}
	defer f.Close()

	tmpl, err := template.New(alertsTemplateName).Parse(string(templateBytes))
	if err != nil {
		return fmt.Errorf("error creating template: %v", err)
	}
	t := template.Must(tmpl, nil)
	err = t.Execute(f, a)
	if err != nil {
		return fmt.Errorf("error executing template: %v", err)
	}

	return nil
}

func getConfig(componentName string) (*alerts, error) {
	path, _ := utils.GetRelativePath(mockAlertsPath)
	data, err := os.ReadFile(filepath.Join(path, mockAlertsFile))
	if err != nil {
		return nil, fmt.Errorf("error reading compose config files: %v", err)
	}

	var a *alerts

	if err = yaml.Unmarshal(data, &a); err != nil {
		return nil, fmt.Errorf("error unmarshalling files: %v", err)
	}

	return a, nil
}
