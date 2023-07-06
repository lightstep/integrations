package helm

import (
	"fmt"
	"gopkg.in/yaml.v3"
	"html/template"
	"log"
	"os"
	"strings"
)

const (
	ChartTemplateName  = "chart"
	ValuesTemplateName = "values"
	ChartFile          = "Chart.yaml"
	ValuesFile         = "values.yaml"
	configFile         = "./config/helm.yaml"
)

type Helm interface {
	Generate(string, []byte) error
}

type Chart struct {
	Metadata ChartMetadata `json:"metadata" yaml:"metadata"`
}

func NewHelm(componentName string) Helm {
	return &Chart{
		Metadata: getConfig(componentName).Metadata,
	}
}

func (h Chart) Generate(path string, content []byte) error {
	parts := strings.Split(string(content), "---")
	chart := parts[0]
	values := parts[1]

	chartFile, err := os.Create(fmt.Sprintf("%s%s", path, ChartFile))
	if err != nil {
		panic(err)
	}
	tmpl, err := template.New(ChartTemplateName).Parse(chart)
	if err != nil {
		panic(err)
	}
	err = tmpl.Execute(chartFile, h)
	if err != nil {
		panic(err)
	}

	valuesFile, err := os.Create(fmt.Sprintf("%s%s", path, ValuesFile))
	if err != nil {
		panic(err)
	}
	tmpl, err = template.New(ValuesTemplateName).Parse(values)
	if err != nil {
		panic(err)
	}
	err = tmpl.Execute(valuesFile, h)
	if err != nil {
		panic(err)
	}

	return nil
}

func getConfig(componentName string) Chart {
	data, err := os.ReadFile(configFile)
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
