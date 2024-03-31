
variable "location" {
  description = "The Azure region in which to create all resources."
}

variable "proj" {
  description = "The name of the project"
  type = string
}

variable "env" {
  description = "The name of the environment"
  type = string
}
