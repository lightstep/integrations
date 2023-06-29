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
  description = "OpenTelemetry Collector Singularity_accounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Singularity_accounts Metrics"
  dashboard_description = "Monitor Singularity_accounts with this metrics overview dashboard."

  chart {
    name = "azure_gpuutilizationpercentage_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpuutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_accountname == $metadata_accountname)   &&  (metadata_clustername == $metadata_clustername)   &&  (metadata_environment == $metadata_environment)   &&  (metadata_instance == $metadata_instance)   &&  (metadata_jobcontainerid == $metadata_jobcontainerid)   &&  (metadata_jobinstanceid == $metadata_jobinstanceid)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
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
    name                     = "metadata_accountname"
    default_values           = []
    suggestion_attribute_key = "metadata_accountname"
  }

  template_variable {
    name                     = "metadata_clustername"
    default_values           = []
    suggestion_attribute_key = "metadata_clustername"
  }

  template_variable {
    name                     = "metadata_environment"
    default_values           = []
    suggestion_attribute_key = "metadata_environment"
  }

  template_variable {
    name                     = "metadata_instance"
    default_values           = []
    suggestion_attribute_key = "metadata_instance"
  }

  template_variable {
    name                     = "metadata_jobcontainerid"
    default_values           = []
    suggestion_attribute_key = "metadata_jobcontainerid"
  }

  template_variable {
    name                     = "metadata_jobinstanceid"
    default_values           = []
    suggestion_attribute_key = "metadata_jobinstanceid"
  }

  template_variable {
    name                     = "metadata_jobname"
    default_values           = []
    suggestion_attribute_key = "metadata_jobname"
  }

  template_variable {
    name                     = "metadata_region"
    default_values           = []
    suggestion_attribute_key = "metadata_region"
  }


}