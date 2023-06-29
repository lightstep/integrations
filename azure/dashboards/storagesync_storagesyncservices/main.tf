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
  description = "OpenTelemetry Collector Storagesync_storagesyncservices Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Storagesync_storagesyncservices Metrics"
  dashboard_description = "Monitor Storagesync_storagesyncservices with this metrics overview dashboard."

  chart {
    name = "azure_serversyncsessionresult_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serversyncsessionresult_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_serverendpointname == $metadata_serverendpointname)   &&  (metadata_syncdirection == $metadata_syncdirection) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncbatchtransferredfilebytes_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncbatchtransferredfilebytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_serverendpointname == $metadata_serverendpointname)   &&  (metadata_syncdirection == $metadata_syncdirection) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesynccomputedcachehitrate_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesynccomputedcachehitrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_serverendpointname == $metadata_serverendpointname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncdatasizebyaccesspattern_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncdatasizebyaccesspattern_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_serverendpointname == $metadata_serverendpointname)   &&  (metadata_lastaccesstime == $metadata_lastaccesstime) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncincrementaltiereddatasizebytes_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncincrementaltiereddatasizebytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_serverendpointname == $metadata_serverendpointname)   &&  (metadata_tieringreason == $metadata_tieringreason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncrecallcomputedsuccessrate_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncrecallcomputedsuccessrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_serverendpointname == $metadata_serverendpointname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncrecallednetworkbytesbyapplication_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncrecallednetworkbytesbyapplication_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_applicationname == $metadata_applicationname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncrecalledtotalnetworkbytes_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncrecalledtotalnetworkbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_serverendpointname == $metadata_serverendpointname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncrecallthroughputbytespersecond_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncrecallthroughputbytespersecond_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_serverendpointname == $metadata_serverendpointname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncserverheartbeat_maximum"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncserverheartbeat_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_servername == $metadata_servername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncsyncsessionappliedfilescount_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncsyncsessionappliedfilescount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_serverendpointname == $metadata_serverendpointname)   &&  (metadata_syncdirection == $metadata_syncdirection) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesyncsyncsessionperitemerrorscount_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesyncsyncsessionperitemerrorscount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_serverendpointname == $metadata_serverendpointname)   &&  (metadata_syncdirection == $metadata_syncdirection) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesynctiereddatasizebytes_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesynctiereddatasizebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_serverendpointname == $metadata_serverendpointname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storagesynctieringcachesizebytes_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storagesynctieringcachesizebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_syncgroupname == $metadata_syncgroupname)   &&  (metadata_servername == $metadata_servername)   &&  (metadata_serverendpointname == $metadata_serverendpointname) )  | delta | group_by [], sum
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
    name                     = "metadata_applicationname"
    default_values           = []
    suggestion_attribute_key = "metadata_applicationname"
  }

  template_variable {
    name                     = "metadata_lastaccesstime"
    default_values           = []
    suggestion_attribute_key = "metadata_lastaccesstime"
  }

  template_variable {
    name                     = "metadata_serverendpointname"
    default_values           = []
    suggestion_attribute_key = "metadata_serverendpointname"
  }

  template_variable {
    name                     = "metadata_servername"
    default_values           = []
    suggestion_attribute_key = "metadata_servername"
  }

  template_variable {
    name                     = "metadata_syncdirection"
    default_values           = []
    suggestion_attribute_key = "metadata_syncdirection"
  }

  template_variable {
    name                     = "metadata_syncgroupname"
    default_values           = []
    suggestion_attribute_key = "metadata_syncgroupname"
  }

  template_variable {
    name                     = "metadata_tieringreason"
    default_values           = []
    suggestion_attribute_key = "metadata_tieringreason"
  }


}