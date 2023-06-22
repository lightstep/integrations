package text

import (
	"io/ioutil"
	"os"
	"strings"
	"testing"
)

type TestStruct struct {
	Field1 string
	Field2 int
}

func TestValidate(t *testing.T) {
	tests := []struct {
		name    string
		context Context
		wantErr bool
		errStr  string
	}{
		{
			name:    "Valid string",
			context: Context{Value: "key1=value1,key2=value2"},
			wantErr: false,
		},
		{
			name:    "Invalid string",
			context: Context{Value: "key1=value1,key2"},
			wantErr: true,
			errStr:  "string context should be in key=value pairs",
		},
		{
			name:    "Valid map",
			context: Context{Value: map[string]interface{}{"key1": "value1", "key2": "value2"}},
			wantErr: false,
		},
		{
			name:    "Valid struct",
			context: Context{Value: TestStruct{Field1: "value1", Field2: 2}},
			wantErr: false,
		},
		{
			name:    "Invalid type",
			context: Context{Value: 123},
			wantErr: true,
			errStr:  "unexpected type",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			err := tt.context.Validate()
			if (err != nil) != tt.wantErr {
				t.Errorf("Validate() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if tt.wantErr && err.Error() != tt.errStr {
				t.Errorf("Validate() error string = %s, wantErrStr %s", err.Error(), tt.errStr)
			}
		})
	}
}

func TestTemplateFileRender(t *testing.T) {
	type TestStruct struct {
		Field1 string
		Field2 int
	}

	tests := []struct {
		name    string
		content string
		context Context
		wantErr bool
		errStr  string
	}{
		{
			name:    "Valid string",
			content: "Hello, {{.key1}}! Your second value is {{.key2}}.",
			context: Context{Value: "key1=value1,key2=value2"},
			wantErr: false,
		},
		{
			name:    "Invalid string",
			content: "Hello, {{.key1}}! Your second value is {{.key2}}.",
			context: Context{Value: "key1=value1,key2"},
			wantErr: true,
			errStr:  ErrContextStringType.Error(),
		},
		{
			name:    "Valid map",
			content: "Hello, {{.key1}}! Your second value is {{.key2}}.",
			context: Context{Value: map[string]interface{}{"key1": "value1", "key2": "value2"}},
			wantErr: false,
		},
		{
			name:    "Invalid map",
			content: "Hello, {{.key1}}! Your second value is {{.key2}}.",
			context: Context{Value: map[string]interface{}{"key1": "value1", "key2": nil}},
			wantErr: true,
			errStr:  `value for key key2 in map is nil`,
		},
		{
			name:    "Valid struct",
			content: "Hello, {{.Field1}}! Your second value is {{.Field2}}.",
			context: Context{Value: TestStruct{Field1: "value1", Field2: 2}},
			wantErr: false,
		},
		{
			name:    "Invalid struct",
			content: "Hello, {{.Field1}}! Your second value is {{.Field2}}.",
			context: Context{Value: TestStruct{Field1: "value1"}},
			wantErr: true,
			errStr:  "fields in Struct are not populated properly",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Create a temp file
			tempFile, err := ioutil.TempFile("", "template")
			if err != nil {
				t.Fatal(err)
			}
			defer os.Remove(tempFile.Name()) // clean up

			// Write the template content to the file
			if _, err := tempFile.Write([]byte(tt.content)); err != nil {
				t.Fatal(err)
			}
			if err := tempFile.Close(); err != nil {
				t.Fatal(err)
			}

			// Call TemplateFileRender with the temp file
			_, err = TemplateFileRender(tempFile.Name(), tt.context)
			if (err != nil) != tt.wantErr {
				t.Errorf("TemplateFileRender() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if tt.wantErr && err != nil && !strings.Contains(err.Error(), tt.errStr) {
				t.Errorf("TemplateFileRender() error string = %s, wantErrStr %s", err.Error(), tt.errStr)
			}
		})
	}
}
