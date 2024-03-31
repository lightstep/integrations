terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.93.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
  required_version = ">= 0.14.9"
}

// TODO: remove literal references to app name (sgc) and environment (staging)

provider "azurerm" {
  features {}
}

resource "random_id" "id" {
  byte_length = 3
}

locals {
  suffix = random_id.id.hex
}

// Currently putting everything in a single resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.rg_conf.prefix}-rg-${local.suffix}"
  location = var.rg_conf.location
  tags     = var.rg_conf.tags
}

locals {
  rg_data = {
    name     = azurerm_resource_group.rg.name
    prefix   = "staging-sgc"
    suffix   = local.suffix
    location = azurerm_resource_group.rg.location
    tags     = azurerm_resource_group.rg.tags
  }
}

module "logs" {
  source                 = "./modules/logs"
  rg_data                = local.rg_data
  secret_ls_access_token = var.secret_ls_access_token
}

data "azurerm_monitor_diagnostic_categories" "storage_accounts_diag_categories" {
  resource_id = module.logs.storage_account.id
}

// Sending diagnostics on monitoring infra to that monitoring infra. So it's kinda
// like the meta environment.
module "storage_accounts_logs_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-storage_accounts_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.storage_account.id

  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  eventhub_logs_name             = module.logs.eventhub_logs_name
  eventhub_metrics_name          = module.logs.eventhub_metrics_name

  metrics_categories = data.azurerm_monitor_diagnostic_categories.storage_accounts_diag_categories.metrics
  log_categories     = data.azurerm_monitor_diagnostic_categories.storage_accounts_diag_categories.log_category_types
  has_logs           = true
  has_metrics        = true
}

data "azurerm_monitor_diagnostic_categories" "container_app_environment_diag_categories" {
  resource_id = module.logs.container_app_environment.id
}

module "container_app_env_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-container_app_env_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.container_app_environment.id

  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  eventhub_logs_name             = module.logs.eventhub_logs_name
  eventhub_metrics_name          = module.logs.eventhub_metrics_name

  metrics_categories = data.azurerm_monitor_diagnostic_categories.container_app_environment_diag_categories.metrics
  log_categories     = data.azurerm_monitor_diagnostic_categories.container_app_environment_diag_categories.log_category_types
  has_logs           = true
  has_metrics        = true
}

data "azurerm_monitor_diagnostic_categories" "scc_categories" {
  resource_id = module.logs.container_app_scc.id
}

module "container_app_scc_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-container_app_scc_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.container_app_scc.id

  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  eventhub_logs_name             = module.logs.eventhub_logs_name
  eventhub_metrics_name          = module.logs.eventhub_metrics_name

  metrics_categories = data.azurerm_monitor_diagnostic_categories.scc_categories.metrics
  log_categories     = data.azurerm_monitor_diagnostic_categories.scc_categories.log_category_types
  has_metrics        = true
  has_logs           = true
}

data "azurerm_monitor_diagnostic_categories" "container_app_otelcol_categories" {
  resource_id = module.logs.container_app_otelcol.id
}

module "container_app_otelcol_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-container_app_otelcol_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.container_app_otelcol.id

  eventhub_logs_name             = module.logs.eventhub_logs_name
  eventhub_metrics_name          = module.logs.eventhub_metrics_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id

  metrics_categories = data.azurerm_monitor_diagnostic_categories.container_app_otelcol_categories.metrics
  log_categories     = data.azurerm_monitor_diagnostic_categories.container_app_otelcol_categories.log_category_types
  has_logs           = true
  has_metrics        = true
}

data "azurerm_monitor_diagnostic_categories" "eventhub_namespace_diag_categories" {
  resource_id = module.logs.eventhub_namespace.id
}

module "eventhub_namespace_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-eventhub_namespace_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.eventhub_namespace.id

  // log_analytics_workspace_id = module.logs.log_analytics_workspace.id
  eventhub_logs_name             = module.logs.eventhub_logs_name
  eventhub_metrics_name          = module.logs.eventhub_metrics_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id

  metrics_categories = data.azurerm_monitor_diagnostic_categories.eventhub_namespace_diag_categories.metrics
  log_categories     = data.azurerm_monitor_diagnostic_categories.eventhub_namespace_diag_categories.log_category_types
  has_logs           = true
  has_metrics        = true
}

module "compute" { // rg_data is a map of name, location, resource_prefix, and common_tags
  // we'll mostly use rg_conf to get these values
  source  = "./modules/apps/compute"
  rg_data = local.rg_data
}

