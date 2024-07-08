
/* cosmos */

resource "azurerm_cosmosdb_account" "cosmos_account" {
  name                = "${var.rg_data.prefix}-cosmos_account-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"
  consistency_policy {
    consistency_level = "Session"
  }
  geo_location {
    location          = var.rg_data.location
    failover_priority = 0
  }
}

resource "azurerm_cosmosdb_sql_database" "cosmos_sqldb" {
  name                = "${var.rg_data.prefix}-cosmos_sqldb-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  account_name        = azurerm_cosmosdb_account.cosmos_account.name
}

/* storage */

resource "azurerm_storage_account" "cosmos_cfgs" {
  name                     = "${var.rg_data.prefix}cosmoscfg${var.rg_data.suffix}"
  resource_group_name      = var.rg_data.name
  location                 = var.rg_data.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_share" "cosmos_cfg_share" {
  name                 = "cosmoscfg"
  storage_account_name = azurerm_storage_account.cosmos_cfgs.name
  quota                = 1
}

resource "azurerm_storage_share_file" "cosmos_cfg_file" {
  name             = "cosmoscfg"
  storage_share_id = azurerm.storage_share.cosmos_cfg_share.id
  source           = "loadtest.js"
}

/* container instance */

resource "azurerm_container_group" "k6grp" {
  name                = "${var.rg_data.prefix}-k6grp-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
  os_type             = "Linux"
  container {
    name   = "k6"
    image  = "loadimpact/k6"
    cpu    = "1.0"
    memory = "1.5"
    ports {
      port     = 80
      protocol = "TCP"
    }
    commands = [
      "run",
      "--vus", "10",
      "--duration", "30s",
      "-e", "COSMOSDB_ENDPOINT=${azurerm_cosmosdb_account.cosmos_account.endpoint}",
      "-e", "COSMOSDB_KEY=${azurerm_cosmosdb_account.cosmos_account.primary_master_key}",
      "-e", "COSMOSDB_DB=${azurerm_cosmosdb_sql_database.cosmos_sqldb.name}",
      "-e", "COSMOSDB_COLLECTION=k6",
      "/mnt/loadtest/loadtest.js"
    ]
    environment_variables = {
      "K6_COSMOSDB_ENDPOINT"   = azurerm_cosmosdb_account.cosmos_account.endpoint
      "K6_COSMOSDB_KEY"        = azurerm_cosmosdb_account.cosmos_account.primary_master_key
      "K6_COSMOSDB_DB"         = azurerm_cosmosdb_sql_database.cosmos_sqldb.name
      "K6_COSMOSDB_COLLECTION" = "k6"
    }
    volume {
      name       = "cosmoscfg"
      mount_path = "/mnt/loadtest"
      read_only  = true

      share_name           = azurerm_storage_share.cosmos_cfg_share.name
      storage_account_name = azurerm_storage_account.cosmos_cfgs.name
    }
  }
  tags = var.rg_data.tags
}
