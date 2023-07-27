provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "ex-postgre-servers"
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}"
  location = "East US"
}

resource "azurerm_postgresql_server" "example" {
  name                = "example-postgre-server"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  administrator_login          = "psqladmin123"
  administrator_login_password = "4sqLA1d4in-pAss!"

  sku_name   = "B_Gen5_1"
  version    = "11"
  storage_mb = 5120

  ssl_enforcement_enabled = true
}

resource "azurerm_postgresql_database" "db" {
  name                = "${var.prefix}-db"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_postgresql_server.example.name
  charset             = "UTF8"
  collation           = "en-US"
}
