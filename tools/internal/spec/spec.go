package models

import (
	"io/ioutil"

	"sigs.k8s.io/yaml"
)

type File struct {
	Path string `yaml:"path"`
	Name string `yaml:"name,omitempty"`
}

type Template struct {
	Vars map[string]string `yaml:"Vars"`
	Name string            `yaml:"Name"`
}

type Module struct {
	Kind      string     `yaml:"kind"`
	Path      string     `yaml:"path"`
	Format    string     `yaml:"format,omitempty"`
	Files     []File     `yaml:"files,omitempty"`
	Run       string     `yaml:"run,omitempty"`
	EnvVars   map[string]string `yaml:"EnvVars,omitempty"`
	Templates []Template `yaml:"Templates,omitempty"`
}

type Metadata struct {
	Name        string              `yaml:"Name"`
	TestMatrix  []map[string]string `yaml:"TestMatrix"`
	Description string              `yaml:"Description"`
}

type IntegrationSpec struct {
	SpecVersion string   `yaml:"SpecVersion"`
	Metadata    Metadata `yaml:"Metadata"`
	Modules     []Module `yaml:"Modules"`
	EnvVars     map[string]string `yaml:"EnvVars,omitempty"`
}

func OpenSpec(file string) (IntegrationSpec, error) {
	var spec IntegrationSpec

	data, err := ioutil.ReadFile(file)
	if err != nil {
		return spec, err
	}

	err = yaml.Unmarshal(data, &spec)
	return spec, err
}

