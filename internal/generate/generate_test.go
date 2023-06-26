package generate_test

import (
	gen "github.com/lightstep/integrations/internal/generate"
	"github.com/stretchr/testify/require"
	"io/ioutil"
	"os"
	"testing"
)

func Test_Run(t *testing.T) {
	cases := []struct {
		Name         string
		SpecFileName string
		ExpectedErr  string
	}{
		{
			Name:         "valid spec file",
			SpecFileName: "mock_spec.yaml",
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
			// Create and write the spec file
			err := ioutil.WriteFile(tc.SpecFileName, []byte("dummy: content"), 0644)
			require.NoError(t, err)

			err = gen.Run(tc.SpecFileName)

			if tc.ExpectedErr == "" {
				require.NoError(t, err)
			} else {
				require.Error(t, err)
				require.Contains(t, err.Error(), tc.ExpectedErr)
			}

			// Clean up the spec file
			os.Remove(tc.SpecFileName)
		})
	}
}
