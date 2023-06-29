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
  description = "OpenTelemetry Collector Kubernetesconfiguration_extensions Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Kubernetesconfiguration_extensions Metrics"
  dashboard_description = "Monitor Kubernetesconfiguration_extensions with this metrics overview dashboard."

  chart {
    name = "azure_activesessioncount_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_activesessioncount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_authattempt_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_authattempt_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_authfailure_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_authfailure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_result == $metadata_result) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_authsuccess_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_authsuccess_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_connectednodebs_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_connectednodebs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deregistrationattempt_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deregistrationattempt_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deregistrationsuccess_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deregistrationsuccess_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pagingattempt_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pagingattempt_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pagingfailure_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pagingfailure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_provisionedsubscribers_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_provisionedsubscribers_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ransetupfailure_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ransetupfailure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_cause == $metadata_cause) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ransetuprequest_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ransetuprequest_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ransetupresponse_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ransetupresponse_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_registeredsubscribers_total"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_registeredsubscribers_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_registeredsubscribersconnected_total"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_registeredsubscribersconnected_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_registeredsubscribersidle_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_registeredsubscribersidle_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_registrationattempt_total"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_registrationattempt_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_registrationfailure_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_registrationfailure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_result == $metadata_result) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_registrationsuccess_total"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_registrationsuccess_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_servicerequestattempt_total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_servicerequestattempt_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_servicerequestfailure_total"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_servicerequestfailure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_result == $metadata_result)   &&  (metadata_tai == $metadata_tai) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_servicerequestsuccess_total"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_servicerequestsuccess_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sessionestablishmentattempt_total"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sessionestablishmentattempt_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_dnn == $metadata_dnn) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sessionestablishmentfailure_total"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sessionestablishmentfailure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_dnn == $metadata_dnn) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sessionestablishmentsuccess_total"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sessionestablishmentsuccess_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_dnn == $metadata_dnn) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sessionrelease_total"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sessionrelease_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_uecontextreleasecommand_total"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_uecontextreleasecommand_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_uecontextreleasecomplete_total"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_uecontextreleasecomplete_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_uecontextreleaserequest_total"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_uecontextreleaserequest_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_userplanebandwidth_total"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_userplanebandwidth_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pcdpid == $metadata_pcdpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_direction == $metadata_direction)   &&  (metadata_interface == $metadata_interface) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_userplanepacketdroprate_total"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_userplanepacketdroprate_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pcdpid == $metadata_pcdpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_cause == $metadata_cause)   &&  (metadata_direction == $metadata_direction)   &&  (metadata_interface == $metadata_interface) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_userplanepacketrate_total"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_userplanepacketrate_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_pcdpid == $metadata_pcdpid)   &&  (metadata_siteid == $metadata_siteid)   &&  (metadata_direction == $metadata_direction)   &&  (metadata_interface == $metadata_interface) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_xnhandoverattempt_total"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_xnhandoverattempt_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_xnhandoverfailure_total"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_xnhandoverfailure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_xnhandoversuccess_total"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_xnhandoversuccess_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_3gppgen == $metadata_3gppgen)   &&  (metadata_pccpid == $metadata_pccpid)   &&  (metadata_siteid == $metadata_siteid) )  | delta | group_by [], sum
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
    name                     = "metadata_3gppgen"
    default_values           = []
    suggestion_attribute_key = "metadata_3gppgen"
  }

  template_variable {
    name                     = "metadata_cause"
    default_values           = []
    suggestion_attribute_key = "metadata_cause"
  }

  template_variable {
    name                     = "metadata_direction"
    default_values           = []
    suggestion_attribute_key = "metadata_direction"
  }

  template_variable {
    name                     = "metadata_dnn"
    default_values           = []
    suggestion_attribute_key = "metadata_dnn"
  }

  template_variable {
    name                     = "metadata_interface"
    default_values           = []
    suggestion_attribute_key = "metadata_interface"
  }

  template_variable {
    name                     = "metadata_pccpid"
    default_values           = []
    suggestion_attribute_key = "metadata_pccpid"
  }

  template_variable {
    name                     = "metadata_pcdpid"
    default_values           = []
    suggestion_attribute_key = "metadata_pcdpid"
  }

  template_variable {
    name                     = "metadata_result"
    default_values           = []
    suggestion_attribute_key = "metadata_result"
  }

  template_variable {
    name                     = "metadata_siteid"
    default_values           = []
    suggestion_attribute_key = "metadata_siteid"
  }

  template_variable {
    name                     = "metadata_tai"
    default_values           = []
    suggestion_attribute_key = "metadata_tai"
  }


}