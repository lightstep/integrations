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
  description = "OpenTelemetry Collector DocumentDB Database Accounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "DocumentDB Database Accounts Metrics"
  dashboard_description = "Monitor DocumentDB Database Accounts with this metrics overview dashboard."

  chart {
    name = "Total Requests"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequests_count | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_databasename == $metadata_databasename) && (metadata_collectionname == $metadata_collectionname) && (metadata_region == $metadata_region) && (metadata_statuscode == $metadata_statuscode) && (metadata_operationtype == $metadata_operationtype) && (metadata_status == $metadata_status) && (metadata_capacitytype == $metadata_capacitytype)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Document Count"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_documentcount_total | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_collectionname == $metadata_collectionname) && (metadata_databasename == $metadata_databasename) && (metadata_region == $metadata_region)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Data Usage"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_datausage_total | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_collectionname == $metadata_collectionname) && (metadata_databasename == $metadata_databasename) && (metadata_region == $metadata_region)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Service Availability"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serviceavailability_average | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Server Side Latency"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serversidelatency_average | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_databasename == $metadata_databasename) && (metadata_collectionname == $metadata_collectionname) && (metadata_region == $metadata_region) && (metadata_connectionmode == $metadata_connectionmode) && (metadata_operationtype == $metadata_operationtype) && (metadata_publicapitype == $metadata_publicapitype)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Metadata Requests"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_metadatarequests_count | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_databasename == $metadata_databasename) && (metadata_collectionname == $metadata_collectionname) && (metadata_region == $metadata_region) && (metadata_statuscode == $metadata_statuscode) && (metadata_role == $metadata_role)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Provisioned Throughput"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_provisionedthroughput_maximum | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_databasename == $metadata_databasename) && (metadata_collectionname == $metadata_collectionname) && (metadata_allowwrite == $metadata_allowwrite)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Server Side Latency Direct"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_serversidelatencydirect_average | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_databasename == $metadata_databasename) && (metadata_collectionname == $metadata_collectionname) && (metadata_region == $metadata_region) && (metadata_connectionmode == $metadata_connectionmode) && (metadata_operationtype == $metadata_operationtype) && (metadata_publicapitype == $metadata_publicapitype) && (metadata_apitype == $metadata_apitype)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Total Request Units"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequestunits_total | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_databasename == $metadata_databasename) && (metadata_collectionname == $metadata_collectionname) && (metadata_region == $metadata_region) && (metadata_statuscode == $metadata_statuscode) && (metadata_operationtype == $metadata_operationtype) && (metadata_status == $metadata_status) && (metadata_capacitytype == $metadata_capacitytype)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Replication Latency"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_replicationlatency_average | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_sourceregion == $metadata_sourceregion) && (metadata_targetregion == $metadata_targetregion)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Autoscale Max Throughput"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_autoscalemaxthroughput_maximum | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_databasename == $metadata_databasename) && (metadata_collectionname == $metadata_collectionname)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Available Storage"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availablestorage_total | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_collectionname == $metadata_collectionname) && (metadata_databasename == $metadata_databasename) && (metadata_region == $metadata_region)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Table Throughput Update"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tabletablethroughputupdate_count | filter ((azuremonitor.subscription_id == $azuremonitor_subscription_id) && (azuremonitor.tenant_id == $azuremonitor_tenant_id) && (azuremonitor.resource_id == $azuremonitor_resource_id) && (location == $location) && (metadata_resourcename == $metadata_resourcename) && (metadata_apikind == $metadata_apikind) && (metadata_apikindresourcetype == $metadata_apikindresourcetype) && (metadata_isthroughputrequest == $metadata_isthroughputrequest)) | delta | group_by [], sum
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
    name                     = "metadata_capacitytype"
    default_values           = []
    suggestion_attribute_key = "metadata_capacitytype"
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
    name                     = "metadata_isthroughputrequest"
    default_values           = []
    suggestion_attribute_key = "metadata_isthroughputrequest"
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
    name                     = "metadata_resourcename"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcename"
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
    name                     = "metadata_targetregion"
    default_values           = []
    suggestion_attribute_key = "metadata_targetregion"
  }
}
