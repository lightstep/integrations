provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default     = "ex-docdb-cassandra"
}

resource "azurerm_resource_group" "example" {
  name     = var.prefix
  location = "East US"
}

resource "azurerm_virtual_network" "example" {
  name                = "${var.prefix}-vnet"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "example" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}

data "azuread_service_principal" "example" {
  display_name = "Azure Cosmos DB"
}

resource "azurerm_role_assignment" "example" {
  scope                = azurerm_virtual_network.example.id
  role_definition_name = "Network Contributor"
  principal_id         = data.azuread_service_principal.example.object_id
}

resource "azurerm_cosmosdb_cassandra_cluster" "example" {
  name                           = "${var.prefix}-cluster"
  resource_group_name            = azurerm_resource_group.example.name
  location                       = azurerm_resource_group.example.location
  delegated_management_subnet_id = azurerm_subnet.example.id
  default_admin_password         = "4sqLA1d4in-pAss!"

  depends_on = [azurerm_role_assignment.example]
}
