# /*
# // the resource group name
# output "resource_group_name" {
#   description = "The name of the resource group"
#   value       = azurerm_resource_group.rg.name
# }
# /*

output "eventhub_activity_logs_auth_rule_id" {
  description = "The Event Hub Authorization Rule object for activity logs"
  value       = azurerm_eventhub_authorization_rule.eh_activity_logs_auth_rule.id
}
output "eventhub_resource_logs_connection_string" {
  description = "The connection string for the Event Hub"
  value       = azurerm_eventhub_authorization_rule.eh_resource_logs_auth_rule.primary_connection_string
  sensitive   = true
}

output "eventhub_activity_logs_connection_string" {
  description = "The connection string for the Event Hub"
  value       = azurerm_eventhub_authorization_rule.eh_activity_logs_auth_rule.primary_connection_string
  sensitive   = true
}

output "eventhub_namespace" {
  description = "The Event Hub Namespace object"
  value       = azurerm_eventhub_namespace.ehn
}

output "eventhub_authorization_rule_id" {
  description = "ID for the Event Hub Authorization Rule"
  // NOTE: it's called eventhub_authorization_rule_id in diagnostic settings parameter,
  // but it's actually the value sourced from the namespace
  // value = azurerm_eventhub_namespace.ehn.id
  value = azurerm_eventhub_namespace_authorization_rule.ehn_auth_rule.id
}

output "container_app_environment" {
  description = "The Container App Environment object"
  value       = azurerm_container_app_environment.container_app_env
}

output "container_app_otelcol" {
  description = "The Container App object for the OpenTelemetry Collector"
  value       = azurerm_container_app.otelcol_app
}

output "container_app_scc" {
  description = "The Container App object for the Smart Configuration Collector"
  value       = azurerm_container_app.semconv_app
}

output "storage_account" {
  description = "The Storage Account object"
  value       = azurerm_storage_account.configs_sa
}

output "storage_account_connection_string" {
  description = "The connection string for the Storage Account"
  value       = azurerm_storage_account.configs_sa.primary_connection_string
  sensitive   = true
}

output "scc_fqdn" {
  description = "The FQDN for the Container App"
  value       = azurerm_container_app.semconv_app.ingress[0].fqdn
}

output "scc_latest_revision_fqdn" {
  description = "The endpoint for the Semantic Convention Checker"
  value       = azurerm_container_app.semconv_app.latest_revision_fqdn
}

output "scc_name" {
  description = "The name of the Semantic Convention Checker"
  value       = azurerm_container_app.semconv_app.name
}

output "activity_logs_auth_rule" {
  description = "The Event Hub Authorization Rule object for activity logs"
  value       = azurerm_eventhub_authorization_rule.eh_activity_logs_auth_rule
}

output "eventhub_resource_logs_name" {
  description = "The name of the Event Hub for logs"
  value       = azurerm_eventhub.eh_resource_logs.name
}

output "eventhub_activity_logs_name" {
  description = "The name of the Event Hub for metrics"
  value       = azurerm_eventhub.eh_activity_logs.name
}
