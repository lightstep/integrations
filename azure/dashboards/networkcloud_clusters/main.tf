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
  description = "OpenTelemetry Collector Networkcloud_clusters Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Networkcloud_clusters Metrics"
  dashboard_description = "Monitor Networkcloud_clusters with this metrics overview dashboard."

  chart {
    name = "azure_apiserverauditrequestsrejectedtotal_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apiserverauditrequestsrejectedtotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apiserverclientcertificateexpirationsecondssum_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apiserverclientcertificateexpirationsecondssum_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apiserverstoragedatakeygenerationfailurestotal_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apiserverstoragedatakeygenerationfailurestotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apiservertlshandshakeerrorstotal_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apiservertlshandshakeerrorstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_containerfsiotimesecondstotal_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_containerfsiotimesecondstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_device == $metadata_device)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_containermemoryfailcnt_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_containermemoryfailcnt_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_host == $metadata_host)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_containermemoryusagebytes_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_containermemoryusagebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_host == $metadata_host)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_containernetworkreceiveerrorstotal_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_containernetworkreceiveerrorstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_interface == $metadata_interface)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_containernetworktransmiterrorstotal_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_containernetworktransmiterrorstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_interface == $metadata_interface)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_containerscrapeerror_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_containerscrapeerror_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_containertasksstate_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_containertasksstate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_host == $metadata_host)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_state == $metadata_state) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_controllerruntimereconcileerrorstotal_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_controllerruntimereconcileerrorstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_controller == $metadata_controller)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_controllerruntimereconciletotal_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_controllerruntimereconciletotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_controller == $metadata_controller)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_corednsdnsrequeststotal_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_corednsdnsrequeststotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_family == $metadata_family)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_proto == $metadata_proto)   &&  (metadata_server == $metadata_server)   &&  (metadata_type == $metadata_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_corednsdnsresponsestotal_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_corednsdnsresponsestotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_server == $metadata_server)   &&  (metadata_rcode == $metadata_rcode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_corednsforwardhealthcheckbrokentotal_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_corednsforwardhealthcheckbrokentotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_corednsforwardmaxconcurrentrejectstotal_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_corednsforwardmaxconcurrentrejectstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_corednshealthrequestfailurestotal_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_corednshealthrequestfailurestotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_corednspanicstotal_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_corednspanicstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_corednsreloadfailedtotal_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_corednsreloadfailedtotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcddiskbackendcommitdurationsecondssum_total"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcddiskbackendcommitdurationsecondssum_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcddiskwalfsyncdurationsecondssum_total"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcddiskwalfsyncdurationsecondssum_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcdserverhealthfailures_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcdserverhealthfailures_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcdserverisleader_count"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcdserverisleader_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcdserverislearner_count"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcdserverislearner_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcdserverleaderchangesseentotal_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcdserverleaderchangesseentotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcdserverproposalsappliedtotal_average"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcdserverproposalsappliedtotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcdserverproposalscommittedtotal_average"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcdserverproposalscommittedtotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcdserverproposalsfailedtotal_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcdserverproposalsfailedtotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_component == $metadata_component)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_etcdserverslowapplytotal_average"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_etcdserverslowapplytotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixactivelocalendpoints_average"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixactivelocalendpoints_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixclusternumhostendpoints_average"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixclusternumhostendpoints_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixclusternumhosts_average"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixclusternumhosts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixclusternumworkloadendpoints_average"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixclusternumworkloadendpoints_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixintdataplanefailures_average"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixintdataplanefailures_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixipseterrors_average"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixipseterrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixipsetscalico_average"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixipsetscalico_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixiptablesrestoreerrors_average"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixiptablesrestoreerrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixiptablessaveerrors_average"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixiptablessaveerrors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixresyncsstarted_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixresyncsstarted_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_felixresyncstate_average"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_felixresyncstate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubedaemonsetstatuscurrentnumberscheduled_average"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubedaemonsetstatuscurrentnumberscheduled_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_daemonset == $metadata_daemonset)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubedaemonsetstatusdesirednumberscheduled_average"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubedaemonsetstatusdesirednumberscheduled_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_daemonset == $metadata_daemonset)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubedeploymentstatusreplicasavailable_average"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubedeploymentstatusreplicasavailable_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubedeploymentstatusreplicasready_average"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubedeploymentstatusreplicasready_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubejobstatusactive_average"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubejobstatusactive_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_job == $metadata_job)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubejobstatusfailed_average"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubejobstatusfailed_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_job == $metadata_job)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_reason == $metadata_reason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubejobstatussucceeded_average"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubejobstatussucceeded_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_job == $metadata_job)   &&  (metadata_namespace == $metadata_namespace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubeletrunningcontainers_average"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubeletrunningcontainers_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container state == $metadata_container state)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubeletrunningpods_average"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubeletrunningpods_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubeletruntimeoperationserrorstotal_average"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubeletruntimeoperationserrorstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_operation type == $metadata_operation type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubeletstartedpodserrorstotal_average"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubeletstartedpodserrorstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubeletvolumestatsavailablebytes_average"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubeletvolumestatsavailablebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_persistent volume claim == $metadata_persistent volume claim) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubeletvolumestatscapacitybytes_average"
    rank = "53"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubeletvolumestatscapacitybytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_persistent volume claim == $metadata_persistent volume claim) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubeletvolumestatsusedbytes_average"
    rank = "54"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubeletvolumestatsusedbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_host == $metadata_host)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_persistent volume claim == $metadata_persistent volume claim) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubenodestatusallocatable_average"
    rank = "55"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubenodestatusallocatable_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_node == $metadata_node)   &&  (metadata_resource == $metadata_resource)   &&  (metadata_unit == $metadata_unit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubenodestatuscapacity_average"
    rank = "56"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubenodestatuscapacity_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_node == $metadata_node)   &&  (metadata_resource == $metadata_resource)   &&  (metadata_unit == $metadata_unit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubenodestatuscondition_average"
    rank = "57"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubenodestatuscondition_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_condition == $metadata_condition)   &&  (metadata_node == $metadata_node)   &&  (metadata_status == $metadata_status) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerresourcelimits_average"
    rank = "58"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerresourcelimits_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_node == $metadata_node)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_resource == $metadata_resource)   &&  (metadata_unit == $metadata_unit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerresourcerequests_average"
    rank = "59"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerresourcerequests_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_node == $metadata_node)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_resource == $metadata_resource)   &&  (metadata_unit == $metadata_unit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatestarted_average"
    rank = "60"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatestarted_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatuslastterminatedreason_average"
    rank = "61"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatuslastterminatedreason_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_reason == $metadata_reason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatusready_average"
    rank = "62"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatusready_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatusrestartstotal_average"
    rank = "63"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatusrestartstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatusrunning_average"
    rank = "64"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatusrunning_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatusterminated_average"
    rank = "65"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatusterminated_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatusterminatedreason_average"
    rank = "66"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatusterminatedreason_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_reason == $metadata_reason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatuswaiting_average"
    rank = "67"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatuswaiting_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodcontainerstatuswaitingreason_average"
    rank = "68"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodcontainerstatuswaitingreason_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_container == $metadata_container)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_reason == $metadata_reason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepoddeletiontimestamp_average"
    rank = "69"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepoddeletiontimestamp_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodinitcontainerstatusready_average"
    rank = "70"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodinitcontainerstatusready_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_container == $metadata_container)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodinitcontainerstatusrestartstotal_average"
    rank = "71"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodinitcontainerstatusrestartstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_container == $metadata_container)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodinitcontainerstatusrunning_average"
    rank = "72"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodinitcontainerstatusrunning_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_container == $metadata_container)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodinitcontainerstatusterminated_average"
    rank = "73"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodinitcontainerstatusterminated_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_container == $metadata_container)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodinitcontainerstatusterminatedreason_average"
    rank = "74"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodinitcontainerstatusterminatedreason_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_container == $metadata_container)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_reason == $metadata_reason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodinitcontainerstatuswaiting_average"
    rank = "75"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodinitcontainerstatuswaiting_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_container == $metadata_container)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodinitcontainerstatuswaitingreason_average"
    rank = "76"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodinitcontainerstatuswaitingreason_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_container == $metadata_container)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_reason == $metadata_reason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodstatusphase_average"
    rank = "77"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodstatusphase_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_phase == $metadata_phase) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodstatusready_average"
    rank = "78"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodstatusready_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubepodstatusreason_average"
    rank = "79"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubepodstatusreason_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_reason == $metadata_reason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubestatefulsetreplicas_average"
    rank = "80"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubestatefulsetreplicas_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_statefulset == $metadata_statefulset) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubestatefulsetstatusreplicas_average"
    rank = "81"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubestatefulsetstatusreplicas_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_namespace == $metadata_namespace)   &&  (metadata_statefulset == $metadata_statefulset) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtinfo_average"
    rank = "82"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtinfo_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_kube version == $metadata_kube version) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvirtcontrollerleading_average"
    rank = "83"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvirtcontrollerleading_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvirtcontrollerready_average"
    rank = "84"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvirtcontrollerready_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvirtoperatorready_average"
    rank = "85"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvirtoperatorready_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmimemoryactualballoonbytes_average"
    rank = "86"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmimemoryactualballoonbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmimemoryavailablebytes_average"
    rank = "87"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmimemoryavailablebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmimemorydomainbytestotal_average"
    rank = "88"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmimemorydomainbytestotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmimemoryswapintrafficbytestotal_average"
    rank = "89"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmimemoryswapintrafficbytestotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmimemoryswapouttrafficbytestotal_average"
    rank = "90"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmimemoryswapouttrafficbytestotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmimemoryunusedbytes_average"
    rank = "91"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmimemoryunusedbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvminetworkreceivepacketstotal_average"
    rank = "92"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvminetworkreceivepacketstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_interface == $metadata_interface)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvminetworktransmitpacketsdroppedtotal_average"
    rank = "93"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvminetworktransmitpacketsdroppedtotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_interface == $metadata_interface)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvminetworktransmitpacketstotal_average"
    rank = "94"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvminetworktransmitpacketstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_interface == $metadata_interface)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmioutdatedcount_average"
    rank = "95"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmioutdatedcount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmiphasecount_average"
    rank = "96"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmiphasecount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_node == $metadata_node)   &&  (metadata_phase == $metadata_phase)   &&  (metadata_workload == $metadata_workload) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmistorageiopsreadtotal_average"
    rank = "97"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmistorageiopsreadtotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_drive == $metadata_drive)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmistorageiopswritetotal_average"
    rank = "98"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmistorageiopswritetotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_drive == $metadata_drive)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmistoragereadtimesmstotal_average"
    rank = "99"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmistoragereadtimesmstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_drive == $metadata_drive)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kubevirtvmistoragewritetimesmstotal_average"
    rank = "100"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kubevirtvmistoragewritetimesmstotal_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_drive == $metadata_drive)   &&  (metadata_name == $metadata_name)   &&  (metadata_node == $metadata_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ncvmicpuaffinity_average"
    rank = "101"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ncvmicpuaffinity_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cpu == $metadata_cpu)   &&  (metadata_numa node == $metadata_numa node)   &&  (metadata_vmi namespace == $metadata_vmi namespace)   &&  (metadata_vmi node == $metadata_vmi node)   &&  (metadata_vmi name == $metadata_vmi name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_typhaconnectionsaccepted_average"
    rank = "102"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_typhaconnectionsaccepted_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_typhaconnectionsdropped_average"
    rank = "103"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_typhaconnectionsdropped_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_typhapinglatencycount_average"
    rank = "104"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_typhapinglatencycount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod name == $metadata_pod name) )  | delta | group_by [], sum
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
    name                     = "metadata_component"
    default_values           = []
    suggestion_attribute_key = "metadata_component"
  }

  template_variable {
    name                     = "metadata_condition"
    default_values           = []
    suggestion_attribute_key = "metadata_condition"
  }

  template_variable {
    name                     = "metadata_container"
    default_values           = []
    suggestion_attribute_key = "metadata_container"
  }

  template_variable {
    name                     = "metadata_container state"
    default_values           = []
    suggestion_attribute_key = "metadata_container state"
  }

  template_variable {
    name                     = "metadata_controller"
    default_values           = []
    suggestion_attribute_key = "metadata_controller"
  }

  template_variable {
    name                     = "metadata_cpu"
    default_values           = []
    suggestion_attribute_key = "metadata_cpu"
  }

  template_variable {
    name                     = "metadata_daemonset"
    default_values           = []
    suggestion_attribute_key = "metadata_daemonset"
  }

  template_variable {
    name                     = "metadata_deployment"
    default_values           = []
    suggestion_attribute_key = "metadata_deployment"
  }

  template_variable {
    name                     = "metadata_device"
    default_values           = []
    suggestion_attribute_key = "metadata_device"
  }

  template_variable {
    name                     = "metadata_drive"
    default_values           = []
    suggestion_attribute_key = "metadata_drive"
  }

  template_variable {
    name                     = "metadata_family"
    default_values           = []
    suggestion_attribute_key = "metadata_family"
  }

  template_variable {
    name                     = "metadata_host"
    default_values           = []
    suggestion_attribute_key = "metadata_host"
  }

  template_variable {
    name                     = "metadata_interface"
    default_values           = []
    suggestion_attribute_key = "metadata_interface"
  }

  template_variable {
    name                     = "metadata_job"
    default_values           = []
    suggestion_attribute_key = "metadata_job"
  }

  template_variable {
    name                     = "metadata_kube version"
    default_values           = []
    suggestion_attribute_key = "metadata_kube version"
  }

  template_variable {
    name                     = "metadata_name"
    default_values           = []
    suggestion_attribute_key = "metadata_name"
  }

  template_variable {
    name                     = "metadata_namespace"
    default_values           = []
    suggestion_attribute_key = "metadata_namespace"
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
    name                     = "metadata_operation type"
    default_values           = []
    suggestion_attribute_key = "metadata_operation type"
  }

  template_variable {
    name                     = "metadata_persistent volume claim"
    default_values           = []
    suggestion_attribute_key = "metadata_persistent volume claim"
  }

  template_variable {
    name                     = "metadata_phase"
    default_values           = []
    suggestion_attribute_key = "metadata_phase"
  }

  template_variable {
    name                     = "metadata_pod"
    default_values           = []
    suggestion_attribute_key = "metadata_pod"
  }

  template_variable {
    name                     = "metadata_pod name"
    default_values           = []
    suggestion_attribute_key = "metadata_pod name"
  }

  template_variable {
    name                     = "metadata_proto"
    default_values           = []
    suggestion_attribute_key = "metadata_proto"
  }

  template_variable {
    name                     = "metadata_rcode"
    default_values           = []
    suggestion_attribute_key = "metadata_rcode"
  }

  template_variable {
    name                     = "metadata_reason"
    default_values           = []
    suggestion_attribute_key = "metadata_reason"
  }

  template_variable {
    name                     = "metadata_resource"
    default_values           = []
    suggestion_attribute_key = "metadata_resource"
  }

  template_variable {
    name                     = "metadata_server"
    default_values           = []
    suggestion_attribute_key = "metadata_server"
  }

  template_variable {
    name                     = "metadata_state"
    default_values           = []
    suggestion_attribute_key = "metadata_state"
  }

  template_variable {
    name                     = "metadata_statefulset"
    default_values           = []
    suggestion_attribute_key = "metadata_statefulset"
  }

  template_variable {
    name                     = "metadata_status"
    default_values           = []
    suggestion_attribute_key = "metadata_status"
  }

  template_variable {
    name                     = "metadata_tier"
    default_values           = []
    suggestion_attribute_key = "metadata_tier"
  }

  template_variable {
    name                     = "metadata_type"
    default_values           = []
    suggestion_attribute_key = "metadata_type"
  }

  template_variable {
    name                     = "metadata_unit"
    default_values           = []
    suggestion_attribute_key = "metadata_unit"
  }

  template_variable {
    name                     = "metadata_vmi name"
    default_values           = []
    suggestion_attribute_key = "metadata_vmi name"
  }

  template_variable {
    name                     = "metadata_vmi namespace"
    default_values           = []
    suggestion_attribute_key = "metadata_vmi namespace"
  }

  template_variable {
    name                     = "metadata_vmi node"
    default_values           = []
    suggestion_attribute_key = "metadata_vmi node"
  }

  template_variable {
    name                     = "metadata_workload"
    default_values           = []
    suggestion_attribute_key = "metadata_workload"
  }


}