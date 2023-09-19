provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default     = "exContainerRegistry"
}

resource "azurerm_resource_group" "example" {
  name     = var.prefix
  location = "East US"
}

resource "azurerm_container_registry" "example" {
  name                = "${var.prefix}registry"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
}
