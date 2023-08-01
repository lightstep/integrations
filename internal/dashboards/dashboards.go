package dashboards

import (
	"fmt"
	"github.com/lightstep/integrations/internal/utils"
	"gopkg.in/yaml.v3"
	"html/template"
	"os"
	"path/filepath"
)

const (
	dashboardTemplateName = "dashboards"
	dashboardFile         = "example-dashboard.tf"
	dashboardPath         = "integrations/internal/dashboards"
	mockDashboardPath     = dashboardPath + "/mock"
	mockDashboardFile     = "mock-data.yaml"
)

type Dashboard interface {
	TemplateRender(string, []byte) error
}

type dashboard struct {
	RequiredProviders RequiredProviders `json:"required_providers" yaml:"required_providers"`
	RequiredVersion   string            `json:"required_version" yaml:"required_version"`
	Resource          Resource          `json:"resource" yaml:"resource"`
}

func NewDashboard(componentName string) Dashboard {
	config, _ := getConfig(componentName)
	return &dashboard{
		RequiredProviders: config.RequiredProviders,
		RequiredVersion:   config.RequiredVersion,
		Resource:          config.Resource,
	}
}

func (d *dashboard) TemplateRender(path string, templateBytes []byte) error {
	f, err := os.Create(fmt.Sprintf("%s/%s", path, dashboardFile))
	if err != nil {
		return fmt.Errorf("error creating file: %v", err)
	}
	defer f.Close()

	tmpl, err := template.New(dashboardTemplateName).Parse(string(templateBytes))
	if err != nil {
		return fmt.Errorf("error creating template: %v", err)
	}
	t := template.Must(tmpl, nil)
	err = t.Execute(f, d)
	if err != nil {
		return fmt.Errorf("error executing template: %v", err)
	}

	return nil
}

func getConfig(componentName string) (*dashboard, error) {
	path, _ := utils.GetRelativePath(mockDashboardPath)
	data, err := os.ReadFile(filepath.Join(path, mockDashboardFile))
	if err != nil {
		return nil, fmt.Errorf("error reading compose config files: %v", err)
	}

	var d *dashboard

	if err = yaml.Unmarshal(data, &d); err != nil {
		return nil, fmt.Errorf("error unmarshalling files: %v", err)
	}

	return d, nil
}
