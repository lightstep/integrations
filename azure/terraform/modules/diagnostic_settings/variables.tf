variable "name" {
  description = "The name of the diagnostic setting"
  type        = string
}

variable "target_resource_id" {
  description = "The ID of the resource to attach the diagnostic setting to"
  type        = string
}

# variable "log_analytics_workspace_id" {
#   description = "The ID of the Log Analytics Workspace"
#   type        = string
#   default     = ""
# }

// validates that string is not empty
variable "eventhub_authorization_rule_id" {
  description = "The ID of the Event Hub authorization rule"
  type        = string
  validation {
    condition     = length(var.eventhub_authorization_rule_id) > 0
    error_message = "The Event Hub authorization rule ID must not be empty"
  }
}

variable "eventhub_name" {
  description = "The name of the Event Hub to send the logs"
  type        = string
}

variable "log_categories" {
  description = "The list of log categories to enable"
  type        = list(string)
  default     = []
}
