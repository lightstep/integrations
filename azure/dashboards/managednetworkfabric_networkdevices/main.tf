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
  description = "OpenTelemetry Collector Managednetworkfabric_networkdevices Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Managednetworkfabric_networkdevices Metrics"
  dashboard_description = "Monitor Managednetworkfabric_networkdevices with this metrics overview dashboard."

  chart {
    name = "azure_aclmatchedpackets_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_aclmatchedpackets_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_aclsetname == $metadata_aclsetname)   &&  (metadata_aclentrysequenceid == $metadata_aclentrysequenceid)   &&  (metadata_aclsettype == $metadata_aclsettype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bgppeerstatus_minimum"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bgppeerstatus_minimum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_ipaddress == $metadata_ipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_componentoperstatus_minimum"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_componentoperstatus_minimum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpuutilizationmax_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpuutilizationmax_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpuutilizationmin_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpuutilizationmin_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_fanspeed_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_fanspeed_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethincrcerrors_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethincrcerrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethinfragmentframes_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethinfragmentframes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethinjabberframes_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethinjabberframes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethinmaccontrolframes_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethinmaccontrolframes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethinmacpauseframes_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethinmacpauseframes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethinmaxsizeexceeded_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethinmaxsizeexceeded_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethinoversizeframes_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethinoversizeframes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethoutmaccontrolframes_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethoutmaccontrolframes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifethoutmacpauseframes_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifethoutmacpauseframes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifinbroadcastpkts_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifinbroadcastpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifindiscards_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifindiscards_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifinerrors_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifinerrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifinfcserrors_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifinfcserrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifinmulticastpkts_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifinmulticastpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifinoctets_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifinoctets_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifinpkts_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifinpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifinunicastpkts_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifinunicastpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifoutbroadcastpkts_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifoutbroadcastpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifoutdiscards_average"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifoutdiscards_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifouterrors_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifouterrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifoutmulticastpkts_average"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifoutmulticastpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifoutoctets_average"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifoutoctets_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifoutpkts_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifoutpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifoutunicastpkts_average"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifoutunicastpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_interfaceoperstatus_minimum"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_interfaceoperstatus_minimum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lacperrors_average"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lacperrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lacpinpkts_average"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lacpinpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lacpoutpkts_average"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lacpoutpkts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lacprxerrors_average"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lacprxerrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lacptxerrors_average"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lacptxerrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lacpunknownerrors_average"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lacpunknownerrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lldpframein_average"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lldpframein_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lldpframeout_average"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lldpframeout_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lldptlvunknown_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lldptlvunknown_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_interfacename == $metadata_interfacename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_memoryavailable_average"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_memoryavailable_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_memoryutilized_average"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_memoryutilized_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_powersupplycapacity_average"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_powersupplycapacity_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_powersupplyinputcurrent_average"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_powersupplyinputcurrent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_powersupplyinputvoltage_average"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_powersupplyinputvoltage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_powersupplyoutputcurrent_average"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_powersupplyoutputcurrent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_powersupplyoutputpower_average"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_powersupplyoutputpower_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_powersupplyoutputvoltage_average"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_powersupplyoutputvoltage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_temperaturemax_average"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_temperaturemax_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fabricid == $metadata_fabricid)   &&  (metadata_regionname == $metadata_regionname)   &&  (metadata_componentname == $metadata_componentname) )  | delta | group_by [], sum
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
    name                     = "metadata_aclentrysequenceid"
    default_values           = []
    suggestion_attribute_key = "metadata_aclentrysequenceid"
  }

  template_variable {
    name                     = "metadata_aclsetname"
    default_values           = []
    suggestion_attribute_key = "metadata_aclsetname"
  }

  template_variable {
    name                     = "metadata_aclsettype"
    default_values           = []
    suggestion_attribute_key = "metadata_aclsettype"
  }

  template_variable {
    name                     = "metadata_componentname"
    default_values           = []
    suggestion_attribute_key = "metadata_componentname"
  }

  template_variable {
    name                     = "metadata_fabricid"
    default_values           = []
    suggestion_attribute_key = "metadata_fabricid"
  }

  template_variable {
    name                     = "metadata_interfacename"
    default_values           = []
    suggestion_attribute_key = "metadata_interfacename"
  }

  template_variable {
    name                     = "metadata_ipaddress"
    default_values           = []
    suggestion_attribute_key = "metadata_ipaddress"
  }

  template_variable {
    name                     = "metadata_regionname"
    default_values           = []
    suggestion_attribute_key = "metadata_regionname"
  }


}