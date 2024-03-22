# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "loadtest-rg"
  location = "eastus"
}

# Create an Azure Container Registry (if not already created)
resource "azurerm_container_registry" "example" {
  name                = "yourcontainerregistry"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Basic"
}

# Create an Azure Container Instance
resource "azurerm_container_group" "example" {
  name                = "k6-loadtest"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  ip_address_type     = "Public"
  os_type             = "Linux"
  restart_policy      = "Never"

  container {
    name   = "k6-loadtest"
    image  = "yourcontainerregistry.azurecr.io/k6-loadtest:latest"
    cpu    = "1"
    memory = "1.5"
  }

  image_registry_credential {
    server   = azurerm_container_registry.example.login_server
    username = azurerm_container_registry.example.admin_username
    password = azurerm_container_registry.example.admin_password
  }
}
