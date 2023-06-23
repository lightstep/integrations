/*
Copyright © 2023 NAME HERE <EMAIL ADDRESS>
*/
package cmd

import (
	"fmt"
	"github.com/lightstep/integrations/internal/generate"
	"os"

	"github.com/spf13/cobra"
)

// Assuming that the spec is in a JSON file named "spec.json"
var specFile = "spec.json"

// initCmd represents the init command
var initCmd = &cobra.Command{
	Use:   "init",
	Short: "A brief description of your command",
	Long: `A longer description that spans multiple lines and likely contains examples
and usage of using your command. For example:

Cobra is a CLI library for Go that empowers applications.
This application is a tool to generate the needed files
to quickly create a Cobra application.`,
	Run: func(cmd *cobra.Command, args []string) {
		generator := &generate.SpecGenerator{}
		err := generator.GenerateSpecDirectories(specFile)
		if err != nil {
			fmt.Printf("Error generating directories: %v\n", err)
			os.Exit(1)
		}

		fmt.Println("Directories for components have been successfully created.")
	},
}

func init() {
	rootCmd.AddCommand(initCmd)

	// Here you will define your flags and configuration settings.

	// Cobra supports Persistent Flags which will work for this command
	// and all subcommands, e.g.:
	// initCmd.PersistentFlags().String("foo", "", "A help for foo")

	// Cobra supports local flags which will only run when this command
	// is called directly, e.g.:
	// initCmd.Flags().BoolP("toggle", "t", false, "Help message for toggle")
}