data "azurerm_monitor_diagnostic_categories" "vm_diag_categories" {
  resource_id = module.compute.virtual_machine.id
}

// diagnostic settings for the VM exports all available categories
module "vm_diags" {
  source                = "./modules/diagnostic_settings"
  name                  = "${local.rg_data.prefix}-vm_diags-${local.rg_data.suffix}"
  target_resource_id    = module.compute.virtual_machine.id
  eventhub_logs_name    = module.logs.eventhub_logs_name
  eventhub_metrics_name = module.logs.eventhub_metrics_name

  // log_analytics_workspace_id = module.logs.log_analytics_workspace.id
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  metrics_categories             = data.azurerm_monitor_diagnostic_categories.vm_diag_categories.metrics
  log_categories                 = data.azurerm_monitor_diagnostic_categories.vm_diag_categories.log_category_types
  has_logs                       = true
  has_metrics                    = true
}

data "azurerm_monitor_diagnostic_categories" "nsg_diag_categories" {
  resource_id = module.compute.network_security_group.id
}

// For this one only logs, because azurerm says "metric export is not enabled"
module "nsg_diags" {
  source                = "./modules/diagnostic_settings"
  name                  = "${local.rg_data.prefix}-nsg_diags-${local.rg_data.suffix}"
  target_resource_id    = module.compute.network_security_group.id
  eventhub_logs_name    = module.logs.eventhub_logs_name
  eventhub_metrics_name = module.logs.eventhub_metrics_name

  // log_analytics_workspace_id = module.logs.log_analytics_workspace.id
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  metrics_categories             = data.azurerm_monitor_diagnostic_categories.nsg_diag_categories.metrics
  log_categories                 = data.azurerm_monitor_diagnostic_categories.nsg_diag_categories.log_category_types
  has_logs                       = true
  has_metrics                    = true
}

data "azurerm_monitor_diagnostic_categories" "pip_diags" {
  resource_id = module.compute.public_ip.id
}

module "pip_diags" {
  source                = "./modules/diagnostic_settings"
  name                  = "${local.rg_data.prefix}-pip_diags-${local.rg_data.suffix}"
  target_resource_id    = module.compute.public_ip.id
  eventhub_logs_name    = module.logs.eventhub_logs_name
  eventhub_metrics_name = module.logs.eventhub_metrics_name

  // log_analytics_workspace_id = module.logs.log_analytics_workspace.id
  // eventhub_name                  = module.logs.eventhub.name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  metrics_categories             = data.azurerm_monitor_diagnostic_categories.pip_diags.metrics
  log_categories                 = data.azurerm_monitor_diagnostic_categories.pip_diags.log_category_types

  has_logs    = true
  has_metrics = true
}

data "azurerm_monitor_diagnostic_categories" "nic_diag_categories" {
  resource_id = module.compute.primary_nic.id
}

module "nic_diags" {
  source                = "./modules/diagnostic_settings"
  name                  = "${local.rg_data.prefix}-nic_diags-${local.rg_data.suffix}"
  target_resource_id    = module.compute.primary_nic.id
  eventhub_logs_name    = module.logs.eventhub_logs_name
  eventhub_metrics_name = module.logs.eventhub_metrics_name

  // log_analytics_workspace_id = module.logs.log_analytics_workspace.id
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  metrics_categories             = data.azurerm_monitor_diagnostic_categories.nic_diag_categories.metrics
  log_categories                 = data.azurerm_monitor_diagnostic_categories.nic_diag_categories.log_category_types
  has_logs                       = true
  has_metrics                    = true
}

data "azurerm_monitor_diagnostic_categories" "vnet_diags" {
  resource_id = module.compute.virtual_network.id
}

module "vnet_diags" {
  source                = "./modules/diagnostic_settings"
  name                  = "${local.rg_data.prefix}-vnet_diags-${local.rg_data.suffix}"
  target_resource_id    = module.compute.virtual_network.id
  eventhub_logs_name    = module.logs.eventhub_logs_name
  eventhub_metrics_name = module.logs.eventhub_metrics_name

  // log_analytics_workspace_id = module.logs.log_analytics_workspace.id
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  metrics_categories             = data.azurerm_monitor_diagnostic_categories.vnet_diags.metrics
  log_categories                 = data.azurerm_monitor_diagnostic_categories.vnet_diags.log_category_types
  has_logs                       = true
  has_metrics                    = true
}

