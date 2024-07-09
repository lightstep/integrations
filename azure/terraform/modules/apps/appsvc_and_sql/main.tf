
resource "azurerm_app_service_plan" "svc_plan" {
  name                = "${var.rg_data.prefix}-app-service-plan-${var.rg_data.suffix}"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "svc" {
  name                = "app-service-terraform"
  location            = var.rg_data.location
  resource_group_name = var.rg_data.name
  app_service_plan_id = azurerm_app_service_plan.svc_plan.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "akey"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=tcp:${azurerm_sql_server.svr.fully_qualified_domain_name} Database=${azurerm_sql_database.sqldb.name};User ID=${azurerm_sql_server.svr.administrator_login};Password=${azurerm_sql_server.svr.administrator_login_password};Trusted_Connection=False;Encrypt=True;"
  }
}

resource "azurerm_sql_server" "svr" {
  name                         = "svr"
  resource_group_name          = var.rg_data.name
  location                     = var.rg_data.location
  version                      = "12.0"
  administrator_login          = "demo_user"
  administrator_login_password = "g0Tt4#b@D!p@$$w04d"
}

resource "azurerm_sql_database" "sqldb" {
  name                = "${var.rg_data.prefix}-sqldb-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  location            = var.rg_data.location
  server_name         = azurerm_sql_server.svr.name

  tags = var.rg_data.tags
}
