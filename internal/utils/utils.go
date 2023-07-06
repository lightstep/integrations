package utils

import (
	"log"
	"os"
	"path/filepath"
	"strings"
)

func GetRelativePath(filePaths string) (string, error) {
	base, err := os.Getwd()
	if err != nil {
		log.Println(err)
		return "", err
	}
	lastIndex := strings.LastIndex(base, "/integrations")
	base = base[:lastIndex+1]
	absFilepath := filepath.Join(base, filePaths)

	return absFilepath, nil
}
