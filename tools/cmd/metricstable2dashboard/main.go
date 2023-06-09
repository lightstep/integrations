package main

import(
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"path/filepath"
	"sort"
	"text/template"
	"strings"
	"encoding/csv"
)

type Dashboard struct {
	Name string
	Graphs []Graph
	Variables []string
}

type Graph struct {
	Aggregation string
	Attributes []string
	Name string
}

func main() {
	fmt.Println("process started!")
	if err := processDirectories("/integrations/"); err != nil {
		fmt.Println("Error:", err)
		return
	}
}

func processDirectories(rootDir string) error {
	fmt.Println(rootDir)
	entries, err := ioutil.ReadDir(rootDir)
	if err != nil {
		return fmt.Errorf("failed to read directory: %w", err)
	}

	for _, entry := range entries {
		if entry.IsDir() {
			subDirPath := filepath.Join(rootDir, entry.Name())
			inputFilePath := filepath.Join(subDirPath, "metrics.csv")
			outputFilePath := filepath.Join(subDirPath, "main.tf")

			if _, err := os.Stat(inputFilePath); !os.IsNotExist(err) {
				dashboard, err := generateDashboard(inputFilePath)
				if err != nil {
					return fmt.Errorf("failed to process file: '%s': %w", inputFilePath, err)
				}

				if err := writeDashboardFile(outputFilePath, dashboard); err != nil {
					return fmt.Errorf("failed to write output file '%s': %w", outputFilePath, err)
				}
			}

			if err := processDirectories(subDirPath); err != nil {
				return err
			}
		}
	}
	return nil
}

func generateDashboard(inputFile string) (Dashboard, error) {

	path := strings.Split(filepath.Dir(inputFile), "/")
	dashboard := Dashboard{
		Name: strings.Title(path[len(path)-1]),
		Graphs: make([]Graph, 0),
		Variables: make([]string, 0),
	}

	in, err := os.Open(inputFile)
	if err != nil {
		return dashboard, fmt.Errorf("failed to open input file: %w", err)
	}
	defer in.Close()

	variablesDictionary := make(map[string]interface{})

	r := csv.NewReader(in)

	for {
		fields, err := r.Read()
        if err != nil {
            if err != io.EOF {
				return dashboard, err
            }
            break
        }

		if fields[0] == "Name" && fields[1] == "Description" {
			continue
		}

		metricName := fields[0]
		metrics := strings.Split(fields[0], ";")
		if len(metrics) > 1 && len(fields[5]) > 0 {
			for _, metric := range metrics {
				if strings.Contains(metric, fields[5]) && strings.LastIndex(metric, fields[5]) == (len(metric) - len(fields[5])) {
					metricName = metric
					break
				}
			}
		}

		attributes := strings.Split(fields[4], ";")
		graph := Graph{
			Aggregation: "delta",
			Attributes: attributes,
			Name: metricName,
		}
		for _, attribute := range attributes {
			if _, ok := variablesDictionary[attribute]; !ok {
				variablesDictionary[attribute] = nil
			}
		}
		dashboard.Graphs = append(dashboard.Graphs, graph)

	}

	for attribute := range variablesDictionary {
		dashboard.Variables = append(dashboard.Variables, attribute)
	}

	sort.Strings(dashboard.Variables)

	return dashboard, nil
}

func writeDashboardFile(outputFilePath string, dashboard Dashboard) error {

	f, err := os.Create(outputFilePath)
	if err != nil {
		return fmt.Errorf("failed to create output file: %w", err)
	}
	defer f.Close()

	funcMap := template.FuncMap{
        "replace":  func(input, from, to string) string {
			return strings.Replace(input,from,to, -1)
		},
	}

	tpl := "/integrations/tools/templates/dashboard.tpl"
	tplName := "dashboard.tpl"
	t, err := template.New(tplName).Funcs(funcMap).ParseFiles(tpl)
	if err != nil {
		return fmt.Errorf("failed to parse template: %w", err)
	}

	err = t.Execute(f, dashboard)
	if err != nil {
		return fmt.Errorf("failed to process template: %w", err)
	}

	return nil
}