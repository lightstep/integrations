/*
I would like to create
*/

# data "azurerm_monitor_diagnostic_categories" "diag_cats" {
#   resource_id = var.target_resource_id
# }



resource "azurerm_monitor_diagnostic_setting" "diag_setting" {
  name                           = var.name
  target_resource_id             = var.target_resource_id
  eventhub_authorization_rule_id = var.eventhub_authorization_rule_id
  eventhub_name                  = var.eventhub_logs_name

  dynamic "metric" {
    for_each = var.metrics_categories // data.azurerm_monitor_diagnostic_categories.diag_cats.metrics
    content {
      category = metric.value
      enabled  = true
    }
  }
  dynamic "enabled_log" {
    for_each = var.log_categories // data.azurerm_monitor_diagnostic_categories.diag_cats.log_category_types
    content {
      category = enabled_log.value
    }
  }

}

/*
resource "azurerm_monitor_diagnostic_setting" "metrics_diagnostic_setting" {
  name                           = "${var.name}-metrics"
  target_resource_id             = var.target_resource_id
  eventhub_authorization_rule_id = var.eventhub_authorization_rule_id
  eventhub_name                  = var.eventhub_metrics_name

  dynamic "metric" {
    for_each = data.azurerm_monitor_diagnostic_categories.diag_cats.metrics
    content {
      category = metric.value
      enabled  = true
    }
  }
}
*/
