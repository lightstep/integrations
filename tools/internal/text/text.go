package text

import(
	"text/template"
)

var ErrUnknownType errors.New("unexpected type")

type Context any

// Validate is a run-time type check to ensure that the Context is one of
/// 	- a string with key=value pairs delimited by commas: e.g. "ServicePort=8888,ScrapePort=9090"
// 	- a map of type map[string]any
// 	- any Go struct
func (c Context) Validate() error {
	// check the type of c - fine to use %T format directive or reflect
	return fmt.Errorf("error: unimplemented")
}

// Renders the Go template at path with input data which can be any of the following...
// 	- a string with key=value pairs delimited by commas: e.g. "ServicePort=8888,ScrapePort=9090"
// 	- a map of type map[string]any
// 	- any Go struct
// 
// Errors: 
// 	1. fine to return errors from text/template functions: .Parse, .Execute, and friends
//	2.
// Type notes: if you know how to constrain
func TemplateFileRender(path string, context Context) ([]byte, error) {
	return nil, nil
}
