package k8s

import (
	"fmt"
	"github.com/lightstep/integrations/internal/utils"
	"gopkg.in/yaml.v3"
	"html/template"
	"log"
	"os"
	"path/filepath"
)

const (
	k8sTemplateName = "deployment"
	deploymentFile  = "deployment.yaml"
	configFile      = "config/k8s_config.yaml"
	k8sPath         = "integrations/internal/examples/k8s"
)

type K8s interface {
	Generate(string, []byte) error
}

type k8s struct {
	Deployment Deployment `yaml:"deployment"`
}

func NewK8s(componentName string) K8s {
	return &k8s{
		Deployment: Deployment{
			APIVersion: getConfig(componentName).Deployment.APIVersion,
			Kind:       getConfig(componentName).Deployment.Kind,
			Metadata:   getConfig(componentName).Deployment.Metadata,
			Spec:       getConfig(componentName).Deployment.Spec,
		},
	}
}

func (k k8s) Generate(path string, content []byte) error {
	file, err := os.Create(fmt.Sprintf("%s/%s", path, deploymentFile))
	if err != nil {
		return fmt.Errorf("error creating file: %v", err)
	}

	t, err := template.New(k8sTemplateName).Parse(string(content))
	if err != nil {
		return fmt.Errorf("error creating template: %v", err)
	}

	err = t.Execute(file, k)
	if err != nil {
		return fmt.Errorf("error executing template: %v", err)
	}

	return nil
}

func getConfig(componentName string) *k8s {
	path, _ := utils.GetRelativePath(k8sPath)
	data, err := os.ReadFile(filepath.Join(path, configFile))
	if err != nil {
		log.Fatalf("error: %v", err)
	}

	var k *k8s
	err = yaml.Unmarshal(data, &k)
	if err != nil {
		log.Fatalf("error: %v", err)
	}
	k.Deployment.APIVersion = "apps/v1"
	k.Deployment.Kind = "Deployment"
	k.Deployment.Metadata = &Metadata{
		Name: componentName,
	}
	k.Deployment.Spec = &Spec{
		Replicas: 2,
		Selector: &Selector{
			MatchLabels: &Labels{
				App: componentName,
			},
		},
		Template: &Template{
			Metadata: &TemplateMetadata{
				Labels: &Labels{
					App: componentName,
				},
			},
			Spec: &TemplateSpec{
				Containers: []*Container{
					{
						Name:  componentName,
						Image: fmt.Sprintf("%s:latest", componentName),
						Ports: []*ContainerPort{
							{
								ContainerPort: 8080,
							},
						},
					},
				},
			},
		},
	}

	return k
}
