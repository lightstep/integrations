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
  description = "OpenTelemetry Collector Botservice_listauthserviceproviders Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Botservice_listauthserviceproviders Metrics"
  dashboard_description = "Monitor Botservice_listauthserviceproviders with this metrics overview dashboard."

  chart {
    name = "azure_requestlatency_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requestlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_authentication == $metadata_authentication)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_resourceid == $metadata_resourceid)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requeststraffic_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requeststraffic_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_authentication == $metadata_authentication)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_resourceid == $metadata_resourceid)   &&  (metadata_region == $metadata_region)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass)   &&  (metadata_statustext == $metadata_statustext) )  | delta | group_by [], sum
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
    name                     = "metadata_authentication"
    default_values           = []
    suggestion_attribute_key = "metadata_authentication"
  }

  template_variable {
    name                     = "metadata_operation"
    default_values           = []
    suggestion_attribute_key = "metadata_operation"
  }

  template_variable {
    name                     = "metadata_protocol"
    default_values           = []
    suggestion_attribute_key = "metadata_protocol"
  }

  template_variable {
    name                     = "metadata_region"
    default_values           = []
    suggestion_attribute_key = "metadata_region"
  }

  template_variable {
    name                     = "metadata_resourceid"
    default_values           = []
    suggestion_attribute_key = "metadata_resourceid"
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
    name                     = "metadata_statustext"
    default_values           = []
    suggestion_attribute_key = "metadata_statustext"
  }


}