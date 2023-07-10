package k8s

type ChartMetadata struct {
	APIVersion  string `json:"apiVersion" yaml:"apiVersion"`
	Name        string `json:"name" yaml:"name"`
	Version     string `json:"version" yaml:"version"`
	Description string `json:"description" yaml:"description"`
}

type Deployment struct {
	APIVersion string `json:"apiVersion" yaml:"apiVersion"`
	Kind       string `json:"kind" yaml:"kind"`
	*Metadata  `json:"metadata" yaml:"metadata"`
	*Spec      `json:"spec" yaml:"spec"`
}

type Metadata struct {
	Name string `json:"name" yaml:"name"`
}

type Spec struct {
	Replicas int32     `json:"replicas" yaml:"replicas"`
	Selector *Selector `json:"selector" yaml:"selector"`
	Template *Template `json:"template" yaml:"template"`
}

type Volume struct {
	Name                  string                `json:"name" yaml:"name"`
	PersistentVolumeClaim PersistentVolumeClaim `json:"persistentVolumeClaim" yaml:"persistentVolumeClaim"`
}

type PersistentVolumeClaim struct {
	ClaimName string `json:"claimName" yaml:"claimName"`
}

type Selector struct {
	MatchLabels *Labels `json:"matchLabels" yaml:"matchLabels"`
}

type Labels struct {
	App string `json:"app" yaml:"app"`
}

type Template struct {
	Metadata *TemplateMetadata `json:"metadata" yaml:"metadata"`
	Spec     *TemplateSpec     `json:"spec" yaml:"spec"`
}

type TemplateMetadata struct {
	Labels *Labels `json:"labels" yaml:"labels"`
}

type TemplateSpec struct {
	Containers []*Container `json:"containers" yaml:"containers"`
}

type Container struct {
	Name         string           `json:"name" yaml:"name"`
	Image        string           `json:"image" yaml:"image"`
	Ports        []*ContainerPort `json:"ports" yaml:"ports"`
	VolumeMounts []VolumeMount    `json:"volumeMounts" yaml:"volumeMounts"`
	Volumes      []Volume         `json:"volumes" yaml:"volumes"`
}

type VolumeMount struct {
	Name      string `json:"name" yaml:"name"`
	MountPath string `json:"mountPath" yaml:"mountPath"`
}

type ContainerPort struct {
	ContainerPort int32 `json:"containerPort" yaml:"containerPort"`
}

type Values struct {
	ReplicaCount    int32  `json:"replicaCount" yaml:"replicaCount"`
	ImageRepository string `json:"imageRepository" yaml:"imageRepository"`
	ImageTag        string `json:"imageTag" yaml:"imageTag"`
	ContainerPort   int32  `json:"containerPort" yaml:"containerPort"`
}
