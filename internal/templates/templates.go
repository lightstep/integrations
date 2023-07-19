package templates

import (
	"embed"
)

//go:embed alerts/alerts.tf.tmpl collector/collector.yaml.tmpl compose/docker-compose.yaml.tmpl dashboards/main.tf.head.tmpl helm/chart_values.yaml.tmpl images/images.tmpl k8s/deployment.yaml.tmpl readme/base.md.tmpl
var TemplateContent embed.FS
