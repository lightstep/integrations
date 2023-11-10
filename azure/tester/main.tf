provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test_runner" {
  name     = "test_runner-resources"
  location = "East US"
}

resource "azurerm_virtual_network" "test_runner" {
  name                = "test_runner-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.test_runner.location
  resource_group_name = azurerm_resource_group.test_runner.name
}

resource "azurerm_subnet" "test_runner" {
  name                 = "test_runner-subnet"
  resource_group_name  = azurerm_resource_group.test_runner.name
  virtual_network_name = azurerm_virtual_network.test_runner.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "test_runner" {
  name                = "test_runner-nsg"
  location            = azurerm_resource_group.test_runner.location
  resource_group_name = azurerm_resource_group.test_runner.name

  security_rule {
    name                       = "AllowBastionInbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet" "bastion_subnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.test_runner.name
  virtual_network_name = azurerm_virtual_network.test_runner.name
  address_prefixes     = ["10.0.2.0/27"]
}

resource "azurerm_public_ip" "bastion_public_ip" {
  name                = "kong-compose-example-bastion-ip"
  location            = azurerm_resource_group.test_runner.location
  resource_group_name = azurerm_resource_group.test_runner.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "test_runner" {
  name                = "test_runner-bastion-host"
  location            = azurerm_resource_group.test_runner.location
  resource_group_name = azurerm_resource_group.test_runner.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion_subnet.id
    public_ip_address_id = azurerm_public_ip.bastion_public_ip.id
  }
}

variable "LS_ACCESS_TOKEN" {
  description = "The ServiceNow Cloud Observability access token"
  type        = string
  sensitive   = true
}

resource "azurerm_linux_virtual_machine" "test_runner" {
  name                = "kong-compose-example-vm"
  resource_group_name = azurerm_resource_group.test_runner.name
  location            = azurerm_resource_group.test_runner.location
  size                = "Standard_DS1_v2"
  admin_username      = "azureuser"

  admin_ssh_key {
    username  = "azureuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  // disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.test_runner.id,
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

  custom_data = base64encode(templatefile("${path.module}/setup.sh", {
    LS_ACCESS_TOKEN = var.LS_ACCESS_TOKEN
  }))
}

resource "azurerm_network_interface" "test_runner" {
  name                = "test_runner-nic"
  location            = azurerm_resource_group.test_runner.location
  resource_group_name = azurerm_resource_group.test_runner.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.test_runner.id
    private_ip_address_allocation = "Dynamic"
  }
}

