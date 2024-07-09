## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.93.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.93.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_appsvc_and_sql"></a> [appsvc\_and\_sql](#module\_appsvc\_and\_sql) | ./modules/apps/appsvc_and_sql | n/a |
| <a name="module_appsvc_diags"></a> [appsvc\_diags](#module\_appsvc\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_compute"></a> [compute](#module\_compute) | ./modules/apps/compute | n/a |
| <a name="module_container_app_env_diags"></a> [container\_app\_env\_diags](#module\_container\_app\_env\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_container_app_otelcol_diags"></a> [container\_app\_otelcol\_diags](#module\_container\_app\_otelcol\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_container_app_scc_diags"></a> [container\_app\_scc\_diags](#module\_container\_app\_scc\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_eventhub_namespace_diags"></a> [eventhub\_namespace\_diags](#module\_eventhub\_namespace\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_lb_diags"></a> [lb\_diags](#module\_lb\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_load_balancer"></a> [load\_balancer](#module\_load\_balancer) | ./modules/apps/load_balancer | n/a |
| <a name="module_logs"></a> [logs](#module\_logs) | ./modules/logs | n/a |
| <a name="module_nic_diags"></a> [nic\_diags](#module\_nic\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_nsg_diags"></a> [nsg\_diags](#module\_nsg\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_pip_diags"></a> [pip\_diags](#module\_pip\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_sqldb_diags"></a> [sqldb\_diags](#module\_sqldb\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_sqlsvr_diags"></a> [sqlsvr\_diags](#module\_sqlsvr\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_storage_accounts_logs_diags"></a> [storage\_accounts\_logs\_diags](#module\_storage\_accounts\_logs\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_vm_diags"></a> [vm\_diags](#module\_vm\_diags) | ./modules/diagnostic_settings | n/a |
| <a name="module_vnet_diags"></a> [vnet\_diags](#module\_vnet\_diags) | ./modules/diagnostic_settings | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.93.0/docs/resources/resource_group) | resource |
| [random_id.id](https://registry.terraform.io/providers/hashicorp/random/3.6.0/docs/resources/id) | resource |
| [azurerm_monitor_diagnostic_categories.storage_accounts_diag_categories](https://registry.terraform.io/providers/hashicorp/azurerm/3.93.0/docs/data-sources/monitor_diagnostic_categories) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rg_conf"></a> [rg\_conf](#input\_rg\_conf) | Resource group config object - also used extensively for resources within the resource group. | <pre>object({<br>    prefix   = string<br>    location = string<br>    tags     = map(string)<br>  })</pre> | <pre>{<br>  "location": "eastus",<br>  "prefix": "staging-sgc",<br>  "tags": {<br>    "env": "staging",<br>    "proj": "sgc"<br>  }<br>}</pre> | no |
| <a name="input_secret_ls_access_token"></a> [secret\_ls\_access\_token](#input\_secret\_ls\_access\_token) | go ahead and treat this as a secret since it's not public, but security policy doesn't require it | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_scc_fqdn"></a> [scc\_fqdn](#output\_scc\_fqdn) | The FQDN for the Container App |
| <a name="output_scc_latest_revision_fqdn"></a> [scc\_latest\_revision\_fqdn](#output\_scc\_latest\_revision\_fqdn) | The endpoint for the Semantic Convention Checker |
| <a name="output_scc_name"></a> [scc\_name](#output\_scc\_name) | The FQDN for the Container App |
| <a name="output_storage_account_connection_string"></a> [storage\_account\_connection\_string](#output\_storage\_account\_connection\_string) | The connection string for the Storage Account |
