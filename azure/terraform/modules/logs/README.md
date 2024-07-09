## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_app.otelcol_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app) | resource |
| [azurerm_container_app.semconv_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app) | resource |
| [azurerm_container_app_environment.container_app_env](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment) | resource |
| [azurerm_container_app_environment_storage.otelcol_cfg_storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment_storage) | resource |
| [azurerm_container_app_environment_storage.scc_cfg_storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment_storage) | resource |
| [azurerm_eventhub.eh_activity_logs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub) | resource |
| [azurerm_eventhub.eh_resource_logs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub) | resource |
| [azurerm_eventhub_authorization_rule.eh_activity_logs_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |
| [azurerm_eventhub_authorization_rule.eh_insights_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |
| [azurerm_eventhub_authorization_rule.eh_resource_logs_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |
| [azurerm_eventhub_namespace.ehn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_namespace) | resource |
| [azurerm_eventhub_namespace_authorization_rule.ehn_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_namespace_authorization_rule) | resource |
| [azurerm_monitor_log_profile.log_profile](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_log_profile) | resource |
| [azurerm_role_assignment.scc_cfg_storage_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.configs_sa](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_share.otelcol_cfg_share](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share) | resource |
| [azurerm_storage_share.scc_cfg_share](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share) | resource |
| [azurerm_storage_share_file.otelcol_cfg_share_file](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share_file) | resource |
| [azurerm_storage_share_file.scc_cfg_share_file](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share_file) | resource |
| [azurerm_user_assigned_identity.uai](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_collector_configs_dir"></a> [collector\_configs\_dir](#input\_collector\_configs\_dir) | n/a | `string` | `"../../collector-configs"` | no |
| <a name="input_rg_data"></a> [rg\_data](#input\_rg\_data) | The resource group config object | <pre>object({<br>    name     = string<br>    prefix   = string<br>    suffix   = string<br>    location = string<br>    tags     = map(string)<br>  })</pre> | n/a | yes |
| <a name="input_secret_ls_access_token"></a> [secret\_ls\_access\_token](#input\_secret\_ls\_access\_token) | The log service access token | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_activity_logs_auth_rule"></a> [activity\_logs\_auth\_rule](#output\_activity\_logs\_auth\_rule) | The Event Hub Authorization Rule object for activity logs |
| <a name="output_container_app_environment"></a> [container\_app\_environment](#output\_container\_app\_environment) | The Container App Environment object |
| <a name="output_container_app_otelcol"></a> [container\_app\_otelcol](#output\_container\_app\_otelcol) | The Container App object for the OpenTelemetry Collector |
| <a name="output_container_app_scc"></a> [container\_app\_scc](#output\_container\_app\_scc) | The Container App object for the Smart Configuration Collector |
| <a name="output_eventhub_activity_logs_auth_rule_id"></a> [eventhub\_activity\_logs\_auth\_rule\_id](#output\_eventhub\_activity\_logs\_auth\_rule\_id) | The Event Hub Authorization Rule object for activity logs |
| <a name="output_eventhub_activity_logs_connection_string"></a> [eventhub\_activity\_logs\_connection\_string](#output\_eventhub\_activity\_logs\_connection\_string) | The connection string for the Event Hub |
| <a name="output_eventhub_activity_logs_name"></a> [eventhub\_activity\_logs\_name](#output\_eventhub\_activity\_logs\_name) | The name of the Event Hub for metrics |
| <a name="output_eventhub_authorization_rule_id"></a> [eventhub\_authorization\_rule\_id](#output\_eventhub\_authorization\_rule\_id) | ID for the Event Hub Authorization Rule |
| <a name="output_eventhub_namespace"></a> [eventhub\_namespace](#output\_eventhub\_namespace) | The Event Hub Namespace object |
| <a name="output_eventhub_resource_logs_connection_string"></a> [eventhub\_resource\_logs\_connection\_string](#output\_eventhub\_resource\_logs\_connection\_string) | The connection string for the Event Hub |
| <a name="output_eventhub_resource_logs_name"></a> [eventhub\_resource\_logs\_name](#output\_eventhub\_resource\_logs\_name) | The name of the Event Hub for logs |
| <a name="output_scc_fqdn"></a> [scc\_fqdn](#output\_scc\_fqdn) | The FQDN for the Container App |
| <a name="output_scc_latest_revision_fqdn"></a> [scc\_latest\_revision\_fqdn](#output\_scc\_latest\_revision\_fqdn) | The endpoint for the Semantic Convention Checker |
| <a name="output_scc_name"></a> [scc\_name](#output\_scc\_name) | The name of the Semantic Convention Checker |
| <a name="output_storage_account"></a> [storage\_account](#output\_storage\_account) | The Storage Account object |
| <a name="output_storage_account_connection_string"></a> [storage\_account\_connection\_string](#output\_storage\_account\_connection\_string) | The connection string for the Storage Account |
