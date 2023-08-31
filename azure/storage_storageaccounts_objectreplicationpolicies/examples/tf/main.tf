provider "azurerm" {
  features {}
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "exstoragereplica"
}

resource "azurerm_resource_group" "src" {
  name     = "${var.prefix}src"
  location = "East US"
}

resource "azurerm_storage_account" "src" {
  name                     = "${var.prefix}sasrc"
  resource_group_name      = azurerm_resource_group.src.name
  location                 = azurerm_resource_group.src.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  blob_properties {
    versioning_enabled  = true
    change_feed_enabled = true
  }
}

resource "azurerm_storage_container" "src" {
  name                  = "${var.prefix}containersrc"
  storage_account_name  = azurerm_storage_account.src.name
  container_access_type = "private"
}

resource "azurerm_resource_group" "dst" {
  name     = "${var.prefix}dst"
  location = "East US"
}

resource "azurerm_storage_account" "dst" {
  name                     = "${var.prefix}sadst"
  resource_group_name      = azurerm_resource_group.dst.name
  location                 = azurerm_resource_group.dst.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  blob_properties {
    versioning_enabled  = true
    change_feed_enabled = true
  }
}

resource "azurerm_storage_container" "dst" {
  name                  = "${var.prefix}containerdst"
  storage_account_name  = azurerm_storage_account.dst.name
  container_access_type = "private"
}

resource "azurerm_storage_object_replication" "example" {
  source_storage_account_id      = azurerm_storage_account.src.id
  destination_storage_account_id = azurerm_storage_account.dst.id
  rules {
    source_container_name      = azurerm_storage_container.src.name
    destination_container_name = azurerm_storage_container.dst.name
  }
}
