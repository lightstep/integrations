
// The log_profile isn't an EventHub, but it captures the Activity logs and routes them there.
resource "azurerm_monitor_log_profile" "log_profile" {
  name = "${var.rg_data.prefix}-log_profile-${var.rg_data.suffix}"
  categories = [
    "Action",
    "Delete",
    "Write",

    # "Administrative",
    # "Policy",
    # // "Security",

    # "ServiceHealth",
    # "ResourceHealth",

    # "Alert",
    # "Autoscale",
    # "Recommendation",
  ]
  locations = [
    var.rg_data.location,
    "global",
  ]
  // you'll find these logs in insights-operational-logs
  servicebus_rule_id = "${azurerm_eventhub_namespace.ehn.id}/authorizationrules/RootManageSharedAccessKey"
  retention_policy {
    enabled = true
    days    = 7
  }
}


resource "azurerm_eventhub_namespace" "ehn" {
  location            = var.rg_data.location
  name                = "${var.rg_data.prefix}-ehn-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  sku                 = "Standard"
  tags                = var.rg_data.tags
  zone_redundant      = true
}

resource "azurerm_eventhub" "eh_resource_logs" {
  message_retention   = 1
  name                = "${var.rg_data.prefix}-eh_resource_logs-${var.rg_data.suffix}"
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  partition_count     = 1
  resource_group_name = var.rg_data.name
}

resource "azurerm_eventhub" "eh_activity_logs" {
  message_retention   = 1
  name                = "${var.rg_data.prefix}-eh_activity_logs-${var.rg_data.suffix}"
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  partition_count     = 1
  resource_group_name = var.rg_data.name
}

// TODO: determine which of these authorization rules are needed
// TODO: validate that manage (which is effectively all three permissions) is required
// for our purposes of the authorization

resource "azurerm_eventhub_namespace_authorization_rule" "ehn_auth_rule" {
  name                = "${var.rg_data.prefix}-ehn_auth_rule-${var.rg_data.suffix}"
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  resource_group_name = var.rg_data.name
  manage              = true # includes listen & send
  listen              = true
  send                = true
}

// NOTE: at least one of the 3 permissions (listen, send, manage) must be true
resource "azurerm_eventhub_authorization_rule" "eh_resource_logs_auth_rule" {
  name                = "${var.rg_data.prefix}-eh_resource_logs_auth_rule-${var.rg_data.suffix}"
  eventhub_name       = azurerm_eventhub.eh_resource_logs.name
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  resource_group_name = var.rg_data.name
  manage              = true # includes listen & send
  listen              = true
  send                = true
}

resource "azurerm_eventhub_authorization_rule" "eh_activity_logs_auth_rule" {
  name                = "${var.rg_data.prefix}-eh_activity_logs_auth_rule-${var.rg_data.suffix}"
  eventhub_name       = azurerm_eventhub.eh_activity_logs.name
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  resource_group_name = var.rg_data.name
  manage              = true # includes listen & send
  listen              = true
  send                = true
}

resource "azurerm_eventhub_authorization_rule" "eh_insights_auth_rule" {
  name                = "insights-operational-logs"
  eventhub_name       = azurerm_eventhub.eh_activity_logs.name
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  resource_group_name = var.rg_data.name
  manage              = true # includes listen & send
  listen              = true
  send                = true
}
