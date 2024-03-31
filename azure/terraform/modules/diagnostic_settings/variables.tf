variable "name" {
  description = "The name of the diagnostic setting"
  type        = string
}

variable "target_resource_id" {
  description = "The ID of the resource to attach the diagnostic setting to"
  type        = string
}

variable "has_logs" {
  description = "Whether to enable logs"
  type        = bool
  default     = false
}

variable "has_metrics" {
  description = "Whether to enable metrics"
  type        = bool
  default     = false
}

# variable "log_analytics_workspace_id" {
#   description = "The ID of the Log Analytics Workspace"
#   type        = string
#   default     = ""
# }

variable "eventhub_authorization_rule_id" {
  description = "The ID of the Event Hub authorization rule"
  type        = string
  default     = ""
}

variable "eventhub_metrics_name" {
  description = "The name of the Event Hub for metrics"
  type        = string
}

variable "eventhub_logs_name" {
  description = "The name of the Event Hub for logs"
  type        = string
}

variable "metrics_categories" {
  description = "The list of metric categories to enable"
  type        = list(string)
  default     = []
}

variable "log_categories" {
  description = "The list of log categories to enable"
  type        = list(string)
  default     = []
}
