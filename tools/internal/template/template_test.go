package template_test

import (
	"fmt"
	"os"

	"github.com/lightstep/tools/internal/template"
)

func ExampleValidate() {
	// Assuming we have a test template file named "test_template.txt" inside "tools/internal/templates/"
	tmpl := &template.Template{
		Vars: map[string]string{
			"Key": "Value",
		},
		Name: "test_template.txt",
		Path: "./output",
	}

	err := tmpl.Validate()
	if err != nil {
		fmt.Println("Validation error:", err)
	} else {
		fmt.Println("Template is valid!")
	}

	// Output:
	// Template is valid!
}

func ExampleRender() {
	// Assuming we have a test template file named "test_template.txt" inside "tools/internal/templates/"
	tmpl := &template.Template{
		Vars: map[string]string{
			"Key": "Value",
		},
		Name: "test_template.txt",
		Path: "./output",
	}

	err := tmpl.Render()
	if err != nil {
		fmt.Println("Render error:", err)
	} else {
		fmt.Println("Template rendered successfully!")

		// For the purpose of this example, print the rendered content to stdout
		content, _ := os.ReadFile(tmpl.Path + "/" + tmpl.Name)
		fmt.Println(string(content))
	}

	// Output:
	// Template rendered successfully!
	// [Expected rendered content from test_template.txt using the provided Vars]
}

