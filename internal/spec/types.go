package spec

// Spec defines the application specification, including metadata, signals, images, change logs, components, and templates.
type Spec struct {
	// The application version.
	Version string `json:"version,omitempty" yaml:"version,omitempty"`
	// The application ID.
	AppID string `json:"app_id" yaml:"app_id"`
	// The name of the application.
	Name string `json:"name" yaml:"name"`
	// The author of the application.
	Author Author `json:"author,omitempty" yaml:"author,omitempty"`
	// Any tags associated with the application.
	Tags []string `json:"tags,omitempty" yaml:"tags,omitempty"`
	// The current status of the application.
	Status string `json:"status,omitempty" yaml:"status,omitempty"`
	// Any signals used in the application.
	Signals []SignalData `json:"signals,omitempty" yaml:"signals,omitempty"`
	// Any images used in the application.
	Images []ImageData `json:"images,omitempty" yaml:"images,omitempty"`
	// The application change log.
	Changelog Changelog `json:"changelog,omitempty" yaml:"changelog,omitempty"`
	// The components of the application.
	Components []Component `json:"components,omitempty" yaml:"components,omitempty"`
	// Any templates associated with the application.
	Templates []Template `json:"templates,omitempty" yaml:"templates,omitempty"`
}

// Author represents the author of the application.
type Author struct {
	// The name of the author.
	Name string `json:"name" yaml:"name"`
}

// SignalData defines the signals used in the application.
type SignalData struct {
	// The name of the signal.
	Name string `json:"name,omitempty"`
	// The type of the signal.
	Type string `json:"type,omitempty"`
	// The path to the signal.
	Path string `json:"path,omitempty"`
}

// ImageData defines the images used in the application.
type ImageData struct {
	// The name of the image.
	Name string `json:"name,omitempty"`
	// The description of the image.
	Description string `json:"description,omitempty"`
	// The path to the image.
	Path string `json:"path,omitempty"`
}

// Change represents a single change in the application's change log.
type Change struct {
	// The description of the change.
	Description string `json:"description,omitempty"`
	// The date when the change was made.
	Date string `json:"date,omitempty"`
}

// Changelog represents the change log of the application.
type Changelog struct {
	// The path to the change log.
	Path string `json:"path,omitempty"`
	// The list of changes.
	Changes []Change `json:"changes,omitempty"`
}

// File represents a file used in the application.
type File struct {
	// The name of the file.
	Name string `json:"name,omitempty"`
	// The description of the file.
	Description string `json:"description,omitempty"`
	// The path to the file.
	Path string `json:"path,omitempty"`
	// The content of the file.
	Content []byte `json:"content,omitempty"`
}

// CollectorConfig represents the configurations for collectors.
type CollectorConfig struct {
	// The integrations for the collector.
	Integrations map[string]interface{} `yaml:"integrations"`
}

// FileSet is a map that associates a file name with the corresponding File object.
type FileSet map[string]File

type Directory struct {
	Files    []string
	Template string
	Path     string
}

type DirStructure struct {
	DirTree map[string]Directory `yaml:"directories,omitempty"`
}

type ReadmeData struct {
	Title           string
	Overview        string
	IntegrationName string
	InitConfig      string
	InstanceConfig  string
}

type Template struct {
	Name string
}
