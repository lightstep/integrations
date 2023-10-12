output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.otel_collector_confluentplatform_dashboard.id}"
  description = "OpenTelemetry Confluent Platform Dashboard URL"
}
