
output "virtual_machine" {
  value = azurerm_virtual_machine.vm
}

output "virtual_network" {
  value = azurerm_virtual_network.vnet
}

output "subnet" {
  value = azurerm_subnet.subnet
}

output "public_ip" {
  value = azurerm_public_ip.public_ip
}

output "primary_nic" {
  value = azurerm_network_interface.primary_nic
}

output "internal_nic" {
  value = azurerm_network_interface.internal_nic
}

output "network_security_group" {
  value = azurerm_network_security_group.nsg
}

output "managed_disk" {
  value = azurerm_managed_disk.md
}
