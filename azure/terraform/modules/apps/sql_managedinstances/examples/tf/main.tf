provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default     = "ex-sql-mi"
}

resource "azurerm_resource_group" "example" {
  name     = var.prefix
  location = "East US"
}

resource "azurerm_virtual_network" "example" {
  name                = "${var.prefix}-vnet"
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
}

resource "azurerm_subnet" "example" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.0.0/24"]

  delegation {
    name = "managedinstancedelegation"

    service_delegation {
      name    = "Microsoft.Sql/managedInstances"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
    }
  }
}

resource "azurerm_mssql_managed_instance" "example" {
  name                         = "${var.prefix}-managedsqlinstance"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  administrator_login          = "sqladmin"
  administrator_login_password = "4sqLA1d4in-pAss!"
  license_type                 = "BasePrice"
  subnet_id                    = azurerm_subnet.example.id
  sku_name                     = "GP_Gen5"
  vcores                       = 4
  storage_size_in_gb           = 32

  depends_on = [
    azurerm_subnet.example,
  ]
}
