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
  description = "OpenTelemetry Collector Connectedvehicle_platformaccounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Connectedvehicle_platformaccounts Metrics"
  dashboard_description = "Monitor Connectedvehicle_platformaccounts with this metrics overview dashboard."

  chart {
    name = "azure_claimsproviderrequestlatency_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_claimsproviderrequestlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_claimsproviderrequests_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_claimsproviderrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_connectionservicerequestruntime_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_connectionservicerequestruntime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_connectionservicerequests_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_connectionservicerequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_datapipelinemessagecount_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_datapipelinemessagecount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_extensioninvocationcount_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_extensioninvocationcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_extensionname == $metadata_extensionname)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_extensioninvocationruntime_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_extensioninvocationruntime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_extensionname == $metadata_extensionname)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_messagesincount_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_messagesincount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_messagesoutcount_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_messagesoutcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_provisionerservicerequestruntime_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_provisionerservicerequestruntime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_provisionerservicerequests_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_provisionerservicerequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_statestorereadrequestlatency_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_statestorereadrequestlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_extensionname == $metadata_extensionname)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_statestorereadrequests_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_statestorereadrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_extensionname == $metadata_extensionname)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_statestorewriterequestlatency_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_statestorewriterequestlatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_extensionname == $metadata_extensionname)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_statestorewriterequests_total"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_statestorewriterequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_extensionname == $metadata_extensionname)   &&  (metadata_issuccessful == $metadata_issuccessful)   &&  (metadata_failurecategory == $metadata_failurecategory) )  | delta | group_by [], sum
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
    name                     = "metadata_extensionname"
    default_values           = []
    suggestion_attribute_key = "metadata_extensionname"
  }

  template_variable {
    name                     = "metadata_failurecategory"
    default_values           = []
    suggestion_attribute_key = "metadata_failurecategory"
  }

  template_variable {
    name                     = "metadata_issuccessful"
    default_values           = []
    suggestion_attribute_key = "metadata_issuccessful"
  }


}