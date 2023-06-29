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
  description = "OpenTelemetry Collector Network_virtualnetworkgateways Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Network_virtualnetworkgateways Metrics"
  dashboard_description = "Monitor Network_virtualnetworkgateways with this metrics overview dashboard."

  chart {
    name = "azure_averagebandwidth_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_averagebandwidth_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bgppeerstatus_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bgppeerstatus_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_bgppeeraddress == $metadata_bgppeeraddress)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bgproutesadvertised_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bgproutesadvertised_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_bgppeeraddress == $metadata_bgppeeraddress)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bgprouteslearned_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bgprouteslearned_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_bgppeeraddress == $metadata_bgppeeraddress)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewayactiveflows_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewayactiveflows_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewaybitspersecond_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewaybitspersecond_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewaycountofroutesadvertisedtopeer_maximum"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewaycountofroutesadvertisedtopeer_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewaycountofrouteslearnedfrompeer_maximum"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewaycountofrouteslearnedfrompeer_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewaycpuutilization_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewaycpuutilization_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewayfrequencyofrouteschanged_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewayfrequencyofrouteschanged_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewaymaxflowscreationrate_maximum"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewaymaxflowscreationrate_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_direction == $metadata_direction) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewaynumberofvminvnet_maximum"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewaynumberofvminvnet_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_expressroutegatewaypacketspersecond_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_expressroutegatewaypacketspersecond_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_roleinstance == $metadata_roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mmsacount_total"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mmsacount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_p2sbandwidth_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_p2sbandwidth_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_p2sconnectioncount_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_p2sconnectioncount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_qmsacount_total"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_qmsacount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelaveragebandwidth_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelaveragebandwidth_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelegressbytes_total"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelegressbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelegresspacketdropcount_total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelegresspacketdropcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelegresspacketdroptsmismatch_total"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelegresspacketdroptsmismatch_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelegresspackets_total"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelegresspackets_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelingressbytes_total"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelingressbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelingresspacketdropcount_total"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelingresspacketdropcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelingresspacketdroptsmismatch_total"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelingresspacketdroptsmismatch_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelingresspackets_total"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelingresspackets_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelnatallocations_total"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelnatallocations_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_natrule == $metadata_natrule)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelnatedbytes_total"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelnatedbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_natrule == $metadata_natrule)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelnatedpackets_total"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelnatedpackets_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_natrule == $metadata_natrule)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelnatflowcount_total"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelnatflowcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_natrule == $metadata_natrule)   &&  (metadata_flowtype == $metadata_flowtype)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelnatpacketdrop_total"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelnatpacketdrop_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_natrule == $metadata_natrule)   &&  (metadata_droptype == $metadata_droptype)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelpeakpackets_maximum"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelpeakpackets_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelreversenatedbytes_total"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelreversenatedbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_natrule == $metadata_natrule)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunnelreversenatedpackets_total"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunnelreversenatedpackets_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_natrule == $metadata_natrule)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tunneltotalflowcount_total"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tunneltotalflowcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_connectionname == $metadata_connectionname)   &&  (metadata_remoteip == $metadata_remoteip)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_uservpnroutecount_total"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_uservpnroutecount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_routetype == $metadata_routetype)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_vnetaddressprefixcount_total"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_vnetaddressprefixcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_instance == $metadata_instance) )  | delta | group_by [], sum
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
    name                     = "metadata_bgppeeraddress"
    default_values           = []
    suggestion_attribute_key = "metadata_bgppeeraddress"
  }

  template_variable {
    name                     = "metadata_connectionname"
    default_values           = []
    suggestion_attribute_key = "metadata_connectionname"
  }

  template_variable {
    name                     = "metadata_direction"
    default_values           = []
    suggestion_attribute_key = "metadata_direction"
  }

  template_variable {
    name                     = "metadata_droptype"
    default_values           = []
    suggestion_attribute_key = "metadata_droptype"
  }

  template_variable {
    name                     = "metadata_flowtype"
    default_values           = []
    suggestion_attribute_key = "metadata_flowtype"
  }

  template_variable {
    name                     = "metadata_instance"
    default_values           = []
    suggestion_attribute_key = "metadata_instance"
  }

  template_variable {
    name                     = "metadata_natrule"
    default_values           = []
    suggestion_attribute_key = "metadata_natrule"
  }

  template_variable {
    name                     = "metadata_protocol"
    default_values           = []
    suggestion_attribute_key = "metadata_protocol"
  }

  template_variable {
    name                     = "metadata_remoteip"
    default_values           = []
    suggestion_attribute_key = "metadata_remoteip"
  }

  template_variable {
    name                     = "metadata_roleinstance"
    default_values           = []
    suggestion_attribute_key = "metadata_roleinstance"
  }

  template_variable {
    name                     = "metadata_routetype"
    default_values           = []
    suggestion_attribute_key = "metadata_routetype"
  }


}