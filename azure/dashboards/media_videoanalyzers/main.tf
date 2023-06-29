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
  description = "OpenTelemetry Collector Media_videoanalyzers Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Media_videoanalyzers Metrics"
  dashboard_description = "Monitor Media_videoanalyzers with this metrics overview dashboard."

  chart {
    name = "azure_ingressbytes_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pipelinekind == $metadata_pipelinekind)   &&  (metadata_pipelinetopology == $metadata_pipelinetopology)   &&  (metadata_pipeline == $metadata_pipeline)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pipelines_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pipelines_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pipelinekind == $metadata_pipelinekind)   &&  (metadata_pipelinetopology == $metadata_pipelinetopology)   &&  (metadata_pipelinestate == $metadata_pipelinestate) )  | delta | group_by [], sum
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
    name                     = "metadata_node"
    default_values           = []
    suggestion_attribute_key = "metadata_node"
  }

  template_variable {
    name                     = "metadata_pipeline"
    default_values           = []
    suggestion_attribute_key = "metadata_pipeline"
  }

  template_variable {
    name                     = "metadata_pipelinekind"
    default_values           = []
    suggestion_attribute_key = "metadata_pipelinekind"
  }

  template_variable {
    name                     = "metadata_pipelinestate"
    default_values           = []
    suggestion_attribute_key = "metadata_pipelinestate"
  }

  template_variable {
    name                     = "metadata_pipelinetopology"
    default_values           = []
    suggestion_attribute_key = "metadata_pipelinetopology"
  }


}