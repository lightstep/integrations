provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "exstoragefile"
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "${var.prefix}sa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_share" "example" {
  name                 = "${var.prefix}share"
  storage_account_name = azurerm_storage_account.example.name
  quota                = 50
}

resource "azurerm_storage_share_file" "example" {
  name             = "${var.prefix}-text_file.txt"
  storage_share_id = azurerm_storage_share.example.id
}
