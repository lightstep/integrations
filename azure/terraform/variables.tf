/////////////////////////////////////////////////////////////////////////////////
// variables we want to set at apply time - including secrets
/////////////////////////////////////////////////////////////////////////////////

// go ahead and treat this as a secret since it's not public, but security policy doesn't require it
variable "secret_ls_access_token" {
  type = string
  validation {
    condition     = var.secret_ls_access_token != ""
    error_message = "The secret_ls_access_token variable must be non-empty."
  }
}

/////////////////////////////////////////////////////////////////////////////////
// variables to set on apply
/////////////////////////////////////////////////////////////////////////////////

variable "rg_conf" {
  description = "Resource group config object - also used extensively for resources within the resource group."
  type = object({
    prefix   = string
    location = string
    tags     = map(string)
  })
  default = {
    prefix   = "staging-sgc"
    location = "eastus"
    tags = {
      proj = "sgc"
      env  = "staging"
    }
  }
}

/*
variable "storage" {
  type = object({
    account_name   = string
    container_name = string
    // primary_access_key = string
    tags = map(string)
  })
}
*/

# variable "log_analytics_workspace" {
#   type = object({
#     name              = string
#     sku               = string
#     retention_in_days = number
#     tags              = map(string)
#   })
#   default = {
#     name              = "log-analytics"
#     sku               = "PerGB2018"
#     retention_in_days = 7
#     tags              = {}
#   }
# }

# variable "eventhub" {
#   type = object({
#     namespace_name    = string
#     name              = string
#     partition_count   = number
#     message_retention = number
#     sku               = string
#     capacity          = number
#     capture_enabled   = bool
#     tags              = map(string)
#   })
#   default = {
#     namespace_name    = "eh-namespace"
#     name              = "eh"
#     partition_count   = 1
#     message_retention = 7
#     sku               = "Standard"
#     capacity          = 1
#     capture_enabled   = false
#     tags              = {}
#   }
# }

/*
variable "collector_container" {
  type = object({
    group_name = string
    group_tags = map(string)

    identity = string

    name    = string
    os_type = string
    image   = string
    tag     = string
    cpu     = number
    memory  = number
    port    = number

  })
}
*/
