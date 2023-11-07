provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "compose_example" {
  name     = "myResourceGroup"
  location = "East US"
}

resource "azurerm_virtual_network" "compose_example" {
  name                = "myVNet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.compose_example.location
  resource_group_name = azurerm_resource_group.compose_example.name
}

resource "azurerm_subnet" "compose_example" {
  name                 = "mySubnet"
  resource_group_name  = azurerm_resource_group.compose_example.name
  virtual_network_name = azurerm_virtual_network.compose_example.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "compose_example" {
  name                = "myNIC"
  location            = azurerm_resource_group.compose_example.location
  resource_group_name = azurerm_resource_group.compose_example.name

  ip_configuration {
    name                          = "myNICConfiguration"
    subnet_id                     = azurerm_subnet.compose_example.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "compose_example" {
  name                = "myVM"
  resource_group_name = azurerm_resource_group.compose_example.name
  location            = azurerm_resource_group.compose_example.location
  size                = "Standard_DS1_v2"
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.compose_example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  custom_data = filebase64("${path.module}/setup.sh")
}

resource "azurerm_public_ip" "compose_example" {
  name                = "myPublicIP"
  location            = azurerm_resource_group.compose_example.location
  resource_group_name = azurerm_resource_group.compose_example.name
  allocation_method   = "Dynamic"
}

resource "azurerm_network_security_group" "compose_example" {
  name                = "myNSG"
  location            = azurerm_resource_group.compose_example.location
  resource_group_name = azurerm_resource_group.compose_example.name

  security_rule {
    name                       = "KongAPIGateway"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["8000", "8443", "8001", "8444"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_interface_security_group_association" "compose_example" {
  network_interface_id      = azurerm_network_interface.compose_example.id
  network_security_group_id = azurerm_network_security_group.compose_example.id
}

