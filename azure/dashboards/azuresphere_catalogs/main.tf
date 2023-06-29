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
  description = "OpenTelemetry Collector Azuresphere_catalogs Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Azuresphere_catalogs Metrics"
  dashboard_description = "Monitor Azuresphere_catalogs with this metrics overview dashboard."

  chart {
    name = "azure_deviceeventscount_count"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deviceeventscount_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_eventcategory == $metadata_eventcategory)   &&  (metadata_eventclass == $metadata_eventclass)   &&  (metadata_eventtype == $metadata_eventtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_devicerequestscount_count"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_devicerequestscount_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_resulttype == $metadata_resulttype) )  | delta | group_by [], sum
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
    name                     = "metadata_deviceid"
    default_values           = []
    suggestion_attribute_key = "metadata_deviceid"
  }

  template_variable {
    name                     = "metadata_eventcategory"
    default_values           = []
    suggestion_attribute_key = "metadata_eventcategory"
  }

  template_variable {
    name                     = "metadata_eventclass"
    default_values           = []
    suggestion_attribute_key = "metadata_eventclass"
  }

  template_variable {
    name                     = "metadata_eventtype"
    default_values           = []
    suggestion_attribute_key = "metadata_eventtype"
  }

  template_variable {
    name                     = "metadata_operationname"
    default_values           = []
    suggestion_attribute_key = "metadata_operationname"
  }

  template_variable {
    name                     = "metadata_resulttype"
    default_values           = []
    suggestion_attribute_key = "metadata_resulttype"
  }


}