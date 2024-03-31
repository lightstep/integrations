
resource "azurerm_user_assigned_identity" "uai" {
  name                = "${var.rg_data.prefix}-uai-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
}

resource "azurerm_role_assignment" "scc_cfg_storage_contributor" {
  scope                = azurerm_storage_account.configs_sa.id
  role_definition_name = "Storage File Data SMB Share Contributor"
  principal_id         = azurerm_user_assigned_identity.uai.principal_id
}

resource "azurerm_container_app_environment_storage" "scc_cfg_storage" {
  access_key = azurerm_storage_account.configs_sa.primary_access_key
  // one of "ReadOnly" or "ReadWrite"
  access_mode                  = "ReadWrite"
  account_name                 = azurerm_storage_account.configs_sa.name
  container_app_environment_id = azurerm_container_app_environment.container_app_env.id
  name                         = "scc-cfg-storage-${var.rg_data.suffix}"
  share_name                   = azurerm_storage_share.scc_cfg_share.name
}

resource "azurerm_container_app_environment_storage" "otelcol_cfg_storage" {
  access_key = azurerm_storage_account.configs_sa.primary_access_key
  // one of "ReadOnly" or "ReadWrite"
  access_mode                  = "ReadWrite"
  account_name                 = azurerm_storage_account.configs_sa.name
  container_app_environment_id = azurerm_container_app_environment.container_app_env.id
  name                         = "otelcol-cfg-storage-${var.rg_data.suffix}"
  share_name                   = azurerm_storage_share.otelcol_cfg_share.name
}

resource "azurerm_storage_account" "configs_sa" {
  account_replication_type         = "LRS"
  account_tier                     = "Standard"
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false
  location                         = "eastus"
  name                             = "sccstagingsa${var.rg_data.suffix}"
  resource_group_name              = var.rg_data.name
  tags                             = var.rg_data.tags
}

// NOTE: we're specific about SMB protocol even though it's the default,
// because rely on it for the az command (and possibly more) to work
resource "azurerm_storage_share" "otelcol_cfg_share" {
  name                 = "${var.rg_data.prefix}-otelcol-cfg-share-${var.rg_data.suffix}"
  quota                = 1024
  storage_account_name = azurerm_storage_account.configs_sa.name
  enabled_protocol     = "SMB"
}

// NOTE: we're specific about SMB protocol even though it's the default,
// because rely on it for the az command (and possibly more) to work
resource "azurerm_storage_share" "scc_cfg_share" {
  name                 = "${var.rg_data.prefix}-scc-cfg-share-${var.rg_data.suffix}"
  quota                = 1024
  storage_account_name = azurerm_storage_account.configs_sa.name
  enabled_protocol     = "SMB"
}

resource "azurerm_storage_share_file" "otelcol_cfg_share_file" {
  name             = "eventhub-only.yaml"
  storage_share_id = azurerm_storage_share.otelcol_cfg_share.id
  source           = "${path.module}/../../../collector-configs/eventhub-only.yaml"
}

resource "azurerm_storage_share_file" "scc_cfg_share_file" {
  name             = "config.yaml"
  storage_share_id = azurerm_storage_share.scc_cfg_share.id
  source           = "${path.module}/../../../scc-config/config.yaml"
}
