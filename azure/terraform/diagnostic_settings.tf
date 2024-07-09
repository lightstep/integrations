

module "container_app_env_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-container_app_env_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.container_app_environment.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

module "container_app_scc_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-container_app_scc_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.container_app_scc.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

module "container_app_otelcol_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-container_app_otelcol_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.container_app_otelcol.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}


module "eventhub_namespace_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-eventhub_namespace_diags-${local.rg_data.suffix}"
  target_resource_id = module.logs.eventhub_namespace.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

// diagnostic settings for the VM exports all available categories
module "vm_diags" {
  source                         = "./modules/diagnostic_settings"
  name                           = "${local.rg_data.prefix}-vm_diags-${local.rg_data.suffix}"
  target_resource_id             = module.compute.virtual_machine.id
  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

// For this one only logs, because azurerm says "metric export is not enabled"
module "nsg_diags" {
  source                         = "./modules/diagnostic_settings"
  name                           = "${local.rg_data.prefix}-nsg_diags-${local.rg_data.suffix}"
  target_resource_id             = module.compute.network_security_group.id
  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

module "pip_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-pip_diags-${local.rg_data.suffix}"
  target_resource_id = module.compute.public_ip.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

module "nic_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-nic_diags-${local.rg_data.suffix}"
  target_resource_id = module.compute.primary_nic.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}


module "vnet_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-vnet_diags-${local.rg_data.suffix}"
  target_resource_id = module.compute.virtual_network.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

module "appsvc_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-appsvc_diags-${local.rg_data.suffix}"
  target_resource_id = module.appsvc_and_sql.app_svc.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

module "sqldb_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-sqldb_diags-${local.rg_data.suffix}"
  target_resource_id = module.appsvc_and_sql.sqldb.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

module "sqlsvr_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-sqlsvr_diags-${local.rg_data.suffix}"
  target_resource_id = module.appsvc_and_sql.sqlsvr.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}

module "lb_diags" {
  source             = "./modules/diagnostic_settings"
  name               = "${local.rg_data.prefix}-lb_diags-${local.suffix}"
  target_resource_id = module.load_balancer.lb.id

  eventhub_name                  = module.logs.eventhub_resource_logs_name
  eventhub_authorization_rule_id = module.logs.eventhub_authorization_rule_id
}
