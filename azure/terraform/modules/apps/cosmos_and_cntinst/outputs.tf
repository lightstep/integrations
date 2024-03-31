output "app_svc" {
  description = "The App Service object"
  value       = azurerm_app_service.svc
}

output "sqldb" {
  description = "The SQL Database object"
  value       = azurerm_sql_database.sqldb
}

output "sqlsvr" {
  description = "The SQL Server object"
  value       = azurerm_sql_server.svr
}
