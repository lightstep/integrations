package spec

type Spec struct {
	Version string   `json:"version,omitempty"` // spec version - we can use this to determine how to parse the spec
	ID      string   `json:"id"`      // unique id for the service
	Name    string   `json:"name"`    // name of the service - e.g. Cassandra, MongoDB
	Author  Author   `json:"author,omitempty"`
	Tags    []string `json:"tags,omitempty"`   // like categories
	Status  string   `json:"status,omitempty"` // e.g. stable, beta, deprecated

	// Testing/Certification: [app versions] x collector version x [auxiliary app versions]

	Signals   []SignalData `json:"signals,omitempty"`
	Images    []ImageData  `json:"images,omitempty"`
	Changelog Changelog    `json:"changelog,omitempty"`

	Components []Component `json:"components,omitempty"`
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

type File struct {
	Name    string `json:"name,omitempty"`
	Description string `json:"description,omitempty"`
	Path    string `json:"path,omitempty"`
	content []byte `json:"content,omitempty"`
}

type FileSet map[string]File `json:"file_set,omitempty"`

func (f *FileSet) Add(file File) {
	(*f)[file.Path + file.Name] = file
}

func (f *FileSet) Render() error {
	// TODO: implement this to write generate and store each file
	return nil
}

func GenerateRepoReadme() ([]byte, error) {
	// 1. get the template?
	// 2. execute the template
	// 3. data is what's in repo
	return nil, nil
}

type Component interface {
	// paths within each component are relative to the integration package root
	// so this argument can set the path to the component root
	Render() error
}