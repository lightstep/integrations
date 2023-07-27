provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "ex-mysql-servers"
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}"
  location = "East US"
}

resource "azurerm_mysql_server" "example" {
  name                = "${var.prefix}-mysql"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  administrator_login          = "mysqladmin123"
  administrator_login_password = "4sqLA1d4in-pAss!"

  sku_name   = "B_Gen5_1"
  storage_mb = 5120
  version    = "5.7"

  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = false
  infrastructure_encryption_enabled = false
  public_network_access_enabled     = true
  ssl_enforcement_enabled           = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
}

resource "azurerm_mysql_database" "example" {
  name                = "${var.prefix}"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mysql_server.example.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
