output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.otel_collector_purefa_dashboard.id}"
  description = "OpenTelemetry Purefa Dashboard URL"
}
