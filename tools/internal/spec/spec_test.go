package models_test

import (
	"testing"

	"github.com/google/go-cmp/cmp"
	"github.com/stretchr/testify/require"

	"github.com/lightstep/integrations/tools/internal/models"
)

func TestOpenSpec(t *testing.T) {
	tests := []struct {
		name      string
		file      string
		expect    models.IntegrationSpec
		expectErr bool
	}{
		// TODO: Add more cases here
		{
			name:      "Valid Spec",
			file:      "valid.yaml",
			expect:    models.IntegrationSpec{ /* fill with expected spec */ },
			expectErr: false,
		},
		{
			name:      "Invalid Spec",
			file:      "invalid.yaml",
			expectErr: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			spec, err := OpenSpec(tt.file)

			if tt.expectErr {
				require.Error(t, err)
			} else {
				require.NoError(t, err)
				require.Empty(t, cmp.Diff(tt.expect, spec))
			}
		})
	}
}

