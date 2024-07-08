// make this into a variable we pass the module that includes resource_prefix

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.rg_data.prefix}-vnet-${var.rg_data.suffix}"
  address_space       = ["10.0.0.0/16"]
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
  tags                = var.rg_data.tags
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.rg_data.prefix}-subnet-${var.rg_data.suffix}"
  resource_group_name  = var.rg_data.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "public_ip" {
  name                = "${var.rg_data.prefix}-pip-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  location            = var.rg_data.location
  allocation_method   = "Dynamic"
  tags                = var.rg_data.tags
}

resource "azurerm_network_interface" "primary_nic" {
  name                = "${var.rg_data.prefix}-primary-nic-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  location            = var.rg_data.location

  ip_configuration {
    name                          = "primary"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }

  tags = var.rg_data.tags
}

resource "azurerm_network_interface" "internal_nic" {
  name                = "${var.rg_data.prefix}-internal-nic-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  location            = var.rg_data.location

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }

  tags = var.rg_data.tags
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${var.rg_data.prefix}-nsg-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name

  security_rule {
    access                     = "Allow"
    direction                  = "Inbound"
    name                       = "tls"
    priority                   = 100
    protocol                   = "Tcp"
    source_port_range          = "*"
    source_address_prefix      = "*"
    destination_port_range     = "443"
    destination_address_prefix = azurerm_network_interface.primary_nic.private_ip_address
  }

  tags = var.rg_data.tags
}

resource "azurerm_network_interface_security_group_association" "nsg_association" {
  network_interface_id      = azurerm_network_interface.internal_nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_virtual_machine" "vm" {
  name                = "${var.rg_data.prefix}-vm-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
  vm_size             = "Standard_A1_v2"
  network_interface_ids = [
    azurerm_network_interface.primary_nic.id,
    azurerm_network_interface.internal_nic.id
  ]

  primary_network_interface_id  = azurerm_network_interface.primary_nic.id
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    caching           = "ReadWrite"
    name              = "${var.rg_data.prefix}-osdisk-${var.rg_data.suffix}"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "${var.rg_data.prefix}-vmhostname-${var.rg_data.suffix}"
    admin_username = "vm_user"
    admin_password = "passW!0rd"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = var.rg_data.tags
}

resource "azurerm_managed_disk" "md" {
  name                 = "${var.rg_data.prefix}-disk1-${var.rg_data.suffix}"
  location             = var.rg_data.location
  resource_group_name  = var.rg_data.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_attachment" {
  managed_disk_id    = azurerm_managed_disk.md.id
  virtual_machine_id = azurerm_virtual_machine.vm.id
  lun                = "10"
  caching            = "ReadWrite"
}
