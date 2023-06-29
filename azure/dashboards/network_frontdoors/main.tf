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
  description = "OpenTelemetry Collector Network_frontdoors Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Network_frontdoors Metrics"
  dashboard_description = "Monitor Network_frontdoors with this metrics overview dashboard."

  chart {
    name = "azure_backendhealthpercentage_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendhealthpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_backend == $metadata_backend)   &&  (metadata_backendpool == $metadata_backendpool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_backendrequestcount_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendrequestcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatus == $metadata_httpstatus)   &&  (metadata_httpstatusgroup == $metadata_httpstatusgroup)   &&  (metadata_backend == $metadata_backend) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_backendrequestlatency_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendrequestlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_backend == $metadata_backend) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_billableresponsesize_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_billableresponsesize_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatus == $metadata_httpstatus)   &&  (metadata_httpstatusgroup == $metadata_httpstatusgroup)   &&  (metadata_clientregion == $metadata_clientregion)   &&  (metadata_clientcountry == $metadata_clientcountry) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requestcount_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requestcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatus == $metadata_httpstatus)   &&  (metadata_httpstatusgroup == $metadata_httpstatusgroup)   &&  (metadata_clientregion == $metadata_clientregion)   &&  (metadata_clientcountry == $metadata_clientcountry) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requestsize_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requestsize_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatus == $metadata_httpstatus)   &&  (metadata_httpstatusgroup == $metadata_httpstatusgroup)   &&  (metadata_clientregion == $metadata_clientregion)   &&  (metadata_clientcountry == $metadata_clientcountry) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_responsesize_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_responsesize_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatus == $metadata_httpstatus)   &&  (metadata_httpstatusgroup == $metadata_httpstatusgroup)   &&  (metadata_clientregion == $metadata_clientregion)   &&  (metadata_clientcountry == $metadata_clientcountry) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totallatency_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totallatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatus == $metadata_httpstatus)   &&  (metadata_httpstatusgroup == $metadata_httpstatusgroup)   &&  (metadata_clientregion == $metadata_clientregion)   &&  (metadata_clientcountry == $metadata_clientcountry) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_webapplicationfirewallrequestcount_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_webapplicationfirewallrequestcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_policyname == $metadata_policyname)   &&  (metadata_rulename == $metadata_rulename)   &&  (metadata_action == $metadata_action) )  | delta | group_by [], sum
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
    name                     = "metadata_action"
    default_values           = []
    suggestion_attribute_key = "metadata_action"
  }

  template_variable {
    name                     = "metadata_backend"
    default_values           = []
    suggestion_attribute_key = "metadata_backend"
  }

  template_variable {
    name                     = "metadata_backendpool"
    default_values           = []
    suggestion_attribute_key = "metadata_backendpool"
  }

  template_variable {
    name                     = "metadata_clientcountry"
    default_values           = []
    suggestion_attribute_key = "metadata_clientcountry"
  }

  template_variable {
    name                     = "metadata_clientregion"
    default_values           = []
    suggestion_attribute_key = "metadata_clientregion"
  }

  template_variable {
    name                     = "metadata_httpstatus"
    default_values           = []
    suggestion_attribute_key = "metadata_httpstatus"
  }

  template_variable {
    name                     = "metadata_httpstatusgroup"
    default_values           = []
    suggestion_attribute_key = "metadata_httpstatusgroup"
  }

  template_variable {
    name                     = "metadata_policyname"
    default_values           = []
    suggestion_attribute_key = "metadata_policyname"
  }

  template_variable {
    name                     = "metadata_rulename"
    default_values           = []
    suggestion_attribute_key = "metadata_rulename"
  }


}