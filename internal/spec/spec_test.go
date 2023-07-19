package spec_test

import (
	"github.com/lightstep/integrations/internal/spec"
	"github.com/stretchr/testify/require"
	"os"
	"testing"
)

var mockSpec = `
version: "1.0.0"
app_id: "activemq"
name: "ActiveMQ"
author:
  name: "Heber Silva"
tags:
  - "tag1"
  - "tag2"
status: "stable"
signals:
  - name: "Signal 1"
    type: "Type 1"
    path: "/path/to/signal/1"
  - name: "Signal 2"
    type: "Type 2"
    path: "/path/to/signal/2"
images:
  - name: "Image 1"
    description: "Description for Image 1"
    path: "/path/to/image/1"
changelog:
  path: "/path/to/changelog"
  changes:
    - description: "Initial release"
      date: "2023-06-01"
components:
  - name: "compose"
  - name: "helm"
  - name: "k8s"
  - name: "dashboards"
  - name: "alerts"
  - name: "images"
templates:
  - name: "jmx"
`

func Test_Run(t *testing.T) {
	cases := []struct {
		Name         string
		SpecFileName string
		ExpectedErr  string
	}{
		{
			Name:         "valid spec file",
			SpecFileName: "spec.yaml",
			ExpectedErr:  "",
		},
		//{
		//	Name:         "spec file is a directory",
		//	SpecFileName: "directory",
		//	ExpectedErr:  "spec file is a directory, not a YAML file",
		//},
		//{
		//	Name:         "spec file is not a YAML file",
		//	SpecFileName: "not_a_yaml.txt",
		//	ExpectedErr:  "spec file is not a YAML file",
		//},
		// Add more test cases here...
	}

	for _, tc := range cases {
		t.Run(tc.Name, func(t *testing.T) {
			// Render and write the spec file
			err := os.WriteFile(tc.SpecFileName, []byte(mockSpec), 0644)
			require.NoError(t, err)

			err = spec.Run(tc.SpecFileName)

			if tc.ExpectedErr == "" {
				require.NoError(t, err)
			} else {
				require.Error(t, err)
				require.Contains(t, err.Error(), tc.ExpectedErr)
			}

			// Clean up the spec file
			os.Remove(tc.SpecFileName)
			os.RemoveAll("./cassandra")
			os.RemoveAll("./aws_rds")
		})
	}
}
