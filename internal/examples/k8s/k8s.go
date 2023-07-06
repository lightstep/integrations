package k8s

import (
	"fmt"
	"github.com/lightstep/integrations/internal/examples/helm"
	"gopkg.in/yaml.v3"
	"html/template"
	"log"
	"os"
)

const (
	K8sTemplateName = "deployment"
	DeploymentFile  = "deployment.yaml"
	configFile      = "./config/k8s.yaml"
)

type K8s interface {
	Generate(string, []byte) error
}

type k8s struct {
	Deployment helm.Deployment `yaml:"deployment"`
}

func NewK8s(componentName string) K8s {
	return &k8s{
		Deployment: helm.Deployment{
			APIVersion: getConfig(componentName).Deployment.APIVersion,
			Kind:       getConfig(componentName).Deployment.Kind,
			Metadata:   getConfig(componentName).Deployment.Metadata,
			Spec:       getConfig(componentName).Deployment.Spec,
		},
	}
}

func (k k8s) Generate(path string, content []byte) error {
	file, err := os.Create(fmt.Sprintf("%s%s", path, DeploymentFile))
	if err != nil {
		panic(err)
	}

	tmpl, err := template.New(K8sTemplateName).Parse(string(content))
	if err != nil {
		panic(err)
	}

	err = tmpl.Execute(file, k)
	if err != nil {
		panic(err)
	}

	return nil
}

func getConfig(componentName string) k8s {
	data, err := os.ReadFile(configFile)
	if err != nil {
		log.Fatalf("error: %v", err)
	}

	var k k8s
	err = yaml.Unmarshal(data, &k)
	if err != nil {
		log.Fatalf("error: %v", err)
	}

	switch {
	case k.Deployment.APIVersion == "":
		k.Deployment.APIVersion = "apps/v1"
	case k.Deployment.Kind == "":
		k.Deployment.Kind = "Deployment"
	case k.Deployment.Metadata == nil:
		k.Deployment.Metadata = &helm.DeploymentMetadata{
			Name: "myapp-deployment",
		}
	case k.Deployment.Spec == nil:
		//TODO: Clean up
		k.Deployment.Spec = &helm.DeploymentSpec{
			Replicas: 2,
			Selector: &helm.DeploymentSelector{
				MatchLabels: &helm.DeploymentLabels{
					App: "myapp",
				},
			},
			Template: &helm.DeploymentTemplate{
				Metadata: &helm.DeploymentTemplateMetadata{
					Labels: &helm.DeploymentLabels{
						App: "myapp",
					},
				},
				Spec: &helm.DeploymentTemplateSpec{
					Containers: []*helm.DeploymentContainer{
						{
							Name:  "myapp-container",
							Image: "myapp:1.0.0",
							Ports: []*helm.DeploymentContainerPort{
								{
									ContainerPort: 8080,
								},
							},
						},
					},
				},
			},
		}
	}

	return k
}
