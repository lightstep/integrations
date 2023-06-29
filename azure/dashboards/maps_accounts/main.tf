terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.76.0"
    }
  }
  required_version = ">= v1.0.11"
}

variable "lightstep_project" {
  description = "Lightstep Project Name"
  type        = string
}

output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.otel_collector_dashboard.id}"
  description = "OpenTelemetry Collector Maps_accounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Maps_accounts Metrics"
  dashboard_description = "Monitor Maps_accounts with this metrics overview dashboard."

  chart {
    name = "azure_availability_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availability_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apicategory == $metadata_apicategory)   &&  (metadata_apiname == $metadata_apiname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_usage_count"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_usage_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apicategory == $metadata_apicategory)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_resulttype == $metadata_resulttype)   &&  (metadata_responsecode == $metadata_responsecode) )  | delta | group_by [], sum
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
    name                     = "metadata_apicategory"
    default_values           = []
    suggestion_attribute_key = "metadata_apicategory"
  }

  template_variable {
    name                     = "metadata_apiname"
    default_values           = []
    suggestion_attribute_key = "metadata_apiname"
  }

  template_variable {
    name                     = "metadata_responsecode"
    default_values           = []
    suggestion_attribute_key = "metadata_responsecode"
  }

  template_variable {
    name                     = "metadata_resulttype"
    default_values           = []
    suggestion_attribute_key = "metadata_resulttype"
  }


}