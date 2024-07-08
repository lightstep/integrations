variable "rg_data" {
  description = "The resource group config object"
  type = object({
    name     = string
    prefix   = string
    suffix   = string
    location = string
    tags     = map(string)
  })
}

// TODO: delete container_registry or make
/*
variable "container_registry" {
  type = object({
    name = string
    sku  = string
    tags = map(string)
  })
}
*/

variable "collector_configs_dir" {
  type = string
  # TODO: use relative path to project structure
  default = "../../collector-configs"
}

// TODO: make storage configurable, so multiple blob_name and blob_path pairs can be created
# variable "storage" {
#   type = object({
#     account_name   = string
#     container_name = string
#     // primary_access_key = string
#     tags = map(string)
#   })
# }

variable "secret_ls_access_token" {
  description = "The log service access token"
  type        = string
  validation {
    condition     = length(var.secret_ls_access_token) > 0
    error_message = "The log service access token must not be empty"
  }
}
