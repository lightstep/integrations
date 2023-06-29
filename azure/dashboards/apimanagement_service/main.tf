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
  description = "OpenTelemetry Collector Apimanagement_service Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Apimanagement_service Metrics"
  dashboard_description = "Monitor Apimanagement_service with this metrics overview dashboard."

  chart {
    name = "azure_backendduration_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_backendduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_hostname == $metadata_hostname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_capacity_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_capacity_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_connectionattempts_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_connectionattempts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_source == $metadata_source)   &&  (metadata_destination == $metadata_destination)   &&  (metadata_state == $metadata_state) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_duration_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_duration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_hostname == $metadata_hostname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_eventhubdroppedevents_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_eventhubdroppedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_eventhubrejectedevents_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_eventhubrejectedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_eventhubsuccessfulevents_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_eventhubsuccessfulevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_eventhubthrottledevents_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_eventhubthrottledevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_eventhubtimedoutevents_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_eventhubtimedoutevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_eventhubtotalbytessent_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_eventhubtotalbytessent_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_eventhubtotalevents_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_eventhubtotalevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_eventhubtotalfailedevents_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_eventhubtotalfailedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_failedrequests_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_failedrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_hostname == $metadata_hostname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_networkconnectivity_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_networkconnectivity_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_resourcetype == $metadata_resourcetype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_otherrequests_total"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_otherrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_hostname == $metadata_hostname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requests_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_hostname == $metadata_hostname)   &&  (metadata_lasterrorreason == $metadata_lasterrorreason)   &&  (metadata_backendresponsecode == $metadata_backendresponsecode)   &&  (metadata_gatewayresponsecode == $metadata_gatewayresponsecode)   &&  (metadata_backendresponsecodecategory == $metadata_backendresponsecodecategory)   &&  (metadata_gatewayresponsecodecategory == $metadata_gatewayresponsecodecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successfulrequests_total"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successfulrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_hostname == $metadata_hostname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalrequests_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_hostname == $metadata_hostname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_unauthorizedrequests_total"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_unauthorizedrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_hostname == $metadata_hostname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_websocketmessages_total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_websocketmessages_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_location == $metadata_location)   &&  (metadata_source == $metadata_source)   &&  (metadata_destination == $metadata_destination) )  | delta | group_by [], sum
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
    name                     = "metadata_backendresponsecode"
    default_values           = []
    suggestion_attribute_key = "metadata_backendresponsecode"
  }

  template_variable {
    name                     = "metadata_backendresponsecodecategory"
    default_values           = []
    suggestion_attribute_key = "metadata_backendresponsecodecategory"
  }

  template_variable {
    name                     = "metadata_destination"
    default_values           = []
    suggestion_attribute_key = "metadata_destination"
  }

  template_variable {
    name                     = "metadata_gatewayresponsecode"
    default_values           = []
    suggestion_attribute_key = "metadata_gatewayresponsecode"
  }

  template_variable {
    name                     = "metadata_gatewayresponsecodecategory"
    default_values           = []
    suggestion_attribute_key = "metadata_gatewayresponsecodecategory"
  }

  template_variable {
    name                     = "metadata_hostname"
    default_values           = []
    suggestion_attribute_key = "metadata_hostname"
  }

  template_variable {
    name                     = "metadata_lasterrorreason"
    default_values           = []
    suggestion_attribute_key = "metadata_lasterrorreason"
  }

  template_variable {
    name                     = "metadata_location"
    default_values           = []
    suggestion_attribute_key = "metadata_location"
  }

  template_variable {
    name                     = "metadata_resourcetype"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcetype"
  }

  template_variable {
    name                     = "metadata_source"
    default_values           = []
    suggestion_attribute_key = "metadata_source"
  }

  template_variable {
    name                     = "metadata_state"
    default_values           = []
    suggestion_attribute_key = "metadata_state"
  }


}