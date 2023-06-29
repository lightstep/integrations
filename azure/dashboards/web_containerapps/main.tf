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
  description = "OpenTelemetry Collector Web_containerapps Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Web_containerapps Metrics"
  dashboard_description = "Monitor Web_containerapps with this metrics overview dashboard."

  chart {
    name = "azure_replicas_maximum"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_replicas_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_revisionname == $metadata_revisionname)   &&  (metadata_deploymentname == $metadata_deploymentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requests_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_revisionname == $metadata_revisionname)   &&  (metadata_podname == $metadata_podname)   &&  (metadata_statuscodecategory == $metadata_statuscodecategory)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_restartcount_maximum"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_restartcount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_revisionname == $metadata_revisionname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_rxbytes_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_rxbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_revisionname == $metadata_revisionname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_txbytes_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_txbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_revisionname == $metadata_revisionname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_usagenanocores_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_usagenanocores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_revisionname == $metadata_revisionname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_workingsetbytes_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_workingsetbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_revisionname == $metadata_revisionname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
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
    name                     = "metadata_deploymentname"
    default_values           = []
    suggestion_attribute_key = "metadata_deploymentname"
  }

  template_variable {
    name                     = "metadata_podname"
    default_values           = []
    suggestion_attribute_key = "metadata_podname"
  }

  template_variable {
    name                     = "metadata_revisionname"
    default_values           = []
    suggestion_attribute_key = "metadata_revisionname"
  }

  template_variable {
    name                     = "metadata_statuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscode"
  }

  template_variable {
    name                     = "metadata_statuscodecategory"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscodecategory"
  }


}