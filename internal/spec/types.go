package spec

type Spec struct {
	Version string   `json:"version,omitempty" yaml:"version,omitempty"`
	ID      string   `json:"id" yaml:"id"`
	Name    string   `json:"name" yaml:"name"`
	Author  Author   `json:"author,omitempty" yaml:"author,omitempty"`
	Tags    []string `json:"tags,omitempty" yaml:"tags,omitempty"`
	Status  string   `json:"status,omitempty" yaml:"status,omitempty"`

	Signals   []SignalData `json:"signals,omitempty" yaml:"signals,omitempty"`
	Images    []ImageData  `json:"images,omitempty" yaml:"images,omitempty"`
	Changelog Changelog    `json:"changelog,omitempty" yaml:"changelog,omitempty"`

	Components []ComponentSpec `json:"components,omitempty" yaml:"components,omitempty"`
}

type Author struct {
	Name string `json:"name" yaml:"name"`
}

type SignalData struct {
	Name string `json:"name,omitempty"`
	Type string `json:"type,omitempty"`
	Path string `json:"path,omitempty"`
}

type ImageData struct {
	Name        string `json:"name,omitempty"`
	Description string `json:"description,omitempty"`
	Path        string `json:"path,omitempty"`
}

type Change struct {
	Description string `json:"description,omitempty"`
	Date        string `json:"date,omitempty"`
}

type Changelog struct {
	Path    string   `json:"path,omitempty"`
	Changes []Change `json:"changes,omitempty"`
}

type Example struct {
	Name     string `json:"name,omitempty"`
	Platform string `json:"platform,omitempty"`
	Files    []File `json:"files,omitempty"`
}

type Directories struct {
	Files    []string
	Template string
}

type DirectoryFiles struct {
	DirectoryTree map[string]Directories `yaml:"directories"`
}

type File struct {
	Name        string `json:"name,omitempty"`
	Description string `json:"description,omitempty"`
	Path        string `json:"path,omitempty"`
	Content     []byte `json:"content,omitempty"`
}

type IntegrationsConfig struct {
	Options map[string]string `yaml:"options"`
}

type FileSet map[string]File
