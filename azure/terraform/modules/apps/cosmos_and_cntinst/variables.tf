
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
