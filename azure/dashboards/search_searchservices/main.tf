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
  description = "OpenTelemetry Collector Search_searchservices Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Search_searchservices Metrics"
  dashboard_description = "Monitor Search_searchservices with this metrics overview dashboard."

  chart {
    name = "azure_documentsprocessedcount_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_documentsprocessedcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datasourcename == $metadata_datasourcename)   &&  (metadata_failed == $metadata_failed)   &&  (metadata_indexername == $metadata_indexername)   &&  (metadata_indexname == $metadata_indexname)   &&  (metadata_skillsetname == $metadata_skillsetname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_searchlatency_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_searchlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_searchqueriespersecond_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_searchqueriespersecond_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_skillexecutioncount_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_skillexecutioncount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datasourcename == $metadata_datasourcename)   &&  (metadata_failed == $metadata_failed)   &&  (metadata_indexername == $metadata_indexername)   &&  (metadata_skillname == $metadata_skillname)   &&  (metadata_skillsetname == $metadata_skillsetname)   &&  (metadata_skilltype == $metadata_skilltype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_throttledsearchqueriespercentage_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_throttledsearchqueriespercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
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
    name                     = "metadata_datasourcename"
    default_values           = []
    suggestion_attribute_key = "metadata_datasourcename"
  }

  template_variable {
    name                     = "metadata_failed"
    default_values           = []
    suggestion_attribute_key = "metadata_failed"
  }

  template_variable {
    name                     = "metadata_indexername"
    default_values           = []
    suggestion_attribute_key = "metadata_indexername"
  }

  template_variable {
    name                     = "metadata_indexname"
    default_values           = []
    suggestion_attribute_key = "metadata_indexname"
  }

  template_variable {
    name                     = "metadata_skillname"
    default_values           = []
    suggestion_attribute_key = "metadata_skillname"
  }

  template_variable {
    name                     = "metadata_skillsetname"
    default_values           = []
    suggestion_attribute_key = "metadata_skillsetname"
  }

  template_variable {
    name                     = "metadata_skilltype"
    default_values           = []
    suggestion_attribute_key = "metadata_skilltype"
  }


}