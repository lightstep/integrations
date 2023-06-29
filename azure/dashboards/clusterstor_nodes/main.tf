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
  description = "OpenTelemetry Collector Clusterstor_nodes Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Clusterstor_nodes Metrics"
  dashboard_description = "Monitor Clusterstor_nodes with this metrics overview dashboard."

  chart {
    name = "azure_totalcapacityavailable_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalcapacityavailable_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_filesystem_name == $metadata_filesystem_name)   &&  (metadata_category == $metadata_category)   &&  (metadata_system == $metadata_system) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalcapacityused_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalcapacityused_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_filesystem_name == $metadata_filesystem_name)   &&  (metadata_category == $metadata_category)   &&  (metadata_system == $metadata_system) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalread_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalread_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_filesystem_name == $metadata_filesystem_name)   &&  (metadata_category == $metadata_category)   &&  (metadata_system == $metadata_system) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalwrite_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalwrite_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_filesystem_name == $metadata_filesystem_name)   &&  (metadata_category == $metadata_category)   &&  (metadata_system == $metadata_system) )  | delta | group_by [], sum
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
    name                     = "metadata_category"
    default_values           = []
    suggestion_attribute_key = "metadata_category"
  }

  template_variable {
    name                     = "metadata_filesystem_name"
    default_values           = []
    suggestion_attribute_key = "metadata_filesystem_name"
  }

  template_variable {
    name                     = "metadata_system"
    default_values           = []
    suggestion_attribute_key = "metadata_system"
  }


}