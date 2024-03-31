# Azure Load Balancer

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.rg_data.prefix}-lb-vnet-${var.rg_data.suffix}"
  address_space       = ["10.0.0.0/16"]
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
}

# Create a subnet
resource "azurerm_subnet" "snet" {
  name                 = "${var.rg_data.prefix}-lb-snet-${var.rg_data.suffix}"
  resource_group_name  = var.rg_data.name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.1.0/24"]
}

# Create a public IP address for the load balancer
resource "azurerm_public_ip" "lb_pip" {
  name                = "${var.rg_data.prefix}-lb-snet-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Create a load balancer
resource "azurerm_lb" "lb" {
  name                = "${var.rg_data.prefix}-lb-demo-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name // azurerm_resource_group.example.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.lb_pip.id
  }
}

# Create a backend address pool
resource "azurerm_lb_backend_address_pool" "success_addrs" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "SuccessBackendAddressPool"
}
resource "azurerm_lb_backend_address_pool" "not_found_addrs" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "NotFoundBackendAddressPool"
}

resource "azurerm_lb_backend_address_pool" "error_addrs" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "ErrorBackendAddressPool"
}
/*
# Create a load balancer rule
resource "azurerm_lb_rule" "lb_rule" {
  loadbalancer_id                = azurerm_lb.lb.id
  name                           = var.load_balancer_rule_name
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.lb_addrs.id]
}
*/

# Create virtual machines
resource "azurerm_linux_virtual_machine" "lb_vm" {
  count                           = 3
  name                            = "${var.rg_data.prefix}-vm-${count.index}-${var.rg_data.suffix}"
  location                        = var.rg_data.location
  resource_group_name             = var.rg_data.name
  size                            = "Standard_DS1_v2"
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.lb_nic[count.index].id,
    // .example[count.index].id,
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
}

# Create network interfaces for virtual machines
resource "azurerm_network_interface" "lb_nic" {
  count               = 3
  name                = "nic-${count.index}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name

  ip_configuration {
    name                          = "ipconfig-${count.index}"
    subnet_id                     = azurerm_subnet.snet.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Associate network interfaces with the load balancer backend address pool
resource "azurerm_network_interface_backend_address_pool_association" "success_assoc" {
  count                   = 3                                                # var.vm_count
  network_interface_id    = azurerm_network_interface.lb_nic[count.index].id // .example[count.index].id
  ip_configuration_name   = "ipconfig-${count.index}"
  backend_address_pool_id = azurerm_lb_backend_address_pool.success_addrs.id
  // azurerm_lb_backend_address_pool.example.id
}

resource "azurerm_network_interface_backend_address_pool_association" "not_found_assoc" {
  count                   = 3
  network_interface_id    = azurerm_network_interface.lb_nic[count.index].id
  ip_configuration_name   = "ipconfig-${count.index}"
  backend_address_pool_id = azurerm_lb_backend_address_pool.not_found_addrs.id
}

resource "azurerm_network_interface_backend_address_pool_association" "error_assoc" {
  count                   = 3
  network_interface_id    = azurerm_network_interface.lb_nic[count.index].id
  ip_configuration_name   = "ipconfig-${count.index}"
  backend_address_pool_id = azurerm_lb_backend_address_pool.error_addrs.id
}

/*
// TODO: Replace the following code with the k6 container group
# Perform a light load test using Apache Bench
resource "null_resource" "load_test" {
  provisioner "local-exec" {
    command = "ab -n 100 -c 10 http://${azurerm_public_ip.lb_pip.ip_address}/"
  }

  depends_on = [azurerm_linux_virtual_machine.lb_vm]
}
*/

# Create an Azure Storage Account for storing the k6 script
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_data.name     // example.name
  location                 = var.rg_data.location // example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# # Create an Azure Storage Container for the k6 script
# resource "azurerm_storage_container" "example" {
#   name                  = var.storage_container_name
#   storage_account_name  = azurerm_storage_account.example.name
#   container_access_type = "private"
# }

# # Upload the k6 script to the Azure Storage Container
# resource "azurerm_storage_blob" "example" {
#   name                   = "loadtest.js"
#   storage_account_name   = azurerm_storage_account.example.name
#   storage_container_name = azurerm_storage_container.example.name
#   type                   = "Block"
#   source                 = "path/to/loadtest.js"
# }

/*
# Create an Azure Container Instance for running k6
resource "azurerm_container_group" "lb_k6_cg" {
  name                = var.container_group_name
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
  ip_address_type     = "Public"
  os_type             = "Linux"
  restart_policy      = "Never"

  container {
    name   = "k6"
    image  = "loadimpact/k6"
    cpu    = "1"
    memory = "1.5"

    commands = [
      "run",
      "-e", "LOAD_BALANCER_IP=${azurerm_public_ip.lb_pip.ip_address}",
      "/mnt/k6/loadtest.js"
    ]

    ports {
      port     = 80
      protocol = "TCP"
    }

    volume {
      name                 = "k6"
      mount_path           = "/mnt/k6"
      read_only            = true
      storage_account_name = azurerm_storage_account.sa.name
      storage_account_key  = azurerm_storage_account.sa.primary_access_key
      share_name           = "k6cfg"
    }
  }
  depends_on = [azurerm_linux_virtual_machine.lb_vm]
}
*/

# Create backend address pools
# resource "azurerm_lb_backend_address_pool" "success" {
#   loadbalancer_id = azurerm_lb.lb.id
#   name            = "SuccessBackendAddressPool"
# }

# resource "azurerm_lb_backend_address_pool" "not_found" {
#   loadbalancer_id = azurerm_lb.lb.id
#   name            = "NotFoundBackendAddressPool"
# }

# resource "azurerm_lb_backend_address_pool" "error" {
#   loadbalancer_id = azurerm_lb.lb.id
#   name            = "ErrorBackendAddressPool"
# }

# Create load balancer rules
resource "azurerm_lb_rule" "success" {
  loadbalancer_id                = azurerm_lb.lb.id
  name                           = "SuccessRule"
  protocol                       = "Tcp"
  frontend_port                  = 8080
  backend_port                   = 8080
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.success_addrs.id]
  load_distribution              = "Default"
  idle_timeout_in_minutes        = 15
  probe_id                       = azurerm_lb_probe.probe.id
}

resource "azurerm_lb_rule" "not_found" {
  loadbalancer_id                = azurerm_lb.lb.id
  name                           = "NotFoundRule"
  protocol                       = "Tcp"
  frontend_port                  = 8081
  backend_port                   = 8081
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.not_found_addrs.id]
  load_distribution              = "Default"
  idle_timeout_in_minutes        = 15
  probe_id                       = azurerm_lb_probe.probe.id
}

resource "azurerm_lb_rule" "error" {
  loadbalancer_id                = azurerm_lb.lb.id
  name                           = "ErrorRule"
  protocol                       = "Tcp"
  frontend_port                  = 8082
  backend_port                   = 8082
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.error_addrs.id]
  load_distribution              = "Default"
  idle_timeout_in_minutes        = 15
  probe_id                       = azurerm_lb_probe.probe.id
}

resource "azurerm_lb_probe" "probe" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "tcpProbe"
  protocol        = "Tcp"
  port            = 8083
}
