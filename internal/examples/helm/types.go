package helm

type ChartMetadata struct {
	APIVersion  string `json:"apiVersion" yaml:"apiVersion"`
	Name        string `json:"name" yaml:"name"`
	Version     string `json:"version" yaml:"version"`
	Description string `json:"description" yaml:"description"`
}

type Deployment struct {
	APIVersion string              `json:"apiVersion" yaml:"apiVersion"`
	Kind       string              `json:"kind" yaml:"kind"`
	Metadata   *DeploymentMetadata `json:"metadata" yaml:"metadata"`
	Spec       *DeploymentSpec     `json:"spec" yaml:"spec"`
}

type DeploymentMetadata struct {
	Name string `json:"name" yaml:"name"`
}

type DeploymentSpec struct {
	Replicas int32               `json:"replicas" yaml:"replicas"`
	Selector *DeploymentSelector `json:"selector" yaml:"selector"`
	Template *DeploymentTemplate `json:"template" yaml:"template"`
}

type DeploymentSelector struct {
	MatchLabels *DeploymentLabels `json:"matchLabels" yaml:"matchLabels"`
}

type DeploymentLabels struct {
	App string `json:"app" yaml:"app"`
}

type DeploymentTemplate struct {
	Metadata *DeploymentTemplateMetadata `json:"metadata" yaml:"metadata"`
	Spec     *DeploymentTemplateSpec     `json:"spec" yaml:"spec"`
}

type DeploymentTemplateMetadata struct {
	Labels *DeploymentLabels `json:"labels" yaml:"labels"`
}

type DeploymentTemplateSpec struct {
	Containers []*DeploymentContainer `json:"containers" yaml:"containers"`
}

type DeploymentContainer struct {
	Name  string                     `json:"name" yaml:"name"`
	Image string                     `json:"image" yaml:"image"`
	Ports []*DeploymentContainerPort `json:"ports" yaml:"ports"`
}

type DeploymentContainerPort struct {
	ContainerPort int32 `json:"containerPort" yaml:"containerPort"`
}

type Values struct {
	ReplicaCount    int32  `json:"replicaCount" yaml:"replicaCount"`
	ImageRepository string `json:"imageRepository" yaml:"imageRepository"`
	ImageTag        string `json:"imageTag" yaml:"imageTag"`
	ContainerPort   int32  `json:"containerPort" yaml:"containerPort"`
}
