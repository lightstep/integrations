provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default     = "exstoragetable"
}

resource "azurerm_resource_group" "example" {
  name     = var.prefix
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "${var.prefix}sa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_table" "example" {
  name                 = "${var.prefix}table"
  storage_account_name = azurerm_storage_account.example.name
}
