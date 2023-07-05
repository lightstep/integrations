package main

import(
	"bufio"
	"encoding/csv"
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
)

type Record struct {
	Name string
	Description string
	Unit string
	DataType string
	Attributes []string
}

func parseLogsFile(inputFile string) ([]Record, error) {
	in, err := os.Open(inputFile)
	if err != nil {
		return nil, fmt.Errorf("failed to open input file: %w", err)
	}
	defer in.Close()

	scanner := bufio.NewScanner(in)
	globalAttributes := make([]string, 0)
	records := make([]Record, 0)
	record := Record{}
	isAttribute := false
	isGlobalAttribute := false
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if strings.Contains(line, "->") {
			split := strings.Split(line, "->")
			if len(split) == 2 {
				value := strings.TrimSpace(split[1])
				split = strings.Split(value, ":")
				if len(split) == 2 {
					value = strings.TrimSpace(split[1])
				}
				switch {
				case strings.Contains(line, "Name:"):
					record.Name = value
				case strings.Contains(line, "Description:"):
					record.Description = value
				case strings.Contains(line, "Unit:"):
					record.Unit = value
				case strings.Contains(line, "DataType:"):
					record.DataType = value
				default:
					if isAttribute {
						record.Attributes = append(record.Attributes, split[0])
					}
					if isGlobalAttribute && len(records) == 0 {
						globalAttributes = append(globalAttributes, split[0])
						record.Attributes = globalAttributes
					}
				}
			}
		} else if strings.Contains(line, "Data point attributes:") {
			isAttribute = true
			isGlobalAttribute = false
		} else if strings.Contains(line, "Metric #") {
			if record.Name != "" {
				records = append(records, record)
				record = Record{Attributes: globalAttributes}
			}
			isAttribute = false
			isGlobalAttribute = false
		} else if strings.Contains(line, "Resource attributes:") {
			isAttribute = false
			isGlobalAttribute = true
		}
	}

	if len(record.Name) > 0 {
		records = append(records, record)
	}

	if err := scanner.Err(); err != nil {
		return nil, fmt.Errorf("error reading input file: %w", err)
	}

	return records, nil
}

func writeCSV(outputFile string, records []Record) error {
	file, err := os.Create(outputFile)
	if err != nil {
		return err
	}
	defer file.Close()

	writer := csv.NewWriter(file)
	defer writer.Flush()

	if err := writer.Write([]string{"Name", "Description", "Unit", "DataType", "Attributes"}); err != nil {
		return err
	}

	dedupeCheck := make(map[string]struct{})
	for _, record := range records {
		// dedupe on .Name
		if _, ok := dedupeCheck[record.Name]; ok {
			continue
		}
		if err := writer.Write([]string{record.Name, record.Description, record.Unit, record.DataType, strings.Join(record.Attributes, ";")}); err != nil {
			return err
		}
		dedupeCheck[record.Name] = struct{}{}
	}

	return nil
}

func orderMetricsForDisplay(records []Record) []Record {
	// group records by name prefix
	prefixMap := make(map[string][]Record)
	for _, v := range records {

		if len(v.Name) > 2 {
			prefixMap[v.Name[:3]] = append(prefixMap[v.Name[:3]], v)
		} else {
			prefixMap[v.Name] = append(prefixMap[v.Name], v)
		}
	}

	// output the records in order (1) 6 char prefix of .Name and (2) order in logs
	var groupedRecords []Record
	for len(prefixMap) > 0 {
		var largest int
		for _, v := range prefixMap {
			if len(v) > largest {
				largest = len(v)
			}
		}
		if largest < 1 {
			break
		}

		for k, v := range prefixMap {
			if len(v) == largest {
				groupedRecords = append(groupedRecords, v...)
				delete(prefixMap, k)
			}
		}
	}

	return groupedRecords
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
			logFilePath := filepath.Join(subDirPath, "logs.txt")
			outputFilePath := filepath.Join(subDirPath, "metrics.csv")

			if _, err := os.Stat(logFilePath); !os.IsNotExist(err) {
				records, err := parseLogsFile(logFilePath)
				if err != nil {
					return fmt.Errorf("failed to process file: '%s': %w", logFilePath, err)
				}

				orderedRecords := orderMetricsForDisplay(records)

				if err := writeCSV(outputFilePath, orderedRecords); err != nil {
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


func main() {
	fmt.Println("process started!")
	if err := processDirectories("/integrations/"); err != nil {
		fmt.Println("Error:", err)
		return
	}
}