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
  description = "OpenTelemetry Collector Streamanalytics_streamingjobs Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Streamanalytics_streamingjobs Metrics"
  dashboard_description = "Monitor Streamanalytics_streamingjobs with this metrics overview dashboard."

  chart {
    name = "azure_amlcalloutfailedrequests_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_amlcalloutfailedrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_amlcalloutinputevents_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_amlcalloutinputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_amlcalloutrequests_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_amlcalloutrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_conversionerrors_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_conversionerrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deserializationerror_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deserializationerror_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_droppedoradjustedevents_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_droppedoradjustedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_earlyinputevents_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_earlyinputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_errors_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_errors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_inputeventbytes_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_inputeventbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_inputevents_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_inputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_inputeventssourcesbacklogged_maximum"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_inputeventssourcesbacklogged_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_inputeventssourcespersecond_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_inputeventssourcespersecond_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_lateinputevents_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_lateinputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_outputevents_total"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_outputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_outputwatermarkdelayseconds_maximum"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_outputwatermarkdelayseconds_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_processcpuusagepercentage_maximum"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_processcpuusagepercentage_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_resourceutilization_maximum"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_resourceutilization_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
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
    name                     = "metadata_logicalname"
    default_values           = []
    suggestion_attribute_key = "metadata_logicalname"
  }

  template_variable {
    name                     = "metadata_nodename"
    default_values           = []
    suggestion_attribute_key = "metadata_nodename"
  }

  template_variable {
    name                     = "metadata_partitionid"
    default_values           = []
    suggestion_attribute_key = "metadata_partitionid"
  }

  template_variable {
    name                     = "metadata_processorinstance"
    default_values           = []
    suggestion_attribute_key = "metadata_processorinstance"
  }


}