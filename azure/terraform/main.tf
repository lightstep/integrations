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

/*
// Send subscription activity logs to the event hub
module "subscription_activity_logs_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-subscription_activity_logs_diags-${local.rg_data.suffix}"
  target_resource_id = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"

  eventhub_name                  = module.logs.eventhub_activity_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}
*/

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
  eventhub_name                  = module.logs.eventhub_resource_logs_name

  log_categories = data.azurerm_monitor_diagnostic_categories.storage_accounts_diag_categories.log_category_types
  # has_logs           = true
  # has_metrics        = true
}
module "compute" { // rg_data is a map of name, location, resource_prefix, and common_tags
  // we'll mostly use rg_conf to get these values
  source  = "./modules/apps/compute"
  rg_data = local.rg_data
}

module "appsvc_and_sql" {
  source  = "./modules/apps/appsvc_and_sql"
  rg_data = local.rg_data

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
