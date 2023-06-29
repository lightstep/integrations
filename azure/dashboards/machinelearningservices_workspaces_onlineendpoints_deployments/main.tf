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
  description = "OpenTelemetry Collector Machinelearningservices_workspaces_onlineendpoints_deployments Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Machinelearningservices_workspaces_onlineendpoints_deployments Metrics"
  dashboard_description = "Monitor Machinelearningservices_workspaces_onlineendpoints_deployments with this metrics overview dashboard."

  chart {
    name = "azure_cpumemoryutilizationpercentage_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpumemoryutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpuutilizationpercentage_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpuutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_datacollectionerrorsperminute_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_datacollectionerrorsperminute_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_reason == $metadata_reason)   &&  (metadata_type == $metadata_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_datacollectioneventsperminute_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_datacollectioneventsperminute_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_type == $metadata_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deploymentcapacity_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deploymentcapacity_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_state == $metadata_state) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskutilization_maximum"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskutilization_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_disk == $metadata_disk) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpuenergyjoules_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpuenergyjoules_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpumemoryutilizationpercentage_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpumemoryutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpuutilizationpercentage_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpuutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instanceid == $metadata_instanceid) )  | delta | group_by [], sum
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
    name                     = "metadata_disk"
    default_values           = []
    suggestion_attribute_key = "metadata_disk"
  }

  template_variable {
    name                     = "metadata_instanceid"
    default_values           = []
    suggestion_attribute_key = "metadata_instanceid"
  }

  template_variable {
    name                     = "metadata_reason"
    default_values           = []
    suggestion_attribute_key = "metadata_reason"
  }

  template_variable {
    name                     = "metadata_state"
    default_values           = []
    suggestion_attribute_key = "metadata_state"
  }

  template_variable {
    name                     = "metadata_type"
    default_values           = []
    suggestion_attribute_key = "metadata_type"
  }


}