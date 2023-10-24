terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.84.2"
    }
  }
  required_version = ">= v1.0.11"
}

variable "lightstep_project" {
  description = "Cloud Observability Project Name"
  type        = string
}

output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.azure_keyvault_vaults_overview.id}"
  description = "OpenTelemetry Collector Key Vault Vaults Dashboard URL"
}

resource "lightstep_dashboard" "azure_keyvault_vaults_overview" {
  project_name          = var.lightstep_project
  dashboard_name        = "Key Vault Vaults Metrics"
  dashboard_description = "[Beta] Monitor Key Vault Vaults with this metrics overview dashboard."

  chart {
    name = "Overall Vault Availability"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availability_average | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_activitytype == $metadata_activitytype) && (metadata_activityname == $metadata_activityname) && (metadata_statuscode == $metadata_statuscode) && (metadata_statuscodeclass == $metadata_statuscodeclass)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Overall Vault Saturation"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_saturationshoebox_average | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_activitytype == $metadata_activitytype) && (metadata_activityname == $metadata_activityname) && (metadata_transactiontype == $metadata_transactiontype)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Total Service Api Hits"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serviceapihit_count | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_activitytype == $metadata_activitytype) && (metadata_activityname == $metadata_activityname)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Total Service Api Results"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serviceapiresult_count | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_activitytype == $metadata_activitytype) && (metadata_activityname == $metadata_activityname) && (metadata_statuscode == $metadata_statuscode) && (metadata_statuscodeclass == $metadata_statuscodeclass)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Overall Service Api Latency"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serviceapilatency_average | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_activitytype == $metadata_activitytype) && (metadata_activityname == $metadata_activityname) && (metadata_statuscode == $metadata_statuscode) && (metadata_statuscodeclass == $metadata_statuscodeclass)) | delta | group_by [], sum
EOT
    }
  }

  template_variable {
    name                     = "azuremonitor_resource_id"
    default_values           = []
    suggestion_attribute_key = "azuremonitor.resource_id"
  }

  template_variable {
    name                     = "azuremonitor_subscription_id"
    default_values           = []
    suggestion_attribute_key = "azuremonitor.subscription_id"
  }

  template_variable {
    name                     = "azuremonitor_tenant_id"
    default_values           = []
    suggestion_attribute_key = "azuremonitor.tenant_id"
  }

  template_variable {
    name                     = "location"
    default_values           = []
    suggestion_attribute_key = "location"
  }

  template_variable {
    name                     = "metadata_activityname"
    default_values           = []
    suggestion_attribute_key = "metadata_activityname"
  }

  template_variable {
    name                     = "metadata_activitytype"
    default_values           = []
    suggestion_attribute_key = "metadata_activitytype"
  }

  template_variable {
    name                     = "metadata_statuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscode"
  }

  template_variable {
    name                     = "metadata_statuscodeclass"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscodeclass"
  }

  template_variable {
    name                     = "metadata_transactiontype"
    default_values           = []
    suggestion_attribute_key = "metadata_transactiontype"
  }
}
