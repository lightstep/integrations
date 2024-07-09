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
| [azurerm_app_service.svc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service) | resource |
| [azurerm_app_service_plan.svc_plan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan) | resource |
| [azurerm_sql_database.sqldb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_database) | resource |
| [azurerm_sql_server.svr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rg_data"></a> [rg\_data](#input\_rg\_data) | The resource group data | <pre>object({<br>    location = string<br>    name     = string<br>    prefix   = string<br>    suffix   = string<br>    tags     = map(string)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_svc"></a> [app\_svc](#output\_app\_svc) | The App Service object |
| <a name="output_sqldb"></a> [sqldb](#output\_sqldb) | The SQL Database object |
| <a name="output_sqlsvr"></a> [sqlsvr](#output\_sqlsvr) | The SQL Server object |
