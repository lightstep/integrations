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
  description = "OpenTelemetry Collector Networkcloud_storageappliances Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Networkcloud_storageappliances Metrics"
  dashboard_description = "Monitor Networkcloud_storageappliances with this metrics overview dashboard."

  chart {
    name = "azure_purefaalertstotal_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaalertstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_severity == $metadata_severity) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayperformanceavgblockbytes_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayperformanceavgblockbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayperformancebandwidthbytes_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayperformancebandwidthbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayperformanceiops_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayperformanceiops_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayperformancelatencyusec_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayperformancelatencyusec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayperformanceqdepth_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayperformanceqdepth_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayspacecapacitybytes_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayspacecapacitybytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayspacedatareductionratio_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayspacedatareductionratio_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayspaceprovisionedbytes_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayspaceprovisionedbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefaarrayspaceusedbytes_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefaarrayspaceusedbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahardwarecomponenthealth_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahardwarecomponenthealth_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_controller == $metadata_controller)   &&  (metadata_index == $metadata_index) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahardwarepowervolts_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahardwarepowervolts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_power supply == $metadata_power supply) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahardwaretemperaturecelsius_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahardwaretemperaturecelsius_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_controller == $metadata_controller)   &&  (metadata_sensor == $metadata_sensor) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahostperformancebandwidthbytes_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahostperformancebandwidthbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahostperformanceiops_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahostperformanceiops_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahostperformancelatencyusec_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahostperformancelatencyusec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahostspacebytes_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahostspacebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahostspacedatareductionratio_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahostspacedatareductionratio_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefahostspacesizebytes_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefahostspacesizebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefainfo_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefainfo_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_array name == $metadata_array name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefavolumeperformanceiops_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefavolumeperformanceiops_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension)   &&  (metadata_volume == $metadata_volume) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefavolumeperformancelatencyusec_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefavolumeperformancelatencyusec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension)   &&  (metadata_volume == $metadata_volume) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefavolumeperformancethroughputbytes_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefavolumeperformancethroughputbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension)   &&  (metadata_volume == $metadata_volume) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefavolumespacebytes_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefavolumespacebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dimension == $metadata_dimension)   &&  (metadata_volume == $metadata_volume) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefavolumespacedatareductionratio_average"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefavolumespacedatareductionratio_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_volume == $metadata_volume) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_purefavolumespacesizebytes_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_purefavolumespacesizebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_volume == $metadata_volume) )  | delta | group_by [], sum
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
    name                     = "metadata_array name"
    default_values           = []
    suggestion_attribute_key = "metadata_array name"
  }

  template_variable {
    name                     = "metadata_component"
    default_values           = []
    suggestion_attribute_key = "metadata_component"
  }

  template_variable {
    name                     = "metadata_controller"
    default_values           = []
    suggestion_attribute_key = "metadata_controller"
  }

  template_variable {
    name                     = "metadata_dimension"
    default_values           = []
    suggestion_attribute_key = "metadata_dimension"
  }

  template_variable {
    name                     = "metadata_host"
    default_values           = []
    suggestion_attribute_key = "metadata_host"
  }

  template_variable {
    name                     = "metadata_index"
    default_values           = []
    suggestion_attribute_key = "metadata_index"
  }

  template_variable {
    name                     = "metadata_power supply"
    default_values           = []
    suggestion_attribute_key = "metadata_power supply"
  }

  template_variable {
    name                     = "metadata_sensor"
    default_values           = []
    suggestion_attribute_key = "metadata_sensor"
  }

  template_variable {
    name                     = "metadata_severity"
    default_values           = []
    suggestion_attribute_key = "metadata_severity"
  }

  template_variable {
    name                     = "metadata_volume"
    default_values           = []
    suggestion_attribute_key = "metadata_volume"
  }


}