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
  description = "OpenTelemetry Collector Cloudtest_pools Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Cloudtest_pools Metrics"
  dashboard_description = "Monitor Cloudtest_pools with this metrics overview dashboard."

  chart {
    name = "azure_allocated_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_allocated_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_sku == $metadata_sku)   &&  (metadata_images == $metadata_images)   &&  (metadata_providername == $metadata_providername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_allocationdurationms_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_allocationdurationms_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_type == $metadata_type)   &&  (metadata_resourcerequesttype == $metadata_resourcerequesttype)   &&  (metadata_image == $metadata_image) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_count_count"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_requesttype == $metadata_requesttype)   &&  (metadata_status == $metadata_status)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_type == $metadata_type)   &&  (metadata_errorcode == $metadata_errorcode)   &&  (metadata_failurestage == $metadata_failurestage) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_notready_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_notready_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_sku == $metadata_sku)   &&  (metadata_images == $metadata_images)   &&  (metadata_providername == $metadata_providername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pendingreimage_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pendingreimage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_sku == $metadata_sku)   &&  (metadata_images == $metadata_images)   &&  (metadata_providername == $metadata_providername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pendingreturn_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pendingreturn_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_sku == $metadata_sku)   &&  (metadata_images == $metadata_images)   &&  (metadata_providername == $metadata_providername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_provisioned_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_provisioned_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_sku == $metadata_sku)   &&  (metadata_images == $metadata_images)   &&  (metadata_providername == $metadata_providername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ready_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ready_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_sku == $metadata_sku)   &&  (metadata_images == $metadata_images)   &&  (metadata_providername == $metadata_providername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_starting_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_starting_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_sku == $metadata_sku)   &&  (metadata_images == $metadata_images)   &&  (metadata_providername == $metadata_providername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_total_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_total_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_poolid == $metadata_poolid)   &&  (metadata_sku == $metadata_sku)   &&  (metadata_images == $metadata_images)   &&  (metadata_providername == $metadata_providername) )  | delta | group_by [], sum
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
    name                     = "metadata_errorcode"
    default_values           = []
    suggestion_attribute_key = "metadata_errorcode"
  }

  template_variable {
    name                     = "metadata_failurestage"
    default_values           = []
    suggestion_attribute_key = "metadata_failurestage"
  }

  template_variable {
    name                     = "metadata_image"
    default_values           = []
    suggestion_attribute_key = "metadata_image"
  }

  template_variable {
    name                     = "metadata_images"
    default_values           = []
    suggestion_attribute_key = "metadata_images"
  }

  template_variable {
    name                     = "metadata_poolid"
    default_values           = []
    suggestion_attribute_key = "metadata_poolid"
  }

  template_variable {
    name                     = "metadata_providername"
    default_values           = []
    suggestion_attribute_key = "metadata_providername"
  }

  template_variable {
    name                     = "metadata_requesttype"
    default_values           = []
    suggestion_attribute_key = "metadata_requesttype"
  }

  template_variable {
    name                     = "metadata_resourcerequesttype"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcerequesttype"
  }

  template_variable {
    name                     = "metadata_sku"
    default_values           = []
    suggestion_attribute_key = "metadata_sku"
  }

  template_variable {
    name                     = "metadata_status"
    default_values           = []
    suggestion_attribute_key = "metadata_status"
  }

  template_variable {
    name                     = "metadata_type"
    default_values           = []
    suggestion_attribute_key = "metadata_type"
  }


}