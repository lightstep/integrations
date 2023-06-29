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
  description = "OpenTelemetry Collector Resources_subscriptions Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Resources_subscriptions Metrics"
  dashboard_description = "Monitor Resources_subscriptions with this metrics overview dashboard."

  chart {
    name = "azure_latency_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_latency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_iscustomeroriginated == $metadata_iscustomeroriginated)   &&  (metadata_method == $metadata_method)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_requestregion == $metadata_requestregion)   &&  (metadata_resourcetype == $metadata_resourcetype)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass)   &&  (metadata_microsoft.subscriptionid == $metadata_microsoft_subscriptionid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_traffic_count"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_traffic_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_iscustomeroriginated == $metadata_iscustomeroriginated)   &&  (metadata_method == $metadata_method)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_requestregion == $metadata_requestregion)   &&  (metadata_resourcetype == $metadata_resourcetype)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass)   &&  (metadata_microsoft.subscriptionid == $metadata_microsoft_subscriptionid) )  | delta | group_by [], sum
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
    name                     = "metadata_iscustomeroriginated"
    default_values           = []
    suggestion_attribute_key = "metadata_iscustomeroriginated"
  }

  template_variable {
    name                     = "metadata_method"
    default_values           = []
    suggestion_attribute_key = "metadata_method"
  }

  template_variable {
    name                     = "metadata_microsoft_subscriptionid"
    default_values           = []
    suggestion_attribute_key = "metadata_microsoft.subscriptionid"
  }

  template_variable {
    name                     = "metadata_namespace"
    default_values           = []
    suggestion_attribute_key = "metadata_namespace"
  }

  template_variable {
    name                     = "metadata_requestregion"
    default_values           = []
    suggestion_attribute_key = "metadata_requestregion"
  }

  template_variable {
    name                     = "metadata_resourcetype"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcetype"
  }

  template_variable {
    name                     = "metadata_statuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscode"
  }

  template_variable {
    name                     = "metadata_statuscodeclass"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscodeclass"
  }


}