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
  description = "OpenTelemetry Collector Documentdb_databaseaccounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Documentdb_databaseaccounts Metrics"
  dashboard_description = "Monitor Documentdb_databaseaccounts with this metrics overview dashboard."

  chart {
    name = "azure_addregion_count"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_addregion_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_autoscalemaxthroughput_maximum"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_autoscalemaxthroughput_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_availablestorage_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availablestorage_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandraconnectionclosures_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandraconnectionclosures_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apitype == $metadata_apitype)   &&  (metadata_region == $metadata_region)   &&  (metadata_closurereason == $metadata_closurereason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandraconnectoravgreplicationlatency_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandraconnectoravgreplicationlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandraconnectorreplicationhealthstatus_count"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandraconnectorreplicationhealthstatus_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_notstarted == $metadata_notstarted)   &&  (metadata_replicationinprogress == $metadata_replicationinprogress)   &&  (metadata_error == $metadata_error) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandrakeyspacecreate_count"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandrakeyspacecreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandrakeyspacedelete_count"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandrakeyspacedelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandrakeyspacethroughputupdate_count"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandrakeyspacethroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandrakeyspaceupdate_count"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandrakeyspaceupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandrarequestcharges_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandrarequestcharges_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apitype == $metadata_apitype)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_resourcetype == $metadata_resourcetype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandrarequests_count"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandrarequests_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apitype == $metadata_apitype)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_resourcetype == $metadata_resourcetype)   &&  (metadata_errorcode == $metadata_errorcode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandratablecreate_count"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandratablecreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandratabledelete_count"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandratabledelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandratablethroughputupdate_count"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandratablethroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandratableupdate_count"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandratableupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_createaccount_count"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_createaccount_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_datausage_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_datausage_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dedicatedgatewayaveragecpuusage_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dedicatedgatewayaveragecpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_metrictype == $metadata_metrictype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dedicatedgatewayaveragememoryusage_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dedicatedgatewayaveragememoryusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dedicatedgatewaycpuusage_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dedicatedgatewaycpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_applicationtype == $metadata_applicationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dedicatedgatewaymaximumcpuusage_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dedicatedgatewaymaximumcpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_metrictype == $metadata_metrictype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dedicatedgatewaymemoryusage_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dedicatedgatewaymemoryusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_applicationtype == $metadata_applicationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dedicatedgatewayrequests_count"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dedicatedgatewayrequests_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_cacheexercised == $metadata_cacheexercised)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_cachehit == $metadata_cachehit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deleteaccount_count"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deleteaccount_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_documentcount_total"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_documentcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_documentquota_total"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_documentquota_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlindatabasecreate_count"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlindatabasecreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlindatabasedelete_count"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlindatabasedelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlindatabasethroughputupdate_count"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlindatabasethroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlindatabaseupdate_count"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlindatabaseupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlingraphcreate_count"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlingraphcreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlingraphdelete_count"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlingraphdelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlingraphthroughputupdate_count"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlingraphthroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlingraphupdate_count"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlingraphupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlinrequestcharges_total"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlinrequestcharges_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apitype == $metadata_apitype)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gremlinrequests_count"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gremlinrequests_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apitype == $metadata_apitype)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_errorcode == $metadata_errorcode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_indexusage_total"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_indexusage_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integratedcacheevictedentriessize_average"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integratedcacheevictedentriessize_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integratedcacheitemexpirationcount_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integratedcacheitemexpirationcount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_cacheentrytype == $metadata_cacheentrytype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integratedcacheitemhitrate_average"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integratedcacheitemhitrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_cacheentrytype == $metadata_cacheentrytype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integratedcachequeryexpirationcount_average"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integratedcachequeryexpirationcount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_cacheentrytype == $metadata_cacheentrytype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integratedcachequeryhitrate_average"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integratedcachequeryhitrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_cacheentrytype == $metadata_cacheentrytype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_materializedviewcatchupgapinminutes_maximum"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_materializedviewcatchupgapinminutes_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_targetcontainername == $metadata_targetcontainername)   &&  (metadata_buildtype == $metadata_buildtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_materializedviewsbuilderaveragecpuusage_average"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_materializedviewsbuilderaveragecpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_metrictype == $metadata_metrictype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_materializedviewsbuilderaveragememoryusage_average"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_materializedviewsbuilderaveragememoryusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_materializedviewsbuildermaximumcpuusage_average"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_materializedviewsbuildermaximumcpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_metrictype == $metadata_metrictype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_metadatarequests_count"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_metadatarequests_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_role == $metadata_role) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongocollectioncreate_count"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongocollectioncreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongocollectiondelete_count"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongocollectiondelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongocollectionthroughputupdate_count"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongocollectionthroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongocollectionupdate_count"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongocollectionupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongodatabasedelete_count"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongodatabasedelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongodatabasethroughputupdate_count"
    rank = "53"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongodatabasethroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongodbdatabasecreate_count"
    rank = "54"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongodbdatabasecreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongodbdatabaseupdate_count"
    rank = "55"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongodbdatabaseupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongorequestcharge_total"
    rank = "56"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongorequestcharge_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_commandname == $metadata_commandname)   &&  (metadata_errorcode == $metadata_errorcode)   &&  (metadata_status == $metadata_status) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mongorequests_count"
    rank = "57"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mongorequests_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_commandname == $metadata_commandname)   &&  (metadata_errorcode == $metadata_errorcode)   &&  (metadata_status == $metadata_status) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_normalizedruconsumption_maximum"
    rank = "58"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_normalizedruconsumption_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_region == $metadata_region)   &&  (metadata_partitionkeyrangeid == $metadata_partitionkeyrangeid)   &&  (metadata_collectionrid == $metadata_collectionrid)   &&  (metadata_physicalpartitionid == $metadata_physicalpartitionid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_offlineregion_count"
    rank = "59"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_offlineregion_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_role == $metadata_role)   &&  (metadata_operationname == $metadata_operationname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_onlineregion_count"
    rank = "60"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_onlineregion_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_role == $metadata_role)   &&  (metadata_operationname == $metadata_operationname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_physicalpartitionsizeinfo_maximum"
    rank = "61"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_physicalpartitionsizeinfo_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_physicalpartitionid == $metadata_physicalpartitionid)   &&  (metadata_offerownerrid == $metadata_offerownerrid)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_physicalpartitionthroughputinfo_maximum"
    rank = "62"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_physicalpartitionthroughputinfo_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_physicalpartitionid == $metadata_physicalpartitionid)   &&  (metadata_offerownerrid == $metadata_offerownerrid)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_provisionedthroughput_maximum"
    rank = "63"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_provisionedthroughput_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_allowwrite == $metadata_allowwrite) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_regionfailover_count"
    rank = "64"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_regionfailover_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_removeregion_count"
    rank = "65"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_removeregion_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_replicationlatency_average"
    rank = "66"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_replicationlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sourceregion == $metadata_sourceregion)   &&  (metadata_targetregion == $metadata_targetregion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_serversidelatency_average"
    rank = "67"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serversidelatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_connectionmode == $metadata_connectionmode)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_publicapitype == $metadata_publicapitype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_serversidelatencydirect_average"
    rank = "68"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serversidelatencydirect_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_connectionmode == $metadata_connectionmode)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_publicapitype == $metadata_publicapitype)   &&  (metadata_apitype == $metadata_apitype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_serversidelatencygateway_average"
    rank = "69"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serversidelatencygateway_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_connectionmode == $metadata_connectionmode)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_publicapitype == $metadata_publicapitype)   &&  (metadata_apitype == $metadata_apitype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_serviceavailability_average"
    rank = "70"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serviceavailability_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlcontainercreate_count"
    rank = "71"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlcontainercreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlcontainerdelete_count"
    rank = "72"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlcontainerdelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlcontainerthroughputupdate_count"
    rank = "73"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlcontainerthroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlcontainerupdate_count"
    rank = "74"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlcontainerupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_childresourcename == $metadata_childresourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqldatabasecreate_count"
    rank = "75"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqldatabasecreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqldatabasedelete_count"
    rank = "76"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqldatabasedelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqldatabasethroughputupdate_count"
    rank = "77"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqldatabasethroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqldatabaseupdate_count"
    rank = "78"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqldatabaseupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tabletablecreate_count"
    rank = "79"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tabletablecreate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tabletabledelete_count"
    rank = "80"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tabletabledelete_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tabletablethroughputupdate_count"
    rank = "81"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tabletablethroughputupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tabletableupdate_count"
    rank = "82"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tabletableupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_apikind == $metadata_apikind)   &&  (metadata_apikindresourcetype == $metadata_apikindresourcetype)   &&  (metadata_isthroughputrequest == $metadata_isthroughputrequest)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalrequests_count"
    rank = "83"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequests_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_status == $metadata_status)   &&  (metadata_capacitytype == $metadata_capacitytype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalrequestspreview_count"
    rank = "84"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequestspreview_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_status == $metadata_status)   &&  (metadata_isexternal == $metadata_isexternal) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalrequestunits_total"
    rank = "85"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequestunits_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_status == $metadata_status)   &&  (metadata_capacitytype == $metadata_capacitytype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalrequestunitspreview_total"
    rank = "86"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequestunitspreview_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_databasename == $metadata_databasename)   &&  (metadata_collectionname == $metadata_collectionname)   &&  (metadata_region == $metadata_region)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_status == $metadata_status)   &&  (metadata_capacitytype == $metadata_capacitytype)   &&  (metadata_prioritylevel == $metadata_prioritylevel) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_updateaccountkeys_count"
    rank = "87"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_updateaccountkeys_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_keytype == $metadata_keytype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_updateaccountnetworksettings_count"
    rank = "88"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_updateaccountnetworksettings_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_updateaccountreplicationsettings_count"
    rank = "89"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_updateaccountreplicationsettings_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_updatediagnosticssettings_count"
    rank = "90"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_updatediagnosticssettings_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_diagnosticsettingsname == $metadata_diagnosticsettingsname)   &&  (metadata_resourcegroupname == $metadata_resourcegroupname) )  | delta | group_by [], sum
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
    name                     = "metadata_allowwrite"
    default_values           = []
    suggestion_attribute_key = "metadata_allowwrite"
  }

  template_variable {
    name                     = "metadata_apikind"
    default_values           = []
    suggestion_attribute_key = "metadata_apikind"
  }

  template_variable {
    name                     = "metadata_apikindresourcetype"
    default_values           = []
    suggestion_attribute_key = "metadata_apikindresourcetype"
  }

  template_variable {
    name                     = "metadata_apitype"
    default_values           = []
    suggestion_attribute_key = "metadata_apitype"
  }

  template_variable {
    name                     = "metadata_applicationtype"
    default_values           = []
    suggestion_attribute_key = "metadata_applicationtype"
  }

  template_variable {
    name                     = "metadata_buildtype"
    default_values           = []
    suggestion_attribute_key = "metadata_buildtype"
  }

  template_variable {
    name                     = "metadata_cacheentrytype"
    default_values           = []
    suggestion_attribute_key = "metadata_cacheentrytype"
  }

  template_variable {
    name                     = "metadata_cacheexercised"
    default_values           = []
    suggestion_attribute_key = "metadata_cacheexercised"
  }

  template_variable {
    name                     = "metadata_cachehit"
    default_values           = []
    suggestion_attribute_key = "metadata_cachehit"
  }

  template_variable {
    name                     = "metadata_capacitytype"
    default_values           = []
    suggestion_attribute_key = "metadata_capacitytype"
  }

  template_variable {
    name                     = "metadata_childresourcename"
    default_values           = []
    suggestion_attribute_key = "metadata_childresourcename"
  }

  template_variable {
    name                     = "metadata_closurereason"
    default_values           = []
    suggestion_attribute_key = "metadata_closurereason"
  }

  template_variable {
    name                     = "metadata_collectionname"
    default_values           = []
    suggestion_attribute_key = "metadata_collectionname"
  }

  template_variable {
    name                     = "metadata_collectionrid"
    default_values           = []
    suggestion_attribute_key = "metadata_collectionrid"
  }

  template_variable {
    name                     = "metadata_commandname"
    default_values           = []
    suggestion_attribute_key = "metadata_commandname"
  }

  template_variable {
    name                     = "metadata_connectionmode"
    default_values           = []
    suggestion_attribute_key = "metadata_connectionmode"
  }

  template_variable {
    name                     = "metadata_databasename"
    default_values           = []
    suggestion_attribute_key = "metadata_databasename"
  }

  template_variable {
    name                     = "metadata_diagnosticsettingsname"
    default_values           = []
    suggestion_attribute_key = "metadata_diagnosticsettingsname"
  }

  template_variable {
    name                     = "metadata_error"
    default_values           = []
    suggestion_attribute_key = "metadata_error"
  }

  template_variable {
    name                     = "metadata_errorcode"
    default_values           = []
    suggestion_attribute_key = "metadata_errorcode"
  }

  template_variable {
    name                     = "metadata_isexternal"
    default_values           = []
    suggestion_attribute_key = "metadata_isexternal"
  }

  template_variable {
    name                     = "metadata_isthroughputrequest"
    default_values           = []
    suggestion_attribute_key = "metadata_isthroughputrequest"
  }

  template_variable {
    name                     = "metadata_keytype"
    default_values           = []
    suggestion_attribute_key = "metadata_keytype"
  }

  template_variable {
    name                     = "metadata_metrictype"
    default_values           = []
    suggestion_attribute_key = "metadata_metrictype"
  }

  template_variable {
    name                     = "metadata_notstarted"
    default_values           = []
    suggestion_attribute_key = "metadata_notstarted"
  }

  template_variable {
    name                     = "metadata_offerownerrid"
    default_values           = []
    suggestion_attribute_key = "metadata_offerownerrid"
  }

  template_variable {
    name                     = "metadata_operationname"
    default_values           = []
    suggestion_attribute_key = "metadata_operationname"
  }

  template_variable {
    name                     = "metadata_operationtype"
    default_values           = []
    suggestion_attribute_key = "metadata_operationtype"
  }

  template_variable {
    name                     = "metadata_partitionkeyrangeid"
    default_values           = []
    suggestion_attribute_key = "metadata_partitionkeyrangeid"
  }

  template_variable {
    name                     = "metadata_physicalpartitionid"
    default_values           = []
    suggestion_attribute_key = "metadata_physicalpartitionid"
  }

  template_variable {
    name                     = "metadata_prioritylevel"
    default_values           = []
    suggestion_attribute_key = "metadata_prioritylevel"
  }

  template_variable {
    name                     = "metadata_publicapitype"
    default_values           = []
    suggestion_attribute_key = "metadata_publicapitype"
  }

  template_variable {
    name                     = "metadata_region"
    default_values           = []
    suggestion_attribute_key = "metadata_region"
  }

  template_variable {
    name                     = "metadata_replicationinprogress"
    default_values           = []
    suggestion_attribute_key = "metadata_replicationinprogress"
  }

  template_variable {
    name                     = "metadata_resourcegroupname"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcegroupname"
  }

  template_variable {
    name                     = "metadata_resourcename"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcename"
  }

  template_variable {
    name                     = "metadata_resourcetype"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcetype"
  }

  template_variable {
    name                     = "metadata_role"
    default_values           = []
    suggestion_attribute_key = "metadata_role"
  }

  template_variable {
    name                     = "metadata_sourceregion"
    default_values           = []
    suggestion_attribute_key = "metadata_sourceregion"
  }

  template_variable {
    name                     = "metadata_status"
    default_values           = []
    suggestion_attribute_key = "metadata_status"
  }

  template_variable {
    name                     = "metadata_statuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscode"
  }

  template_variable {
    name                     = "metadata_targetcontainername"
    default_values           = []
    suggestion_attribute_key = "metadata_targetcontainername"
  }

  template_variable {
    name                     = "metadata_targetregion"
    default_values           = []
    suggestion_attribute_key = "metadata_targetregion"
  }


}