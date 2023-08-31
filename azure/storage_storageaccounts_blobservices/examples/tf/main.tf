provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "exstorageblob"
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

resource "azurerm_storage_container" "example" {
  name                  = "${var.prefix}container"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "example" {
  name                   = "${var.prefix}-text_file.txt"
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  source_content         = "File content\n"
}
