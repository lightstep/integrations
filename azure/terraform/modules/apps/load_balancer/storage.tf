
resource "azurerm_user_assigned_identity" "uai" {
  name                = "${var.rg_data.prefix}-uai-lb-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
}

resource "azurerm_role_assignment" "k6_cfg_storage_contributor" {
  scope                = azurerm_storage_account.k6_cfg_sa.id
  role_definition_name = "Storage File Data SMB Share Contributor"
  principal_id         = azurerm_user_assigned_identity.uai.principal_id
}

resource "azurerm_storage_account" "k6_cfg_sa" {
  account_replication_type         = "LRS"
  account_tier                     = "Standard"
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false
  location                         = "eastus"
  name                             = "k6cfgsa${var.rg_data.suffix}"
  resource_group_name              = var.rg_data.name
  tags                             = var.rg_data.tags
}

// NOTE: we're specific about SMB protocol even though it's the default,
// because rely on it for the az command (and possibly more) to work
resource "azurerm_storage_share" "k6_cfg_share" {
  name                 = "${var.rg_data.prefix}-k6-cfg-share-${var.rg_data.suffix}"
  quota                = 1024
  storage_account_name = azurerm_storage_account.k6_cfg_sa.name
  enabled_protocol     = "SMB"
}

resource "azurerm_storage_share_file" "k6_cfg_file" {
  name             = "loadtest.js"
  storage_share_id = azurerm_storage_share.k6_cfg_share.id
  source           = "${path.module}/loadtest.js"
}