module "appsvc_and_sql" {
  source  = "./modules/apps/appsvc_and_sql"
  rg_data = local.rg_data

}

data "azurerm_monitor_diagnostic_categories" "appsvc_diag_categories" {
  resource_id = module.appsvc_and_sql.app_svc.id
}

module "appsvc_diags" {
  source                = "./modules/diagnostic_settings"
  name                  = "${local.rg_data.prefix}-appsvc_diags-${local.rg_data.suffix}"
  target_resource_id    = module.appsvc_and_sql.app_svc.id
  eventhub_logs_name    = module.logs.eventhub_logs_name
  eventhub_metrics_name = module.logs.eventhub_metrics_name
  // log_analytics_workspace_id = module.logs.log_analytics_workspace.id
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  metrics_categories             = data.azurerm_monitor_diagnostic_categories.appsvc_diag_categories.metrics
  log_categories                 = data.azurerm_monitor_diagnostic_categories.appsvc_diag_categories.log_category_types
  has_logs                       = true
  has_metrics                    = true
}

data "azurerm_monitor_diagnostic_categories" "sqldb_diag_categories" {
  resource_id = module.appsvc_and_sql.sqldb.id
}

module "sqldb_diags" {
  source                         = "./modules/diagnostic_settings"
  name                           = "${local.rg_data.prefix}-sqldb_diags-${local.rg_data.suffix}"
  target_resource_id             = module.appsvc_and_sql.sqldb.id
  eventhub_logs_name             = module.logs.eventhub_logs_name
  eventhub_metrics_name          = module.logs.eventhub_metrics_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id

  metrics_categories = data.azurerm_monitor_diagnostic_categories.sqldb_diag_categories.metrics
  log_categories     = data.azurerm_monitor_diagnostic_categories.sqldb_diag_categories.log_category_types

  has_logs    = true
  has_metrics = true
}

data "azurerm_monitor_diagnostic_categories" "sqlsvr_diag_categories" {
  resource_id = module.appsvc_and_sql.sqlsvr.id
}

module "sqlsvr_diags" {
  source                         = "./modules/diagnostic_settings"
  name                           = "${local.rg_data.prefix}-sqlsvr_diags-${local.rg_data.suffix}"
  target_resource_id             = module.appsvc_and_sql.sqlsvr.id
  eventhub_logs_name             = module.logs.eventhub_logs_name
  eventhub_metrics_name          = module.logs.eventhub_metrics_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id

  metrics_categories = data.azurerm_monitor_diagnostic_categories.sqlsvr_diag_categories.metrics
  log_categories     = data.azurerm_monitor_diagnostic_categories.sqlsvr_diag_categories.log_category_types

  has_logs    = true
  has_metrics = true
}

module "load_balancer" {
  source = "./modules/apps/load_balancer"

  rg_data                   = local.rg_data
  admin_username            = "adminuser"
  admin_password            = "P4ssw0rd#!1234!"
  container_group_name      = "${local.rg_data.prefix}-container-group-${local.suffix}"
  load_balancer_name        = "${local.rg_data.prefix}-lb-${local.suffix}"
  public_ip_name            = "${local.rg_data.prefix}-pip-${local.suffix}"
  subnet_name               = "${local.rg_data.prefix}-subnet-${local.suffix}"
  virtual_network_name      = "${local.rg_data.prefix}-vnet-${local.suffix}"
  backend_address_pool_name = "${local.rg_data.prefix}-backend-pool-${local.suffix}"
  load_balancer_rule_name   = "${local.rg_data.prefix}-lb-rule-${local.suffix}"
  storage_account_name      = "stglb${local.suffix}"
}

data "azurerm_monitor_diagnostic_categories" "lb_diag_categories" {
  resource_id = module.load_balancer.lb.id
}

module "lb_diags" {
  source                = "./modules/diagnostic_settings"
  name                  = "${local.rg_data.prefix}-lb_diags-${local.suffix}"
  target_resource_id    = module.load_balancer.lb.id
  eventhub_logs_name    = module.logs.eventhub_logs_name
  eventhub_metrics_name = module.logs.eventhub_metrics_name

  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
  metrics_categories             = data.azurerm_monitor_diagnostic_categories.lb_diag_categories.metrics
  log_categories                 = data.azurerm_monitor_diagnostic_categories.lb_diag_categories.log_category_types
  has_logs                       = true
  has_metrics                    = true
}
