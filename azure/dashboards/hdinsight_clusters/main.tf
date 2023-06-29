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
  description = "OpenTelemetry Collector Hdinsight_clusters Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Hdinsight_clusters Metrics"
  dashboard_description = "Monitor Hdinsight_clusters with this metrics overview dashboard."

  chart {
    name = "azure_categorizedgatewayrequests_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_categorizedgatewayrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gatewayrequests_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gatewayrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_httpstatus == $metadata_httpstatus) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.consumerrequest.m1_delta_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.consumerrequest.m1_delta_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.consumerrequestfail.m1_delta_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.consumerrequestfail.m1_delta_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.consumerrequesttime.p95_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.consumerrequesttime.p95_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.consumerrequestwaitinginqueuetime.p95_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.consumerrequestwaitinginqueuetime.p95_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.messagesin.m1_delta_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.messagesin.m1_delta_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.messagesout.m1_delta_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.messagesout.m1_delta_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.openconnections_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.openconnections_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.producerrequest.m1_delta_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.producerrequest.m1_delta_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.producerrequestfail.m1_delta_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.producerrequestfail.m1_delta_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.producerrequesttime.p95_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.producerrequesttime.p95_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_kafkarestproxy.producerrequestwaitinginqueuetime.p95_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_kafkarestproxy.producerrequestwaitinginqueuetime.p95_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_machine == $metadata_machine)   &&  (metadata_topic == $metadata_topic) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_numactiveworkers_maximum"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_numactiveworkers_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_metricname == $metadata_metricname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pendingcpu_maximum"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pendingcpu_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pendingmemory_maximum"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pendingmemory_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
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
    name                     = "metadata_httpstatus"
    default_values           = []
    suggestion_attribute_key = "metadata_httpstatus"
  }

  template_variable {
    name                     = "metadata_machine"
    default_values           = []
    suggestion_attribute_key = "metadata_machine"
  }

  template_variable {
    name                     = "metadata_metricname"
    default_values           = []
    suggestion_attribute_key = "metadata_metricname"
  }

  template_variable {
    name                     = "metadata_topic"
    default_values           = []
    suggestion_attribute_key = "metadata_topic"
  }


}