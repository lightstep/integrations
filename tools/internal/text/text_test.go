package text_test

import (
	"errors"
	"fmt"
	"reflect"
	"testing"

	"github.com/lightstep/integrations/tools/internal/text"
)

func TestValidate(t *testing.T) {
	tests := []struct {
		input   text.Context
		isValid bool
		errMsg  error
	}{
		{
			input:   "ServicePort=8888,ScrapePort=9090",
			isValid: true,
			errMsg:  nil,
		},
		{
			input:   map[string]interface{}{"name": "John", "age": 30},
			isValid: true,
			errMsg:  nil,
		},
		{
			input:   struct{ Name string }{Name: "John"},
			isValid: true,
			errMsg:  nil,
		},
		{
			input:   123,
			isValid: false,
			errMsg:  text.ErrUnknownType,
		},
		{
			input:   "",
			isValid: false,
			errMsg:  text.ErrInvalidInput,
		},
		{
			input:   "name=John,age=",
			isValid: false,
			errMsg:  text.ErrInvalidInput,
		},
	}

	for _, test := range tests {
		t.Run(fmt.Sprintf("Test input: %v", test.input), func(t *testing.T) {
			t.Logf("Testing with input: %v\n", test.input)
			err := text.Validate(test.input)

			if (err == nil && test.errMsg != nil) || (err != nil && !errors.Is(err, test.errMsg)) {
				t.Errorf("Expected error message '%s' but got '%v'", test.errMsg, err)
			}

			if (err == nil && !test.isValid) || (err != nil && test.isValid) {
				t.Errorf("Expected result to be valid: %v", test.isValid)
			}
		})
	}
}

func TestParseKeyValuePairs(t *testing.T) {
	tests := []struct {
		input    string
		expected map[string]string
		errMsg   error
	}{
		{
			input:    "name=John,age=30",
			expected: map[string]string{"name": "John", "age": "30"},
			errMsg:   nil,
		},
		{
			input:    "name=John,age=",
			expected: nil,
			errMsg:   text.ErrEmptyKeyOrValue,
		},
		{
			input:    "name=John,age=30,",
			expected: nil,
			errMsg:   text.ErrInvalidKeyValuePairs,
		},
		{
			input:    "name=John,age=30,=30",
			expected: nil,
			errMsg:   text.ErrEmptyKeyOrValue,
		},
	}

	for _, test := range tests {
		t.Run(test.input, func(t *testing.T) {
			result, err := text.ParseKeyValuePairs(test.input)

			if !reflect.DeepEqual(result, test.expected) {
				t.Errorf("Expected %v but got %v", test.expected, result)
			}

			if (err == nil && test.errMsg != nil) || (err != nil && !errors.Is(err, test.errMsg)) {
				t.Errorf("Expected error message '%s' but got '%v'", test.errMsg, err)
			}
		})
	}
}

func TestTemplateFileRender(t *testing.T) {
	t.Skip("todo")
}
