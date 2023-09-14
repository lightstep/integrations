terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.76.0"
    }
  }
  required_version = ">= v1.0.11"
}

variable "lightstep_project" {
  description = "Cloud Observability Project Name"
  type        = string
}

output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.otel_collector_dashboard.id}"
  description = "OpenTelemetry Collector {{ .Name }} Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "{{ .Name }} Metrics"
  dashboard_description = "Monitor {{ .Name }} with this metrics overview dashboard."{{ range $index, $graph := .Graphs }}

  chart {
    name = "{{ $graph.Name }}"
    rank = "{{ $index }}"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric {{ .Name }} {{if .Attributes}}| filter ({{ range $indexAttribute, $attribute := .Attributes }}{{if ne $indexAttribute 0}} && {{end}}({{ $attribute }} == ${{ replace $attribute "." "_" }}){{ end }}){{end}} | {{ .Aggregation }} | group_by [], sum
EOT
    }
  }{{ end }}{{ range .Variables }}

  template_variable {
    name                     = "{{ replace . "." "_" }}"
    default_values           = []
    suggestion_attribute_key = "{{ . }}"
  }{{ end }}
}
