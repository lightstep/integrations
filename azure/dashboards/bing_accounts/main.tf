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
  description = "OpenTelemetry Collector Bing_accounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Bing_accounts Metrics"
  dashboard_description = "Monitor Bing_accounts with this metrics overview dashboard."

  chart {
    name = "azure_blockedcalls_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_blockedcalls_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_clienterrors_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_clienterrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_datain_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_datain_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dataout_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dataout_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_latency_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_latency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_servererrors_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_servererrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successfulcalls_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successfulcalls_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalcalls_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalcalls_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalerrors_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalerrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_servingregion == $metadata_servingregion)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
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
    name                     = "metadata_apiname"
    default_values           = []
    suggestion_attribute_key = "metadata_apiname"
  }

  template_variable {
    name                     = "metadata_servingregion"
    default_values           = []
    suggestion_attribute_key = "metadata_servingregion"
  }

  template_variable {
    name                     = "metadata_statuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscode"
  }


}