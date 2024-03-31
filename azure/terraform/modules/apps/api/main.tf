provider "azurerm" {
  features {}
}

resource "azurerm_api_management" "api_mgmt" {
  name                = "${var.rg_data.prefix}-api-mgmt-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
  publisher_name      = "My Company"
  publisher_email     = "company@terraform.io"

  sku_name = "Developer_1"
}

resource "azurerm_api_management_api" "api" {
  name                = "${var.rg_data.prefix}-api-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  api_management_name = azurerm_api_management.api_mgmt.name
  revision            = "1"
  display_name        = "My API"
  path                = "demo"
  protocols           = ["https"]

  import {
    content_format = "swagger-link-json"
    // This  is a config from a demo. Last referenced 3/15/2024.
    content_value = "http://conferenceapi.azurewebsites.net/?format=json"
  }
}
