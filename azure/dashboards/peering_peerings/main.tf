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
  description = "OpenTelemetry Collector Peering_peerings Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Peering_peerings Metrics"
  dashboard_description = "Monitor Peering_peerings with this metrics overview dashboard."

  chart {
    name = "azure_averagecustomerprefixlatency_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_averagecustomerprefixlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_registeredasnname == $metadata_registeredasnname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_egresstrafficrate_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_egresstrafficrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionid == $metadata_connectionid)   &&  (metadata_sessionip == $metadata_sessionip)   &&  (metadata_trafficclass == $metadata_trafficclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_flapcounts_average;azure_flapcounts_count;azure_flapcounts_maximum;azure_flapcounts_minimum;azure_flapcounts_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_flapcounts_average;azure_flapcounts_count;azure_flapcounts_maximum;azure_flapcounts_minimum;azure_flapcounts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionid == $metadata_connectionid)   &&  (metadata_sessionip == $metadata_sessionip) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingresstrafficrate_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingresstrafficrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionid == $metadata_connectionid)   &&  (metadata_sessionip == $metadata_sessionip)   &&  (metadata_trafficclass == $metadata_trafficclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_packetdroprate_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_packetdroprate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionid == $metadata_connectionid)   &&  (metadata_sessionip == $metadata_sessionip)   &&  (metadata_trafficclass == $metadata_trafficclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_registeredprefixlatency_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_registeredprefixlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_registeredprefixname == $metadata_registeredprefixname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sessionavailability_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sessionavailability_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionid == $metadata_connectionid)   &&  (metadata_sessionip == $metadata_sessionip) )  | delta | group_by [], sum
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
    name                     = "metadata_connectionid"
    default_values           = []
    suggestion_attribute_key = "metadata_connectionid"
  }

  template_variable {
    name                     = "metadata_registeredasnname"
    default_values           = []
    suggestion_attribute_key = "metadata_registeredasnname"
  }

  template_variable {
    name                     = "metadata_registeredprefixname"
    default_values           = []
    suggestion_attribute_key = "metadata_registeredprefixname"
  }

  template_variable {
    name                     = "metadata_sessionip"
    default_values           = []
    suggestion_attribute_key = "metadata_sessionip"
  }

  template_variable {
    name                     = "metadata_trafficclass"
    default_values           = []
    suggestion_attribute_key = "metadata_trafficclass"
  }


}