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
  description = "OpenTelemetry Collector Eventgrid_namespaces Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Eventgrid_namespaces Metrics"
  dashboard_description = "Monitor Eventgrid_namespaces with this metrics overview dashboard."

  chart {
    name = "azure_acknowledgelatencyinmilliseconds_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_acknowledgelatencyinmilliseconds_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_failedacknowledgedevents_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_failedacknowledgedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_error == $metadata_error)   &&  (metadata_errortype == $metadata_errortype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_failedpublishedevents_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_failedpublishedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_error == $metadata_error)   &&  (metadata_errortype == $metadata_errortype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_failedreceivedevents_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_failedreceivedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_error == $metadata_error)   &&  (metadata_errortype == $metadata_errortype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_failedreleasedevents_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_failedreleasedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname)   &&  (metadata_error == $metadata_error)   &&  (metadata_errortype == $metadata_errortype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mqtt.connections_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mqtt.connections_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protocol == $metadata_protocol) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mqtt.failedpublishedmessages_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mqtt.failedpublishedmessages_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_qos == $metadata_qos)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_error == $metadata_error) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mqtt.failedsubscriptionoperations_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mqtt.failedsubscriptionoperations_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_error == $metadata_error) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mqtt.requestcount_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mqtt.requestcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operationtype == $metadata_operationtype)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_error == $metadata_error)   &&  (metadata_result == $metadata_result) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mqtt.successfuldeliveredmessages_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mqtt.successfuldeliveredmessages_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_qos == $metadata_qos)   &&  (metadata_protocol == $metadata_protocol) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mqtt.successfulpublishedmessages_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mqtt.successfulpublishedmessages_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_qos == $metadata_qos)   &&  (metadata_protocol == $metadata_protocol) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mqtt.successfulsubscriptionoperations_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mqtt.successfulsubscriptionoperations_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_operationtype == $metadata_operationtype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_mqtt.throughput_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_mqtt.throughput_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_direction == $metadata_direction) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_publishlatencyinmilliseconds_total"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_publishlatencyinmilliseconds_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_receivelatencyinmilliseconds_total"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_receivelatencyinmilliseconds_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_rejectlatencyinmilliseconds_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_rejectlatencyinmilliseconds_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successfulacknowledgedevents_total"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successfulacknowledgedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successfulpublishedevents_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successfulpublishedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successfulreceivedevents_total"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successfulreceivedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successfulreleasedevents_total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successfulreleasedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_topic == $metadata_topic)   &&  (metadata_eventsubscriptionname == $metadata_eventsubscriptionname) )  | delta | group_by [], sum
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
    name                     = "metadata_direction"
    default_values           = []
    suggestion_attribute_key = "metadata_direction"
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
    name                     = "metadata_operationtype"
    default_values           = []
    suggestion_attribute_key = "metadata_operationtype"
  }

  template_variable {
    name                     = "metadata_protocol"
    default_values           = []
    suggestion_attribute_key = "metadata_protocol"
  }

  template_variable {
    name                     = "metadata_qos"
    default_values           = []
    suggestion_attribute_key = "metadata_qos"
  }

  template_variable {
    name                     = "metadata_result"
    default_values           = []
    suggestion_attribute_key = "metadata_result"
  }

  template_variable {
    name                     = "metadata_topic"
    default_values           = []
    suggestion_attribute_key = "metadata_topic"
  }


}