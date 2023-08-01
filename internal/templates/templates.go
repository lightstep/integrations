package templates

import (
	"embed"
)

//go:embed examples/*
var TemplateContent embed.FS
