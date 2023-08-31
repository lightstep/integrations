provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "ex-postgre-flexible"
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}"
  location = "East US"
}

resource "azurerm_postgresql_flexible_server" "example" {
  name                   = "${var.prefix}-psqlflexibleserver"
  resource_group_name    = azurerm_resource_group.example.name
  location               = azurerm_resource_group.example.location
  version                = "12"
  administrator_login    = "psqladmin123"
  administrator_password = "4sqLA1d4in-pAss!"
  storage_mb             = 32768
  sku_name               = "GP_Standard_D4s_v3"
}

resource "azurerm_postgresql_flexible_server_database" "example" {
  name      = "${var.prefix}-db"
  server_id = azurerm_postgresql_flexible_server.example.id
  collation = "en_US.utf8"
  charset   = "utf8"
}
