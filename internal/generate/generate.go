package generate

import (
	"encoding/json"
	"fmt"
	"github.com/lightstep/integrations/spec"
	"io/ioutil"
	"os"
	"path/filepath"
)

type Generator interface {
	GenerateSpecDirectories(specFile string) error
}

type SpecGenerator struct{}

func (sg *SpecGenerator) GenerateSpecDirectories(specFile string) error {
	// Check if the spec file is readable
	info, err := os.Stat(specFile)
	if err != nil {
		return fmt.Errorf("spec file is not readable: %v", err)
	}

	// Check if specFile is not a directory and has .json extension
	if info.IsDir() {
		return fmt.Errorf("spec file is a directory, not a JSON file")
	} else if filepath.Ext(specFile) != ".json" {
		return fmt.Errorf("spec file is not a JSON file")
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
	err = json.Unmarshal(data, &s)
	if err != nil {
		return fmt.Errorf("unable to unmarshal spec, ensure it is in the correct format: %v", err)
	}

	// Generate directories for each component
	for _, component := range s.Components {
		err := os.Mkdir(component.Name, 0755)
		if err != nil {
			return fmt.Errorf("unable to create directory for component '%s': %v", component.Name, err)
		}
	}

	return nil
}
