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
  description = "OpenTelemetry Collector Devices_provisioningservices Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Devices_provisioningservices Metrics"
  dashboard_description = "Monitor Devices_provisioningservices with this metrics overview dashboard."

  chart {
    name = "azure_attestationattempts_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_attestationattempts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_provisioningservicename == $metadata_provisioningservicename)   &&  (metadata_status == $metadata_status)   &&  (metadata_protocol == $metadata_protocol) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deviceassignments_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deviceassignments_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_provisioningservicename == $metadata_provisioningservicename)   &&  (metadata_iothubname == $metadata_iothubname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_registrationattempts_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_registrationattempts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_provisioningservicename == $metadata_provisioningservicename)   &&  (metadata_iothubname == $metadata_iothubname)   &&  (metadata_status == $metadata_status) )  | delta | group_by [], sum
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
    name                     = "metadata_iothubname"
    default_values           = []
    suggestion_attribute_key = "metadata_iothubname"
  }

  template_variable {
    name                     = "metadata_protocol"
    default_values           = []
    suggestion_attribute_key = "metadata_protocol"
  }

  template_variable {
    name                     = "metadata_provisioningservicename"
    default_values           = []
    suggestion_attribute_key = "metadata_provisioningservicename"
  }

  template_variable {
    name                     = "metadata_status"
    default_values           = []
    suggestion_attribute_key = "metadata_status"
  }


}