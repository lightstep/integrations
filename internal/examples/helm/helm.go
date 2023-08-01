package helm

import (
	"github.com/lightstep/integrations/internal/examples/k8s"
	"github.com/lightstep/integrations/internal/utils"
	"gopkg.in/yaml.v3"
	"log"
	"os"
	"path/filepath"
)

const (
	ChartTemplateName  = "chart"
	ValuesTemplateName = "values"
	ChartFile          = "Chart.yaml"
	ValuesFile         = "values.yaml"
	configFile         = "config/helm_config.yaml"
	helmPath           = "integrations/internal/examples/helm"
)

type Helm interface {
	TemplateRender(string, []byte) error
}

type Chart struct {
	Metadata k8s.ChartMetadata `json:"metadata" yaml:"metadata"`
}

func NewHelm(componentName string) Helm {
	return &Chart{
		Metadata: getConfig(componentName).Metadata,
	}
}

func (h Chart) TemplateRender(path string, templateBytes []byte) error {
	//parts := strings.Split(string(templateBytes), "---")
	//chart := parts[0]
	//values := parts[1]
	//
	//chartFile, err := os.Create(fmt.Sprintf("%s%s", path, ChartFile))
	//if err != nil {
	//	panic(err)
	//}
	//tmpl, err := template.New(ChartTemplateName).Parse(chart)
	//if err != nil {
	//	panic(err)
	//}
	//err = tmpl.Execute(chartFile, h)
	//if err != nil {
	//	panic(err)
	//}
	//
	//valuesFile, err := os.Create(fmt.Sprintf("%s%s", path, ValuesFile))
	//if err != nil {
	//	panic(err)
	//}
	//tmpl, err = template.New(ValuesTemplateName).Parse(values)
	//if err != nil {
	//	panic(err)
	//}
	//err = tmpl.Execute(valuesFile, h)
	//if err != nil {
	//	panic(err)
	//}

	return nil
}

func getConfig(componentName string) Chart {
	path, _ := utils.GetRelativePath(helmPath)
	data, err := os.ReadFile(filepath.Join(path, configFile))
	if err != nil {
		log.Fatalf("error: %v", err)
	}

	var hc Chart
	err = yaml.Unmarshal(data, &hc)
	if err != nil {
		log.Fatalf("error: %v", err)
	}

	return hc
}
