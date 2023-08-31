provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "ex-maria"
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}"
  location = "East US"
}

resource "azurerm_mariadb_server" "example" {
  name                = "${var.prefix}-mariadb-svr"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku_name = "B_Gen5_1"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false

  administrator_login          = "mariaadmin123"
  administrator_login_password = "4sqLA1d4in-pAss!"
  version                      = "10.2"
  ssl_enforcement_enabled      = true
}

resource "azurerm_mariadb_database" "example" {
  name                = "${var.prefix}_mariadb_database"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mariadb_server.example.name
  charset             = "utf8mb4"
  collation           = "utf8mb4_unicode_520_ci"
}
