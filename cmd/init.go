/*
Copyright © 2023 NAME HERE <EMAIL ADDRESS>
*/
package cmd

import (
	"github.com/lightstep/integrations/internal/spec"
	"github.com/spf13/cobra"
)

// Assuming that the spec is in a JSON file named "spec.json"
var (
	specFile string
	outFile  string
	provider string
)

// initCmd represents the init command
var initCmd = &cobra.Command{
	Use:   "init",
	Short: "A brief description of your command",
	Long: `A longer description that spans multiple lines and likely contains examples
and usage of using your command. For example:

Cobra is a CLI library for Go that empowers applications.
This application is a tool to generator the needed files
to quickly create a Cobra application.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		return spec.Run(specFile, outFile, provider)
	},
}

func init() {
	rootCmd.AddCommand(initCmd)

	// Define the 'specFile' flag for the 'init' command.
	initCmd.Flags().StringVarP(&specFile, "spec", "s", "", "Path to the spec file (required)")
	initCmd.Flags().StringVarP(&outFile, "out", "o", "", "Path to the out file (required)")
	initCmd.Flags().StringVarP(&provider, "provider", "p", "", "Provider (AWS | Azure | Collector) - (required)")

	// Mark the 'specFile' flag as required.
	cobra.CheckErr(initCmd.MarkFlagRequired("spec"))

}
