# ... (resource group, virtual network, subnet, public IP, and load balancer creation remains the same)

# Create backend address pools
resource "azurerm_lb_backend_address_pool" "success" {
  loadbalancer_id = azurerm_lb.example.id
  name            = "SuccessBackendAddressPool"
}

resource "azurerm_lb_backend_address_pool" "not_found" {
  loadbalancer_id = azurerm_lb.example.id
  name            = "NotFoundBackendAddressPool"
}

resource "azurerm_lb_backend_address_pool" "error" {
  loadbalancer_id = azurerm_lb.example.id
  name            = "ErrorBackendAddressPool"
}

# Create load balancer rules
resource "azurerm_lb_rule" "success" {
  loadbalancer_id                = azurerm_lb.example.id
  name                           = "SuccessRule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.success.id]
  load_distribution              = "Default"
  idle_timeout_in_minutes        = 15
  probe_id                       = azurerm_lb_probe.example.id
}

resource "azurerm_lb_rule" "not_found" {
  loadbalancer_id                = azurerm_lb.example.id
  name                           = "NotFoundRule"
  protocol                       = "Tcp"
  frontend_port                  = 81
  backend_port                   = 81
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.not_found.id]
  load_distribution              = "Default"
  idle_timeout_in_minutes        = 15
  probe_id                       = azurerm_lb_probe.example.id
}

resource "azurerm_lb_rule" "error" {
  loadbalancer_id                = azurerm_lb.example.id
  name                           = "ErrorRule"
  protocol                       = "Tcp"
  frontend_port                  = 82
  backend_port                   = 82
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.error.id]
  load_distribution              = "Default"
  idle_timeout_in_minutes        = 15
  probe_id                       = azurerm_lb_probe.example.id
}

# Create a health probe
resource "azurerm_lb_probe" "example" {
  loadbalancer_id = azurerm_lb.example.id
  name            = "HealthProbe"
  port            = 80
}

# Create virtual machines for each backend pool
resource "azurerm_linux_virtual_machine" "success" {
    resource_group_name = variable.rg_data.name
    location            = var.rg_data.location
    name                = "success-vm-${count.index}"
    size                = "Standard_B1s"
    admin_username      = var.admin_username
    admin_password      = var.admin_password
    network_interface_ids = [element(azurerm_network_interface.success.*.id, count.index)]
    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
}

resource "azurerm_linux_virtual_machine" "not_found" {
    resource_group_name = variable.rg_data.name
    location            = var.rg_data.location
    name                = "notfound-vm-${count.index}"
    size                = "Standard_B1s"
    admin_username      = var.admin_username
    admin_password      = var.admin_password
    network_interface_ids = [element(azurerm_network_interface.not_found.*.id, count.index)]
    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
}
resource "azurerm_linux_virtual_machine" "not_found" {
  count               = var.not_found_vm_count
  # ... (virtual machine configuration for not found pool)
}

resource "azurerm_linux_virtual_machine" "error" {
    resource_group_name = variable.rg_data.name
    location            = var.rg_data.location
    name                = "error-vm-${count.index}"
    size                = "Standard_B1s"
    admin_username      = var.admin_username
    admin_password      = var.admin_password
    network_interface_ids = [element(azurerm_network_interface.error.*.id, count.index)]
    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
}
