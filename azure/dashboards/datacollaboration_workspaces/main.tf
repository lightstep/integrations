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
  description = "OpenTelemetry Collector Datacollaboration_workspaces Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Datacollaboration_workspaces Metrics"
  dashboard_description = "Monitor Datacollaboration_workspaces with this metrics overview dashboard."

  chart {
    name = "azure_computationcount_maximum"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_computationcount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computationname == $metadata_computationname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dataassetcount_maximum"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dataassetcount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dataassetname == $metadata_dataassetname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pipelinecount_maximum"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pipelinecount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pipelinename == $metadata_pipelinename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pipelinecount_maximum"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pipelinecount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pipelinename == $metadata_pipelinename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_proposalcount_maximum"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_proposalcount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_proposalname == $metadata_proposalname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_scriptcount_maximum"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_scriptcount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scriptname == $metadata_scriptname) )  | delta | group_by [], sum
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
    name                     = "metadata_computationname"
    default_values           = []
    suggestion_attribute_key = "metadata_computationname"
  }

  template_variable {
    name                     = "metadata_dataassetname"
    default_values           = []
    suggestion_attribute_key = "metadata_dataassetname"
  }

  template_variable {
    name                     = "metadata_pipelinename"
    default_values           = []
    suggestion_attribute_key = "metadata_pipelinename"
  }

  template_variable {
    name                     = "metadata_proposalname"
    default_values           = []
    suggestion_attribute_key = "metadata_proposalname"
  }

  template_variable {
    name                     = "metadata_scriptname"
    default_values           = []
    suggestion_attribute_key = "metadata_scriptname"
  }


}