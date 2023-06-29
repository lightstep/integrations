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
  description = "OpenTelemetry Collector Storage_storageaccounts_fileservices Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Storage_storageaccounts_fileservices Metrics"
  dashboard_description = "Monitor Storage_storageaccounts_fileservices with this metrics overview dashboard."

  chart {
    name = "azure_availability_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availability_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_geotype == $metadata_geotype)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_authentication == $metadata_authentication)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_egress_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_egress_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_geotype == $metadata_geotype)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_authentication == $metadata_authentication)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_filecapacity_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_filecapacity_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fileshare == $metadata_fileshare)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_filecount_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_filecount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fileshare == $metadata_fileshare)   &&  (metadata_tier == $metadata_tier) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_filesharecapacityquota_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_filesharecapacityquota_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_filesharecount_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_filesharecount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_fileshareprovisionediops_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_fileshareprovisionediops_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_filesharesnapshotcount_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_filesharesnapshotcount_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_filesharesnapshotsize_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_filesharesnapshotsize_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ingress_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ingress_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_geotype == $metadata_geotype)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_authentication == $metadata_authentication)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successe2elatency_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successe2elatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_geotype == $metadata_geotype)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_authentication == $metadata_authentication)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successserverlatency_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successserverlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_geotype == $metadata_geotype)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_authentication == $metadata_authentication)   &&  (metadata_fileshare == $metadata_fileshare) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_transactions_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_transactions_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_responsetype == $metadata_responsetype)   &&  (metadata_geotype == $metadata_geotype)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_authentication == $metadata_authentication)   &&  (metadata_fileshare == $metadata_fileshare)   &&  (metadata_transactiontype == $metadata_transactiontype) )  | delta | group_by [], sum
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
    name                     = "metadata_apiname"
    default_values           = []
    suggestion_attribute_key = "metadata_apiname"
  }

  template_variable {
    name                     = "metadata_authentication"
    default_values           = []
    suggestion_attribute_key = "metadata_authentication"
  }

  template_variable {
    name                     = "metadata_fileshare"
    default_values           = []
    suggestion_attribute_key = "metadata_fileshare"
  }

  template_variable {
    name                     = "metadata_geotype"
    default_values           = []
    suggestion_attribute_key = "metadata_geotype"
  }

  template_variable {
    name                     = "metadata_responsetype"
    default_values           = []
    suggestion_attribute_key = "metadata_responsetype"
  }

  template_variable {
    name                     = "metadata_tier"
    default_values           = []
    suggestion_attribute_key = "metadata_tier"
  }

  template_variable {
    name                     = "metadata_transactiontype"
    default_values           = []
    suggestion_attribute_key = "metadata_transactiontype"
  }


}