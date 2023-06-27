package generator

import (
	"fmt"
	"github.com/lightstep/integrations/internal/spec"
	"gopkg.in/yaml.v3"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
)

func Run(specFile string) error {
	// Check if the spec file is readable
	info, err := os.Stat(specFile)
	if err != nil {
		return fmt.Errorf("spec file is not readable: %v", err)
	}

	// Check if specFile is not a directory and has .yaml or .yml extension
	if info.IsDir() {
		return fmt.Errorf("spec file is a directory, not a YAML file")
	} else if ext := filepath.Ext(specFile); ext != ".yaml" && ext != ".yml" {
		return fmt.Errorf("spec file is not a YAML file")
	}

	// Check if the current directory is writable
	tmpFile, err := ioutil.TempFile(".", "test")
	if err != nil {
		return fmt.Errorf("current directory is not writable: %v", err)
	}
	os.Remove(tmpFile.Name())

	// Read spec file
	data, err := ioutil.ReadFile(specFile)
	if err != nil {
		return fmt.Errorf("unable to read spec file: %v", err)
	}

	// Unmarshal spec
	var s spec.Spec
	err = yaml.Unmarshal(data, &s)
	if err != nil {
		return fmt.Errorf("unable to unmarshal spec, ensure it is in the correct format: %v", err)
	}

	// Generate directories for each component
	for _, component := range s.Components {
		if err = component.Render(); err != nil {
			return fmt.Errorf("unable to create directory for component '%s': %v", component.Name, err)
		}
	}

	log.Println("Directories for components have been successfully created.")
	return nil
}
