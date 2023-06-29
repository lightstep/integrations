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
  description = "OpenTelemetry Collector Appplatform_spring Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Appplatform_spring Metrics"
  dashboard_description = "Monitor Appplatform_spring with this metrics overview dashboard."

  chart {
    name = "azure_active-timer-count_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_active-timer-count_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_alloc-rate_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_alloc-rate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_appcpuusage_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_appcpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_assembly-count_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_assembly-count_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpu-usage_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpu-usage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_current-requests_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_current-requests_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_exception-count_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_exception-count_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_failed-requests_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_failed-requests_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayhttpserverrequestsmillisecondsmax_maximum"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayhttpserverrequestsmillisecondsmax_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_httpstatuscode == $metadata_httpstatuscode)   &&  (metadata_outcome == $metadata_outcome)   &&  (metadata_httpmethod == $metadata_httpmethod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayhttpserverrequestsmillisecondssum_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayhttpserverrequestsmillisecondssum_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_httpstatuscode == $metadata_httpstatuscode)   &&  (metadata_outcome == $metadata_outcome)   &&  (metadata_httpmethod == $metadata_httpmethod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayhttpserverrequestssecondscount_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayhttpserverrequestssecondscount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod)   &&  (metadata_httpstatuscode == $metadata_httpstatuscode)   &&  (metadata_outcome == $metadata_outcome)   &&  (metadata_httpmethod == $metadata_httpmethod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmgclivedatasizebytes_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmgclivedatasizebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmgcmaxdatasizebytes_maximum"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmgcmaxdatasizebytes_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmgcmemoryallocatedbytestotal_maximum"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmgcmemoryallocatedbytestotal_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmgcmemorypromotedbytestotal_maximum"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmgcmemorypromotedbytestotal_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmgcpausesecondscount_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmgcpausesecondscount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmgcpausesecondsmax_maximum"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmgcpausesecondsmax_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmgcpausesecondssum_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmgcpausesecondssum_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmmemorycommittedbytes_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmmemorycommittedbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayjvmmemoryusedbytes_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayjvmmemoryusedbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayprocesscpuusage_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayprocesscpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayratelimitthrottledcount_total"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayratelimitthrottledcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewaysystemcpuusage_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewaysystemcpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gc-heap-size_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gc-heap-size_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gen-0-gc-count_average"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gen-0-gc-count_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gen-0-size_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gen-0-size_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gen-1-gc-count_average"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gen-1-gc-count_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gen-1-size_average"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gen-1-size_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gen-2-gc-count_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gen-2-gc-count_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gen-2-size_average"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gen-2-size_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingressbytesreceived_average"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressbytesreceived_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingressbytesreceivedrate_average"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressbytesreceivedrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingressbytessent_average"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressbytessent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingressbytessentrate_average"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressbytessentrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingressfailedrequests_average"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressfailedrequests_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingressrequests_average"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressrequests_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingressresponsestatus_average"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressresponsestatus_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingressresponsetime_average"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingressresponsetime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.gc.live.data.size_average"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.gc.live.data.size_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.gc.max.data.size_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.gc.max.data.size_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.gc.memory.allocated_maximum"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.gc.memory.allocated_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.gc.memory.promoted_maximum"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.gc.memory.promoted_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.gc.pause.total.count_total"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.gc.pause.total.count_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.gc.pause.total.time_total"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.gc.pause.total.time_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.memory.committed_average"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.memory.committed_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.memory.max_maximum"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.memory.max_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_jvm.memory.used_average"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_jvm.memory.used_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_loh-size_average"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_loh-size_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_monitor-lock-contention-count_average"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_monitor-lock-contention-count_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_podcpuusage_average"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_podcpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_podmemoryusage_average"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_podmemoryusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_podnetworkin_average"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_podnetworkin_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_podnetworkout_average"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_podnetworkout_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_process.cpu.usage_average"
    rank = "53"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_process.cpu.usage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requests_total"
    rank = "54"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_containerappname == $metadata_containerappname)   &&  (metadata_podname == $metadata_podname)   &&  (metadata_statuscodecategory == $metadata_statuscodecategory)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requests-per-second_average"
    rank = "55"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requests-per-second_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_restartcount_maximum"
    rank = "56"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_restartcount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_containerappname == $metadata_containerappname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_rxbytes_total"
    rank = "57"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_rxbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_containerappname == $metadata_containerappname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_system.cpu.usage_average"
    rank = "58"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_system.cpu.usage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_threadpool-completed-items-count_average"
    rank = "59"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_threadpool-completed-items-count_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_threadpool-queue-length_average"
    rank = "60"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_threadpool-queue-length_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_threadpool-thread-count_average"
    rank = "61"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_threadpool-thread-count_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_time-in-gc_average"
    rank = "62"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_time-in-gc_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.global.error_total"
    rank = "63"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.global.error_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.global.received_total"
    rank = "64"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.global.received_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.global.request.avg.time_average"
    rank = "65"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.global.request.avg.time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.global.request.max_maximum"
    rank = "66"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.global.request.max_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.global.request.total.count_total"
    rank = "67"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.global.request.total.count_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.global.request.total.time_total"
    rank = "68"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.global.request.total.time_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.global.sent_total"
    rank = "69"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.global.sent_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.sessions.active.current_total"
    rank = "70"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.sessions.active.current_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.sessions.active.max_total"
    rank = "71"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.sessions.active.max_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.sessions.alive.max_maximum"
    rank = "72"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.sessions.alive.max_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.sessions.created_total"
    rank = "73"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.sessions.created_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.sessions.expired_total"
    rank = "74"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.sessions.expired_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.sessions.rejected_total"
    rank = "75"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.sessions.rejected_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.threads.config.max_total"
    rank = "76"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.threads.config.max_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tomcat.threads.current_total"
    rank = "77"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tomcat.threads.current_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_total-requests_average"
    rank = "78"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_total-requests_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_txbytes_total"
    rank = "79"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_txbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_containerappname == $metadata_containerappname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_usagenanocores_average"
    rank = "80"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_usagenanocores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_containerappname == $metadata_containerappname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_working-set_average"
    rank = "81"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_working-set_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_deployment == $metadata_deployment)   &&  (metadata_appname == $metadata_appname)   &&  (metadata_pod == $metadata_pod) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_workingsetbytes_average"
    rank = "82"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_workingsetbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_containerappname == $metadata_containerappname)   &&  (metadata_podname == $metadata_podname) )  | delta | group_by [], sum
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
    name                     = "metadata_appname"
    default_values           = []
    suggestion_attribute_key = "metadata_appname"
  }

  template_variable {
    name                     = "metadata_containerappname"
    default_values           = []
    suggestion_attribute_key = "metadata_containerappname"
  }

  template_variable {
    name                     = "metadata_deployment"
    default_values           = []
    suggestion_attribute_key = "metadata_deployment"
  }

  template_variable {
    name                     = "metadata_hostname"
    default_values           = []
    suggestion_attribute_key = "metadata_hostname"
  }

  template_variable {
    name                     = "metadata_httpmethod"
    default_values           = []
    suggestion_attribute_key = "metadata_httpmethod"
  }

  template_variable {
    name                     = "metadata_httpstatus"
    default_values           = []
    suggestion_attribute_key = "metadata_httpstatus"
  }

  template_variable {
    name                     = "metadata_httpstatuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_httpstatuscode"
  }

  template_variable {
    name                     = "metadata_outcome"
    default_values           = []
    suggestion_attribute_key = "metadata_outcome"
  }

  template_variable {
    name                     = "metadata_pod"
    default_values           = []
    suggestion_attribute_key = "metadata_pod"
  }

  template_variable {
    name                     = "metadata_podname"
    default_values           = []
    suggestion_attribute_key = "metadata_podname"
  }

  template_variable {
    name                     = "metadata_statuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscode"
  }

  template_variable {
    name                     = "metadata_statuscodecategory"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscodecategory"
  }


}