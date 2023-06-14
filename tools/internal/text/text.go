package text

import (
	"bytes"
	"errors"
	"fmt"
	"reflect"
	"strings"
	"text/template"
)

var (
	ErrUnknownType       = errors.New("unexpected type")
	ErrContextStringType = errors.New("string context should be in key=value pairs")
	ErrMapType           = errors.New("value for key %s in map is nil")
	ErrStructType        = errors.New("fields in Struct are not populated properly")
)

// Context TODO: Struct TBD
type Context struct {
	Value interface{}
}

// Validate is a run-time type check to ensure that the Context is one of
// / 	- a string with key=Value pairs delimited by commas: e.g. "ServicePort=8888,ScrapePort=9090"
//   - a map of type map[string]any
//   - any Go struct
func (c Context) Validate() error {
	switch reflect.TypeOf(c.Value).Kind() {
	case reflect.String:
		pairs := strings.Split(c.Value.(string), ",")
		for _, pair := range pairs {
			kv := strings.Split(pair, "=")
			if len(kv) != 2 {
				return ErrContextStringType
			}
		}
		return nil
	case reflect.Map:
		v := c.Value.(map[string]interface{})
		for key, value := range v {
			if value == nil {
				return fmt.Errorf(ErrMapType.Error(), key)
			}
		}
	case reflect.Struct:
		fields := reflect.TypeOf(c.Value)
		values := reflect.ValueOf(c.Value)

		for i := 0; i < fields.NumField(); i++ {
			if values.Field(i).Interface() == "" || values.Field(i).Interface() == 0 {
				return ErrStructType
			}
		}
	default:
		return ErrUnknownType
	}
	return nil
}

// Renders the Go template at path with input data which can be any of the following...
//   - a string with key=Value pairs delimited by commas: e.g. "ServicePort=8888,ScrapePort=9090"
//   - a map of type map[string]any
//   - any Go struct
//
// Errors:
//  1. fine to return errors from text/template functions: .Parse, .Execute, and friends
//     2.
//
// Type notes: if you know how to constrain
func TemplateFileRender(path string, context Context) ([]byte, error) {
	if err := context.Validate(); err != nil {
		return nil, err
	}
	m, err := mapFromContext(context)
	if err != nil {
		return nil, err
	}

	t, err := template.ParseFiles(path)
	if err != nil {
		return nil, err
	}

	var buf bytes.Buffer
	if err := t.Execute(&buf, m); err != nil {
		return nil, err
	}

	return buf.Bytes(), nil
}

func mapFromContext(context Context) (map[string]interface{}, error) {
	switch reflect.TypeOf(context.Value).Kind() {
	case reflect.String:
		m := make(map[string]interface{})
		pairs := strings.Split(context.Value.(string), ",")
		for _, pair := range pairs {
			kv := strings.SplitN(pair, "=", 2)
			if len(kv) != 2 {
				return nil, ErrContextStringType
			}
			m[kv[0]] = kv[1]
		}
		return m, nil
	case reflect.Map:
		return context.Value.(map[string]interface{}), nil
	case reflect.Struct:
		fields := reflect.TypeOf(context)
		values := reflect.ValueOf(context)

		m := make(map[string]interface{})
		for i := 0; i < fields.NumField(); i++ {
			m[fields.Field(i).Name] = values.Field(i).Interface()
		}
		return m, nil
	default:
		return nil, ErrUnknownType
	}
}
