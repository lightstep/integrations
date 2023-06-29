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
  description = "OpenTelemetry Collector Dataprotection_backupvaults Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Dataprotection_backupvaults Metrics"
  dashboard_description = "Monitor Dataprotection_backupvaults with this metrics overview dashboard."

  chart {
    name = "azure_backuphealthevent_count"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backuphealthevent_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datasourceurl == $metadata_datasourceurl)   &&  (metadata_backupinstanceurl == $metadata_backupinstanceurl)   &&  (metadata_datasourcetype == $metadata_datasourcetype)   &&  (metadata_healthstatus == $metadata_healthstatus)   &&  (metadata_backupinstancename == $metadata_backupinstancename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_restorehealthevent_count"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_restorehealthevent_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datasourceurl == $metadata_datasourceurl)   &&  (metadata_backupinstanceurl == $metadata_backupinstanceurl)   &&  (metadata_datasourcetype == $metadata_datasourcetype)   &&  (metadata_healthstatus == $metadata_healthstatus)   &&  (metadata_backupinstancename == $metadata_backupinstancename) )  | delta | group_by [], sum
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
    name                     = "metadata_backupinstancename"
    default_values           = []
    suggestion_attribute_key = "metadata_backupinstancename"
  }

  template_variable {
    name                     = "metadata_backupinstanceurl"
    default_values           = []
    suggestion_attribute_key = "metadata_backupinstanceurl"
  }

  template_variable {
    name                     = "metadata_datasourcetype"
    default_values           = []
    suggestion_attribute_key = "metadata_datasourcetype"
  }

  template_variable {
    name                     = "metadata_datasourceurl"
    default_values           = []
    suggestion_attribute_key = "metadata_datasourceurl"
  }

  template_variable {
    name                     = "metadata_healthstatus"
    default_values           = []
    suggestion_attribute_key = "metadata_healthstatus"
  }


}