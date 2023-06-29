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
  description = "OpenTelemetry Collector Networkcloud_baremetalmachines Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Networkcloud_baremetalmachines Metrics"
  dashboard_description = "Monitor Networkcloud_baremetalmachines with this metrics overview dashboard."

  chart {
    name = "azure_hostboottimeseconds_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostboottimeseconds_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostdiskreadcompleted_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostdiskreadcompleted_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostdiskreadseconds_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostdiskreadseconds_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostdiskwritecompleted_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostdiskwritecompleted_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostdiskwriteseconds_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostdiskwriteseconds_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostdmiinfo_count"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostdmiinfo_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_biosdate == $metadata_biosdate)   &&  (metadata_biosrelease == $metadata_biosrelease)   &&  (metadata_biosvendor == $metadata_biosvendor)   &&  (metadata_biosversion == $metadata_biosversion)   &&  (metadata_boardassettag == $metadata_boardassettag)   &&  (metadata_boardname == $metadata_boardname)   &&  (metadata_boardvendor == $metadata_boardvendor)   &&  (metadata_boardversion == $metadata_boardversion)   &&  (metadata_chassisassettag == $metadata_chassisassettag)   &&  (metadata_chassisvendor == $metadata_chassisvendor)   &&  (metadata_chassisversion == $metadata_chassisversion)   &&  (metadata_host == $metadata_host)   &&  (metadata_productfamily == $metadata_productfamily)   &&  (metadata_productname == $metadata_productname)   &&  (metadata_productsku == $metadata_productsku)   &&  (metadata_productuuid == $metadata_productuuid)   &&  (metadata_productversion == $metadata_productversion)   &&  (metadata_systemvendor == $metadata_systemvendor) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostentropyavailablebits_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostentropyavailablebits_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostfilesystemavailbytes_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostfilesystemavailbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_fstype == $metadata_fstype)   &&  (metadata_host == $metadata_host)   &&  (metadata_mountpoint == $metadata_mountpoint) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostfilesystemdeviceerror_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostfilesystemdeviceerror_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_fstype == $metadata_fstype)   &&  (metadata_host == $metadata_host)   &&  (metadata_mountpoint == $metadata_mountpoint) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostfilesystemfiles_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostfilesystemfiles_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_fstype == $metadata_fstype)   &&  (metadata_host == $metadata_host)   &&  (metadata_mountpoint == $metadata_mountpoint) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostfilesystemfilesfree_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostfilesystemfilesfree_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_fstype == $metadata_fstype)   &&  (metadata_host == $metadata_host)   &&  (metadata_mountpoint == $metadata_mountpoint) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostfilesystemreadonly_count"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostfilesystemreadonly_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_fstype == $metadata_fstype)   &&  (metadata_host == $metadata_host)   &&  (metadata_mountpoint == $metadata_mountpoint) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostfilesystemsizebytes_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostfilesystemsizebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_fstype == $metadata_fstype)   &&  (metadata_host == $metadata_host)   &&  (metadata_mountpoint == $metadata_mountpoint) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hosthwmontempcelsius_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hosthwmontempcelsius_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_chip == $metadata_chip)   &&  (metadata_host == $metadata_host)   &&  (metadata_sensor == $metadata_sensor) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hosthwmontempmax_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hosthwmontempmax_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_chip == $metadata_chip)   &&  (metadata_host == $metadata_host)   &&  (metadata_sensor == $metadata_sensor) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostload1_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostload1_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostload15_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostload15_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostload5_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostload5_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostmemavailbytes_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostmemavailbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostmemhwcorruptedbytes_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostmemhwcorruptedbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostmemtotalbytes_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostmemtotalbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_hostspecificcpuutilization_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hostspecificcpuutilization_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cpu == $metadata_cpu)   &&  (metadata_host == $metadata_host)   &&  (metadata_mode == $metadata_mode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_idracpowercapacitywatts_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_idracpowercapacitywatts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_psu == $metadata_psu) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_idracpowerinputwatts_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_idracpowerinputwatts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_psu == $metadata_psu) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_idracpoweron_count"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_idracpoweron_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_idracpoweroutputwatts_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_idracpoweroutputwatts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_psu == $metadata_psu) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_idracsensorstemperature_average"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_idracsensorstemperature_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_name == $metadata_name)   &&  (metadata_units == $metadata_units) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ncnodenetworkreceiveerrstotal_average"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ncnodenetworkreceiveerrstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_interface name == $metadata_interface name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ncnodenetworktransmiterrstotal_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ncnodenetworktransmiterrstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_interface name == $metadata_interface name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nctotalcpuspernuma_average"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nctotalcpuspernuma_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_numa node == $metadata_numa node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nctotalworkloadcpusallocatedpernuma_average"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nctotalworkloadcpusallocatedpernuma_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_numa node == $metadata_numa node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nctotalworkloadcpusavailablepernuma_average"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nctotalworkloadcpusavailablepernuma_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_numa node == $metadata_numa node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodebondingactive_average"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodebondingactive_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_master == $metadata_master) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodememhugepagesfree_average"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodememhugepagesfree_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodememhugepagestotal_average"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodememhugepagestotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodememnumafree_average"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodememnumafree_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodememnumashem_average"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodememnumashem_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodememnumaused_average"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodememnumaused_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodenetworkcarrierchanges_average"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodenetworkcarrierchanges_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodenetworkmtubytes_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodenetworkmtubytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodenetworkreceivemulticasttotal_average"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodenetworkreceivemulticasttotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodenetworkreceivepackets_average"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodenetworkreceivepackets_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodenetworkspeedbytes_average"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodenetworkspeedbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodenetworktransmitpackets_average"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodenetworktransmitpackets_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodenetworkup_count"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodenetworkup_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodenvmeinfo_count"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodenvmeinfo_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_state == $metadata_state) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodeosinfo_count"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodeosinfo_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_name == $metadata_name)   &&  (metadata_version == $metadata_version) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodetimexmaxerrorseconds_average"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodetimexmaxerrorseconds_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodetimexoffsetseconds_average"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodetimexoffsetseconds_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodetimexsyncstatus_average"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodetimexsyncstatus_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodevmoomkill_average"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodevmoomkill_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodevmstatpswpin_average"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodevmstatpswpin_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nodevmstatpswpout_average"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nodevmstatpswpout_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
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
    name                     = "metadata_biosdate"
    default_values           = []
    suggestion_attribute_key = "metadata_biosdate"
  }

  template_variable {
    name                     = "metadata_biosrelease"
    default_values           = []
    suggestion_attribute_key = "metadata_biosrelease"
  }

  template_variable {
    name                     = "metadata_biosvendor"
    default_values           = []
    suggestion_attribute_key = "metadata_biosvendor"
  }

  template_variable {
    name                     = "metadata_biosversion"
    default_values           = []
    suggestion_attribute_key = "metadata_biosversion"
  }

  template_variable {
    name                     = "metadata_boardassettag"
    default_values           = []
    suggestion_attribute_key = "metadata_boardassettag"
  }

  template_variable {
    name                     = "metadata_boardname"
    default_values           = []
    suggestion_attribute_key = "metadata_boardname"
  }

  template_variable {
    name                     = "metadata_boardvendor"
    default_values           = []
    suggestion_attribute_key = "metadata_boardvendor"
  }

  template_variable {
    name                     = "metadata_boardversion"
    default_values           = []
    suggestion_attribute_key = "metadata_boardversion"
  }

  template_variable {
    name                     = "metadata_chassisassettag"
    default_values           = []
    suggestion_attribute_key = "metadata_chassisassettag"
  }

  template_variable {
    name                     = "metadata_chassisvendor"
    default_values           = []
    suggestion_attribute_key = "metadata_chassisvendor"
  }

  template_variable {
    name                     = "metadata_chassisversion"
    default_values           = []
    suggestion_attribute_key = "metadata_chassisversion"
  }

  template_variable {
    name                     = "metadata_chip"
    default_values           = []
    suggestion_attribute_key = "metadata_chip"
  }

  template_variable {
    name                     = "metadata_cpu"
    default_values           = []
    suggestion_attribute_key = "metadata_cpu"
  }

  template_variable {
    name                     = "metadata_device"
    default_values           = []
    suggestion_attribute_key = "metadata_device"
  }

  template_variable {
    name                     = "metadata_fstype"
    default_values           = []
    suggestion_attribute_key = "metadata_fstype"
  }

  template_variable {
    name                     = "metadata_host"
    default_values           = []
    suggestion_attribute_key = "metadata_host"
  }

  template_variable {
    name                     = "metadata_hostname"
    default_values           = []
    suggestion_attribute_key = "metadata_hostname"
  }

  template_variable {
    name                     = "metadata_interface name"
    default_values           = []
    suggestion_attribute_key = "metadata_interface name"
  }

  template_variable {
    name                     = "metadata_master"
    default_values           = []
    suggestion_attribute_key = "metadata_master"
  }

  template_variable {
    name                     = "metadata_mode"
    default_values           = []
    suggestion_attribute_key = "metadata_mode"
  }

  template_variable {
    name                     = "metadata_mountpoint"
    default_values           = []
    suggestion_attribute_key = "metadata_mountpoint"
  }

  template_variable {
    name                     = "metadata_name"
    default_values           = []
    suggestion_attribute_key = "metadata_name"
  }

  template_variable {
    name                     = "metadata_node"
    default_values           = []
    suggestion_attribute_key = "metadata_node"
  }

  template_variable {
    name                     = "metadata_numa node"
    default_values           = []
    suggestion_attribute_key = "metadata_numa node"
  }

  template_variable {
    name                     = "metadata_productfamily"
    default_values           = []
    suggestion_attribute_key = "metadata_productfamily"
  }

  template_variable {
    name                     = "metadata_productname"
    default_values           = []
    suggestion_attribute_key = "metadata_productname"
  }

  template_variable {
    name                     = "metadata_productsku"
    default_values           = []
    suggestion_attribute_key = "metadata_productsku"
  }

  template_variable {
    name                     = "metadata_productuuid"
    default_values           = []
    suggestion_attribute_key = "metadata_productuuid"
  }

  template_variable {
    name                     = "metadata_productversion"
    default_values           = []
    suggestion_attribute_key = "metadata_productversion"
  }

  template_variable {
    name                     = "metadata_psu"
    default_values           = []
    suggestion_attribute_key = "metadata_psu"
  }

  template_variable {
    name                     = "metadata_sensor"
    default_values           = []
    suggestion_attribute_key = "metadata_sensor"
  }

  template_variable {
    name                     = "metadata_state"
    default_values           = []
    suggestion_attribute_key = "metadata_state"
  }

  template_variable {
    name                     = "metadata_systemvendor"
    default_values           = []
    suggestion_attribute_key = "metadata_systemvendor"
  }

  template_variable {
    name                     = "metadata_units"
    default_values           = []
    suggestion_attribute_key = "metadata_units"
  }

  template_variable {
    name                     = "metadata_version"
    default_values           = []
    suggestion_attribute_key = "metadata_version"
  }


}