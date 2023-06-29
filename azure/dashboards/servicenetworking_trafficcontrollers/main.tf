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
  description = "OpenTelemetry Collector Servicenetworking_trafficcontrollers Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Servicenetworking_trafficcontrollers Metrics"
  dashboard_description = "Monitor Servicenetworking_trafficcontrollers with this metrics overview dashboard."

  chart {
    name = "azure_backendconnectiontimeouts_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendconnectiontimeouts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_microsoft.regionname == $metadata_microsoft_regionname)   &&  (metadata_backendservice == $metadata_backendservice) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_backendhealthytargets_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendhealthytargets_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_microsoft.regionname == $metadata_microsoft_regionname)   &&  (metadata_backendservice == $metadata_backendservice) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_backendhttpresponsestatus_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendhttpresponsestatus_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_microsoft.regionname == $metadata_microsoft_regionname)   &&  (metadata_backendservice == $metadata_backendservice)   &&  (metadata_httpresponsecode == $metadata_httpresponsecode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_clientconnectionidletimeouts_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_clientconnectionidletimeouts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_microsoft.regionname == $metadata_microsoft_regionname)   &&  (metadata_frontend == $metadata_frontend) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_connectiontimeouts_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_connectiontimeouts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_microsoft.regionname == $metadata_microsoft_regionname)   &&  (metadata_frontend == $metadata_frontend) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_httpresponsestatus_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_httpresponsestatus_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_microsoft.regionname == $metadata_microsoft_regionname)   &&  (metadata_frontend == $metadata_frontend)   &&  (metadata_httpresponsecode == $metadata_httpresponsecode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalrequests_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_microsoft.regionname == $metadata_microsoft_regionname)   &&  (metadata_frontend == $metadata_frontend) )  | delta | group_by [], sum
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
    name                     = "metadata_backendservice"
    default_values           = []
    suggestion_attribute_key = "metadata_backendservice"
  }

  template_variable {
    name                     = "metadata_frontend"
    default_values           = []
    suggestion_attribute_key = "metadata_frontend"
  }

  template_variable {
    name                     = "metadata_httpresponsecode"
    default_values           = []
    suggestion_attribute_key = "metadata_httpresponsecode"
  }

  template_variable {
    name                     = "metadata_microsoft_regionname"
    default_values           = []
    suggestion_attribute_key = "metadata_microsoft.regionname"
  }


}