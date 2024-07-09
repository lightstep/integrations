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
| [azurerm_container_group.k6grp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_group) | resource |
| [azurerm_cosmosdb_account.cosmos_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_account) | resource |
| [azurerm_cosmosdb_sql_database.cosmos_sqldb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_sql_database) | resource |
| [azurerm_storage_account.cosmos_cfgs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_share.cosmos_cfg_share](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share) | resource |
| [azurerm_storage_share_file.cosmos_cfg_file](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share_file) | resource |

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
