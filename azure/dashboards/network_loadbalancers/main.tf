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
  description = "OpenTelemetry Collector Network_loadbalancers Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Network_loadbalancers Metrics"
  dashboard_description = "Monitor Network_loadbalancers with this metrics overview dashboard."

  chart {
    name = "azure_allocatedsnatports_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_allocatedsnatports_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_backendipaddress == $metadata_backendipaddress)   &&  (metadata_protocoltype == $metadata_protocoltype)   &&  (metadata_isawaitingremoval == $metadata_isawaitingremoval) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bytecount_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bytecount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_frontendport == $metadata_frontendport)   &&  (metadata_direction == $metadata_direction) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dipavailability_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dipavailability_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protocoltype == $metadata_protocoltype)   &&  (metadata_backendport == $metadata_backendport)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_frontendport == $metadata_frontendport)   &&  (metadata_backendipaddress == $metadata_backendipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_globalbackendavailability_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_globalbackendavailability_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_frontendport == $metadata_frontendport)   &&  (metadata_backendipaddress == $metadata_backendipaddress)   &&  (metadata_protocoltype == $metadata_protocoltype)   &&  (metadata_frontendregion == $metadata_frontendregion)   &&  (metadata_backendregion == $metadata_backendregion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_packetcount_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_packetcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_frontendport == $metadata_frontendport)   &&  (metadata_direction == $metadata_direction) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_snatconnectioncount_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_snatconnectioncount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_backendipaddress == $metadata_backendipaddress)   &&  (metadata_connectionstate == $metadata_connectionstate) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_syncount_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_syncount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_frontendport == $metadata_frontendport)   &&  (metadata_direction == $metadata_direction) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_usedsnatports_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_usedsnatports_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_backendipaddress == $metadata_backendipaddress)   &&  (metadata_protocoltype == $metadata_protocoltype)   &&  (metadata_isawaitingremoval == $metadata_isawaitingremoval) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_vipavailability_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_vipavailability_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_frontendipaddress == $metadata_frontendipaddress)   &&  (metadata_frontendport == $metadata_frontendport) )  | delta | group_by [], sum
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
    name                     = "metadata_backendipaddress"
    default_values           = []
    suggestion_attribute_key = "metadata_backendipaddress"
  }

  template_variable {
    name                     = "metadata_backendport"
    default_values           = []
    suggestion_attribute_key = "metadata_backendport"
  }

  template_variable {
    name                     = "metadata_backendregion"
    default_values           = []
    suggestion_attribute_key = "metadata_backendregion"
  }

  template_variable {
    name                     = "metadata_connectionstate"
    default_values           = []
    suggestion_attribute_key = "metadata_connectionstate"
  }

  template_variable {
    name                     = "metadata_direction"
    default_values           = []
    suggestion_attribute_key = "metadata_direction"
  }

  template_variable {
    name                     = "metadata_frontendipaddress"
    default_values           = []
    suggestion_attribute_key = "metadata_frontendipaddress"
  }

  template_variable {
    name                     = "metadata_frontendport"
    default_values           = []
    suggestion_attribute_key = "metadata_frontendport"
  }

  template_variable {
    name                     = "metadata_frontendregion"
    default_values           = []
    suggestion_attribute_key = "metadata_frontendregion"
  }

  template_variable {
    name                     = "metadata_isawaitingremoval"
    default_values           = []
    suggestion_attribute_key = "metadata_isawaitingremoval"
  }

  template_variable {
    name                     = "metadata_protocoltype"
    default_values           = []
    suggestion_attribute_key = "metadata_protocoltype"
  }


}