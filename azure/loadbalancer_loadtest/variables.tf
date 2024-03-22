
/* write all of the variables from the main.tf here */

variable "rg_data" {
  description = "The resource group data"
  type        = object({
    name     = string
    location  = string
    prefix = string
    suffix = string
  })
}

variable "admin_username" {
  description = "The username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "The password for the virtual machine"
  type        = string
}

