package compose

type Service struct {
	Name      string   `json:"name" yaml:"name"`
	Container string   `json:"container" yaml:"container"`
	Image     string   `json:"image" yaml:"image"`
	EnvVar    string   `json:"env_var" yaml:"env_var"`
	Ports     []string `json:"ports" yaml:"ports"`
	Command   []string `json:"command" yaml:"command"`
	Networks  []string `json:"networks" yaml:"networks"`
}

type OtelCollector struct {
	Name      string   `json:"name" yaml:"name"`
	Container string   `json:"container" yaml:"container"`
	EnvVar    string   `json:"env_var" yaml:"env_var"`
	Configs   []Config `json:"configs" yaml:"configs"`
	Command   []string `json:"command" yaml:"command"`
	Networks  []string `json:"networks" yaml:"networks"`
	Version   string   `json:"version" yaml:"version"`
}

type Config struct {
	Source string `json:"source" yaml:"source"`
	Target string `json:"target" yaml:"target"`
}
