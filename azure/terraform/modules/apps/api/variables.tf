
variable "rg_data" {
  description = "The ID of the resource to apply the Monitor Diagnostics Setting to"
  type = object({
    name     = string
    location = string

    prefix = string
    suffix = string
    tags   = map(string)
  })
}

