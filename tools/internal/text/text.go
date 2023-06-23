package text

import (
	"errors"
	"fmt"
	"reflect"
	"strings"
)

var (
	ErrUnknownType          = errors.New("unexpected input type")
	ErrInvalidInput         = errors.New("invalid input")
	ErrInvalidKeyValuePairs = errors.New("invalid key-value pairs")
	ErrEmptyKeyOrValue      = errors.New("empty key or value in pair")
)

type Context any

// Validate is a run-time type check to ensure that the Context is one of
//   - a string with key=value pairs delimited by commas: e.g. "ServicePort=8888,ScrapePort=9090"
//   - a map of type map[string]any
//   - any Go struct
func Validate(c Context) error {
	switch v := c.(type) {
	case string:
		_, err := ParseKeyValuePairs(v)
		if err != nil {
			return errors.Join(ErrInvalidInput, err)
		}
	case map[string]interface{}:
		// no validation needed for map[string]interface{}
	default:
		value := reflect.TypeOf(c)
		if value.Kind() == reflect.Struct {
			if value.NumField() == 0 {
				return ErrInvalidInput
			}
			return nil
		}

		return ErrUnknownType
	}

	return nil
}

func ParseKeyValuePairs(input string) (map[string]string, error) {
	result := make(map[string]string)
	pairs := strings.Split(input, ",")
	for _, pair := range pairs {
		kv := strings.Split(pair, "=")
		if len(kv) != 2 {
			return nil, errors.Join(ErrInvalidKeyValuePairs, fmt.Errorf(" %s", pair))
		}
		key := strings.TrimSpace(kv[0])
		value := strings.TrimSpace(kv[1])
		if key == "" || value == "" {
			return nil, errors.Join(ErrEmptyKeyOrValue, fmt.Errorf(" %s", pair))
		}
		result[key] = value
	}
	return result, nil
}

// TemplateFileRender Renders the Go template at path with input data which can be any of the following...
//   - a string with key=value pairs delimited by commas: e.g. "ServicePort=8888,ScrapePort=9090"
//   - a map of type map[string]any
//   - any Go struct
//
// Errors:
//  1. fine to return errors from text/template functions: .Parse, .Execute, and friends
//     2.
//
// Type notes: if you know how to constrain
func TemplateFileRender(path string, c Context) ([]byte, error) {
	return nil, nil
}
