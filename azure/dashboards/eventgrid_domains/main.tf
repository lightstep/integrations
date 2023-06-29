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
  description = "OpenTelemetry Collector Eventgrid_domains Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Eventgrid_domains Metrics"
  dashboard_description = "Monitor Eventgrid_domains with this metrics overview dashboard."

  chart {
    name = "azure_advancedfilterevaluationcount_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_advancedfilterevaluationcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_domaineventsubscriptionname == $metadata_domaineventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deadletteredcount_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deadletteredcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_domaineventsubscriptionname == $metadata_domaineventsubscriptionname)   &&  (metadata_deadletterreason == $metadata_deadletterreason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deliveryattemptfailcount_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deliveryattemptfailcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_domaineventsubscriptionname == $metadata_domaineventsubscriptionname)   &&  (metadata_error == $metadata_error)   &&  (metadata_errortype == $metadata_errortype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deliverysuccesscount_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deliverysuccesscount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_domaineventsubscriptionname == $metadata_domaineventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_destinationprocessingdurationinms_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_destinationprocessingdurationinms_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_domaineventsubscriptionname == $metadata_domaineventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_droppedeventcount_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_droppedeventcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_domaineventsubscriptionname == $metadata_domaineventsubscriptionname)   &&  (metadata_dropreason == $metadata_dropreason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_matchedeventcount_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_matchedeventcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_domaineventsubscriptionname == $metadata_domaineventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_publishfailcount_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_publishfailcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_errortype == $metadata_errortype)   &&  (metadata_error == $metadata_error) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_publishsuccesscount_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_publishsuccesscount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_publishsuccesslatencyinms_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_publishsuccesslatencyinms_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
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
    name                     = "metadata_deadletterreason"
    default_values           = []
    suggestion_attribute_key = "metadata_deadletterreason"
  }

  template_variable {
    name                     = "metadata_domaineventsubscriptionname"
    default_values           = []
    suggestion_attribute_key = "metadata_domaineventsubscriptionname"
  }

  template_variable {
    name                     = "metadata_dropreason"
    default_values           = []
    suggestion_attribute_key = "metadata_dropreason"
  }

  template_variable {
    name                     = "metadata_error"
    default_values           = []
    suggestion_attribute_key = "metadata_error"
  }

  template_variable {
    name                     = "metadata_errortype"
    default_values           = []
    suggestion_attribute_key = "metadata_errortype"
  }

  template_variable {
    name                     = "metadata_eventsubscriptionname"
    default_values           = []
    suggestion_attribute_key = "metadata_eventsubscriptionname"
  }

  template_variable {
    name                     = "metadata_topic"
    default_values           = []
    suggestion_attribute_key = "metadata_topic"
  }


}