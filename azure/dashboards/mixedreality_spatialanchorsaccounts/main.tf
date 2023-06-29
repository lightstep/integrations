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
  description = "OpenTelemetry Collector Mixedreality_spatialanchorsaccounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Mixedreality_spatialanchorsaccounts Metrics"
  dashboard_description = "Monitor Mixedreality_spatialanchorsaccounts with this metrics overview dashboard."

  chart {
    name = "azure_anchorscreated_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_anchorscreated_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_devicefamily == $metadata_devicefamily)   &&  (metadata_sdkversion == $metadata_sdkversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_anchorsdeleted_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_anchorsdeleted_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_devicefamily == $metadata_devicefamily)   &&  (metadata_sdkversion == $metadata_sdkversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_anchorsqueried_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_anchorsqueried_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_devicefamily == $metadata_devicefamily)   &&  (metadata_sdkversion == $metadata_sdkversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_anchorsupdated_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_anchorsupdated_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_devicefamily == $metadata_devicefamily)   &&  (metadata_sdkversion == $metadata_sdkversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_posesfound_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_posesfound_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_devicefamily == $metadata_devicefamily)   &&  (metadata_sdkversion == $metadata_sdkversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totaldailyanchors_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totaldailyanchors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_devicefamily == $metadata_devicefamily)   &&  (metadata_sdkversion == $metadata_sdkversion) )  | delta | group_by [], sum
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
    name                     = "metadata_devicefamily"
    default_values           = []
    suggestion_attribute_key = "metadata_devicefamily"
  }

  template_variable {
    name                     = "metadata_sdkversion"
    default_values           = []
    suggestion_attribute_key = "metadata_sdkversion"
  }


}