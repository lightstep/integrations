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
  description = "OpenTelemetry Collector Network_applicationgateways Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Network_applicationgateways Metrics"
  dashboard_description = "Monitor Network_applicationgateways with this metrics overview dashboard."

  chart {
    name = "azure_applicationgatewaytotaltime_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_applicationgatewaytotaltime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_listener == $metadata_listener) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_avgrequestcountperhealthyhost_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_avgrequestcountperhealthyhost_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_backendsettingspool == $metadata_backendsettingspool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_azwafbotprotection_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_azwafbotprotection_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_action == $metadata_action)   &&  (metadata_category == $metadata_category)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_countrycode == $metadata_countrycode)   &&  (metadata_policyname == $metadata_policyname)   &&  (metadata_policyscope == $metadata_policyscope) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_azwafcustomrule_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_azwafcustomrule_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_action == $metadata_action)   &&  (metadata_customruleid == $metadata_customruleid)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_countrycode == $metadata_countrycode)   &&  (metadata_policyname == $metadata_policyname)   &&  (metadata_policyscope == $metadata_policyscope) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_azwafsecrule_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_azwafsecrule_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_action == $metadata_action)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_rulegroupid == $metadata_rulegroupid)   &&  (metadata_ruleid == $metadata_ruleid)   &&  (metadata_countrycode == $metadata_countrycode)   &&  (metadata_policyname == $metadata_policyname)   &&  (metadata_policyscope == $metadata_policyscope)   &&  (metadata_rulesetname == $metadata_rulesetname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_azwaftotalrequests_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_azwaftotalrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_action == $metadata_action)   &&  (metadata_countrycode == $metadata_countrycode)   &&  (metadata_method == $metadata_method)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_policyname == $metadata_policyname)   &&  (metadata_policyscope == $metadata_policyscope) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_backendconnecttime_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendconnecttime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_listener == $metadata_listener)   &&  (metadata_backendserver == $metadata_backendserver)   &&  (metadata_backendpool == $metadata_backendpool)   &&  (metadata_backendhttpsetting == $metadata_backendhttpsetting) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_backendfirstbyteresponsetime_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendfirstbyteresponsetime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_listener == $metadata_listener)   &&  (metadata_backendserver == $metadata_backendserver)   &&  (metadata_backendpool == $metadata_backendpool)   &&  (metadata_backendhttpsetting == $metadata_backendhttpsetting) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_backendlastbyteresponsetime_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendlastbyteresponsetime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_listener == $metadata_listener)   &&  (metadata_backendserver == $metadata_backendserver)   &&  (metadata_backendpool == $metadata_backendpool)   &&  (metadata_backendhttpsetting == $metadata_backendhttpsetting) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_backendresponsestatus_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendresponsestatus_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_backendserver == $metadata_backendserver)   &&  (metadata_backendpool == $metadata_backendpool)   &&  (metadata_backendhttpsetting == $metadata_backendhttpsetting)   &&  (metadata_httpstatusgroup == $metadata_httpstatusgroup) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_blockedcount_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_blockedcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_rulegroup == $metadata_rulegroup)   &&  (metadata_ruleid == $metadata_ruleid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bytesreceived_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bytesreceived_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_listener == $metadata_listener) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_bytessent_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_bytessent_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_listener == $metadata_listener) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_capacityunits_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_capacityunits_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_clientrtt_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_clientrtt_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_listener == $metadata_listener) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_computeunits_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_computeunits_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpuutilization_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpuutilization_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_currentconnections_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_currentconnections_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_estimatedbilledcapacityunits_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_estimatedbilledcapacityunits_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_failedrequests_total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_failedrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_backendsettingspool == $metadata_backendsettingspool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_fixedbillablecapacityunits_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_fixedbillablecapacityunits_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_healthyhostcount_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_healthyhostcount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_backendsettingspool == $metadata_backendsettingspool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_matchedcount_total"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_matchedcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_rulegroup == $metadata_rulegroup)   &&  (metadata_ruleid == $metadata_ruleid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_newconnectionspersecond_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_newconnectionspersecond_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_responsestatus_total"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_responsestatus_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatusgroup == $metadata_httpstatusgroup) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_throughput_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_throughput_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tlsprotocol_total"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tlsprotocol_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_listener == $metadata_listener)   &&  (metadata_tlsprotocol == $metadata_tlsprotocol) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalrequests_total"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_backendsettingspool == $metadata_backendsettingspool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_unhealthyhostcount_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_unhealthyhostcount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_backendsettingspool == $metadata_backendsettingspool) )  | delta | group_by [], sum
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
    name                     = "metadata_action"
    default_values           = []
    suggestion_attribute_key = "metadata_action"
  }

  template_variable {
    name                     = "metadata_backendhttpsetting"
    default_values           = []
    suggestion_attribute_key = "metadata_backendhttpsetting"
  }

  template_variable {
    name                     = "metadata_backendpool"
    default_values           = []
    suggestion_attribute_key = "metadata_backendpool"
  }

  template_variable {
    name                     = "metadata_backendserver"
    default_values           = []
    suggestion_attribute_key = "metadata_backendserver"
  }

  template_variable {
    name                     = "metadata_backendsettingspool"
    default_values           = []
    suggestion_attribute_key = "metadata_backendsettingspool"
  }

  template_variable {
    name                     = "metadata_category"
    default_values           = []
    suggestion_attribute_key = "metadata_category"
  }

  template_variable {
    name                     = "metadata_countrycode"
    default_values           = []
    suggestion_attribute_key = "metadata_countrycode"
  }

  template_variable {
    name                     = "metadata_customruleid"
    default_values           = []
    suggestion_attribute_key = "metadata_customruleid"
  }

  template_variable {
    name                     = "metadata_httpstatusgroup"
    default_values           = []
    suggestion_attribute_key = "metadata_httpstatusgroup"
  }

  template_variable {
    name                     = "metadata_listener"
    default_values           = []
    suggestion_attribute_key = "metadata_listener"
  }

  template_variable {
    name                     = "metadata_method"
    default_values           = []
    suggestion_attribute_key = "metadata_method"
  }

  template_variable {
    name                     = "metadata_mode"
    default_values           = []
    suggestion_attribute_key = "metadata_mode"
  }

  template_variable {
    name                     = "metadata_policyname"
    default_values           = []
    suggestion_attribute_key = "metadata_policyname"
  }

  template_variable {
    name                     = "metadata_policyscope"
    default_values           = []
    suggestion_attribute_key = "metadata_policyscope"
  }

  template_variable {
    name                     = "metadata_rulegroup"
    default_values           = []
    suggestion_attribute_key = "metadata_rulegroup"
  }

  template_variable {
    name                     = "metadata_rulegroupid"
    default_values           = []
    suggestion_attribute_key = "metadata_rulegroupid"
  }

  template_variable {
    name                     = "metadata_ruleid"
    default_values           = []
    suggestion_attribute_key = "metadata_ruleid"
  }

  template_variable {
    name                     = "metadata_rulesetname"
    default_values           = []
    suggestion_attribute_key = "metadata_rulesetname"
  }

  template_variable {
    name                     = "metadata_tlsprotocol"
    default_values           = []
    suggestion_attribute_key = "metadata_tlsprotocol"
  }


}