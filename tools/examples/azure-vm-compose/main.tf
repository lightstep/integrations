provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "kong_compose_example" {
  name     = "kong_compose_example-resources"
  location = "East US"
}

resource "azurerm_virtual_network" "kong_compose_example" {
  name                = "kong_compose_example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.kong_compose_example.location
  resource_group_name = azurerm_resource_group.kong_compose_example.name
}

resource "azurerm_subnet" "kong_compose_example" {
  name                 = "kong_compose_example-subnet"
  resource_group_name  = azurerm_resource_group.kong_compose_example.name
  virtual_network_name = azurerm_virtual_network.kong_compose_example.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "kong_compose_example" {
  name                = "kong_compose_example-nsg"
  location            = azurerm_resource_group.kong_compose_example.location
  resource_group_name = azurerm_resource_group.kong_compose_example.name

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
  resource_group_name  = azurerm_resource_group.kong_compose_example.name
  virtual_network_name = azurerm_virtual_network.kong_compose_example.name
  address_prefixes     = ["10.0.2.0/27"]
}

resource "azurerm_public_ip" "bastion_public_ip" {
  name                = "kong-compose-example-bastion-ip"
  location            = azurerm_resource_group.kong_compose_example.location
  resource_group_name = azurerm_resource_group.kong_compose_example.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "kong_compose_example" {
  name                = "kong_compose_example-bastion-host"
  location            = azurerm_resource_group.kong_compose_example.location
  resource_group_name = azurerm_resource_group.kong_compose_example.name

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

resource "azurerm_linux_virtual_machine" "kong_compose_example" {
  name                = "kong-compose-example-vm"
  resource_group_name = azurerm_resource_group.kong_compose_example.name
  location            = azurerm_resource_group.kong_compose_example.location
  size                = "Standard_DS1_v2"
  admin_username      = "azureuser"

  /*
  os_profile {
    computer_name  = "hostname"
    admin_username = "azureuser"
  }
  */

  // os_profile_linux_config {
  //  disable_password_authentication = true
  // }
  
  // admin_password      = "Azure_2_Password"
  admin_ssh_key {
    username  = "azureuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  // disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.kong_compose_example.id,
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

  /*
  provisioner "remote-exec" {
    inline = [
      "echo 'export LS_ACCESS_TOKEN=${var.LS_ACCESS_TOKEN}' >> /etc/profile.d/lightstep.sh"
    ]

    connection {
      type     = "ssh"
      user     = "azureuser"
      private_key = file("~/.ssh/id_rsa")
      host     = self.public_ip_address
    }
  }
  */

  custom_data = base64encode(templatefile("${path.module}/setup.sh", {
    LS_ACCESS_TOKEN = var.LS_ACCESS_TOKEN
  }))
}

resource "azurerm_network_interface" "kong_compose_example" {
  name                = "kong_compose_example-nic"
  location            = azurerm_resource_group.kong_compose_example.location
  resource_group_name = azurerm_resource_group.kong_compose_example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.kong_compose_example.id
    private_ip_address_allocation = "Dynamic"
  }
}

