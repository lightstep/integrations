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
  description = "OpenTelemetry Collector Synapse_workspaces_bigdatapools Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Synapse_workspaces_bigdatapools Metrics"
  dashboard_description = "Monitor Synapse_workspaces_bigdatapools with this metrics overview dashboard."

  chart {
    name = "azure_bigdatapoolallocatedcores_maximum"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bigdatapoolallocatedcores_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_submitterid == $metadata_submitterid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bigdatapoolallocatedmemory_maximum"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bigdatapoolallocatedmemory_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_submitterid == $metadata_submitterid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bigdatapoolapplicationsactive_maximum"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bigdatapoolapplicationsactive_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_jobstate == $metadata_jobstate) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bigdatapoolapplicationsended_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bigdatapoolapplicationsended_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_jobtype == $metadata_jobtype)   &&  (metadata_jobresult == $metadata_jobresult) )  | delta | group_by [], sum
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
    name                     = "metadata_jobresult"
    default_values           = []
    suggestion_attribute_key = "metadata_jobresult"
  }

  template_variable {
    name                     = "metadata_jobstate"
    default_values           = []
    suggestion_attribute_key = "metadata_jobstate"
  }

  template_variable {
    name                     = "metadata_jobtype"
    default_values           = []
    suggestion_attribute_key = "metadata_jobtype"
  }

  template_variable {
    name                     = "metadata_submitterid"
    default_values           = []
    suggestion_attribute_key = "metadata_submitterid"
  }


}