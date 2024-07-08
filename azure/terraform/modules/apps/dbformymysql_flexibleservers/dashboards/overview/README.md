## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= v1.0.11 |
| <a name="requirement_lightstep"></a> [lightstep](#requirement\_lightstep) | ~> 1.86.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_lightstep"></a> [lightstep](#provider\_lightstep) | ~> 1.86.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [lightstep_dashboard.azure_dbformysql_flexibleservers_overview](https://registry.terraform.io/providers/lightstep/lightstep/latest/docs/resources/dashboard) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_lightstep_project"></a> [lightstep\_project](#input\_lightstep\_project) | ServiceNow Cloud Observability Project Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dashboard_url"></a> [dashboard\_url](#output\_dashboard\_url) | OpenTelemetry Collector MySQL Flexible Servers Dashboard URL |
