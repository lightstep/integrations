/*
  You can see sentivie values when you query output by name, such as `terraform output eventhub_connection_string`
  Otherwise you will just see <sensitive> for the value.
  */

# output "eventhub_connection_string" {
#   description = "The connection string for the Event Hub"
#   value       = module.logs.eventhub_connection_string
#   sensitive   = true
# }

output "storage_account_connection_string" {
  description = "The connection string for the Storage Account"
  value       = module.logs.storage_account_connection_string
  /*
  You can only query this output with `terraform output storage_account_connection_string`
  Otherwise you get an error
  */
  sensitive = true
}

output "scc_fqdn" {
  description = "The FQDN for the Container App"
  value       = module.logs.scc_fqdn
}

output "scc_name" {
  description = "The FQDN for the Container App"
  value       = module.logs.scc_name
}

output "scc_latest_revision_fqdn" {
  description = "The endpoint for the Semantic Convention Checker"
  value       = module.logs.scc_latest_revision_fqdn
}
