
resource "azurerm_eventhub_namespace" "ehn" {
  location            = var.rg_data.location
  name                = "${var.rg_data.prefix}-ehn-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  sku                 = "Standard"
  tags                = var.rg_data.tags
  zone_redundant      = true
}

resource "azurerm_eventhub" "eh_logs" {
  message_retention   = 1
  name                = "${var.rg_data.prefix}-eh_logs-${var.rg_data.suffix}"
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  partition_count     = 1
  resource_group_name = var.rg_data.name
}

resource "azurerm_eventhub" "eh_metrics" {
  message_retention   = 1
  name                = "${var.rg_data.prefix}-eh_metrics-${var.rg_data.suffix}"
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
resource "azurerm_eventhub_authorization_rule" "eh_logs_auth_rule" {
  name                = "${var.rg_data.prefix}-eh_logs_auth_rule-${var.rg_data.suffix}"
  eventhub_name       = azurerm_eventhub.eh_logs.name
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  resource_group_name = var.rg_data.name
  manage              = true # includes listen & send
  listen              = true
  send                = true
}

resource "azurerm_eventhub_authorization_rule" "eh_metrics_auth_rule" {
  name                = "${var.rg_data.prefix}-eh_logs_auth_rule-${var.rg_data.suffix}"
  eventhub_name       = azurerm_eventhub.eh_metrics.name
  namespace_name      = azurerm_eventhub_namespace.ehn.name
  resource_group_name = var.rg_data.name
  manage              = true # includes listen & send
  listen              = true
  send                = true
}
