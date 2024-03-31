
variable "rg_data" {
  description = "The resource group data"
  type = object({
    location = string
    name     = string
    prefix   = string
    suffix   = string
    tags     = map(string)
  })
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "public_ip_name" {
  description = "The name of the public IP"
  type        = string
}

variable "load_balancer_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "backend_address_pool_name" {
  description = "The name of the backend pool"
  type        = string
}

variable "load_balancer_rule_name" {
  description = "The name of the load balancer rule"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "container_group_name" {
  description = "The name of the container group"
  type        = string
}

variable "admin_username" {
  description = "The name of the admin user"
  type        = string
}

variable "admin_password" {
  description = "The password of the admin user"
  type        = string
}
