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
  description = "OpenTelemetry Collector Network_virtualnetworks Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Network_virtualnetworks Metrics"
  dashboard_description = "Monitor Network_virtualnetworks with this metrics overview dashboard."

  chart {
    name = "azure_bytesdroppedddos_maximum"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bytesdroppedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bytesforwardedddos_maximum"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bytesforwardedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bytesinddos_maximum"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bytesinddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ddostriggersynpackets_maximum"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ddostriggersynpackets_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ddostriggertcppackets_maximum"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ddostriggertcppackets_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ddostriggerudppackets_maximum"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ddostriggerudppackets_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ifunderddosattack_maximum"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ifunderddosattack_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_packetsdroppedddos_maximum"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_packetsdroppedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_packetsforwardedddos_maximum"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_packetsforwardedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_packetsinddos_maximum"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_packetsinddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pingmeshaverageroundtripms_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pingmeshaverageroundtripms_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sourcecustomeraddress == $metadata_sourcecustomeraddress)   &&  (metadata_destinationcustomeraddress == $metadata_destinationcustomeraddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pingmeshprobesfailedpercent_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pingmeshprobesfailedpercent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sourcecustomeraddress == $metadata_sourcecustomeraddress)   &&  (metadata_destinationcustomeraddress == $metadata_destinationcustomeraddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tcpbytesdroppedddos_maximum"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tcpbytesdroppedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tcpbytesforwardedddos_maximum"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tcpbytesforwardedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tcpbytesinddos_maximum"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tcpbytesinddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tcppacketsdroppedddos_maximum"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tcppacketsdroppedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tcppacketsforwardedddos_maximum"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tcppacketsforwardedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tcppacketsinddos_maximum"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tcppacketsinddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_udpbytesdroppedddos_maximum"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_udpbytesdroppedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_udpbytesforwardedddos_maximum"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_udpbytesforwardedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_udpbytesinddos_maximum"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_udpbytesinddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_udppacketsdroppedddos_maximum"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_udppacketsdroppedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_udppacketsforwardedddos_maximum"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_udppacketsforwardedddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_udppacketsinddos_maximum"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_udppacketsinddos_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protectedipaddress == $metadata_protectedipaddress) )  | delta | group_by [], sum
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
    name                     = "metadata_destinationcustomeraddress"
    default_values           = []
    suggestion_attribute_key = "metadata_destinationcustomeraddress"
  }

  template_variable {
    name                     = "metadata_protectedipaddress"
    default_values           = []
    suggestion_attribute_key = "metadata_protectedipaddress"
  }

  template_variable {
    name                     = "metadata_sourcecustomeraddress"
    default_values           = []
    suggestion_attribute_key = "metadata_sourcecustomeraddress"
  }


}