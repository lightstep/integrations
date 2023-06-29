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
  description = "OpenTelemetry Collector Synapse_workspaces Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Synapse_workspaces Metrics"
  dashboard_description = "Monitor Synapse_workspaces with this metrics overview dashboard."

  chart {
    name = "azure_builtinsqlpooldataprocessedbytes_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_builtinsqlpooldataprocessedbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_builtinsqlpoolloginattempts_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_builtinsqlpoolloginattempts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_result == $metadata_result) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_builtinsqlpoolrequestsended_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_builtinsqlpoolrequestsended_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_result == $metadata_result) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationactivityrunsended_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationactivityrunsended_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_result == $metadata_result)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_activity == $metadata_activity)   &&  (metadata_activitytype == $metadata_activitytype)   &&  (metadata_pipeline == $metadata_pipeline) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationlinkconnectionevents_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationlinkconnectionevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_eventtype == $metadata_eventtype)   &&  (metadata_linkconnectionname == $metadata_linkconnectionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationlinkprocessedchangedrows_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationlinkprocessedchangedrows_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_tablename == $metadata_tablename)   &&  (metadata_linkconnectionname == $metadata_linkconnectionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationlinkprocesseddatavolume_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationlinkprocesseddatavolume_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_tablename == $metadata_tablename)   &&  (metadata_linktablestatus == $metadata_linktablestatus)   &&  (metadata_linkconnectionname == $metadata_linkconnectionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationlinkprocessinglatencyinseconds_maximum"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationlinkprocessinglatencyinseconds_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_linkconnectionname == $metadata_linkconnectionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationlinktableevents_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationlinktableevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_tablename == $metadata_tablename)   &&  (metadata_eventtype == $metadata_eventtype)   &&  (metadata_linkconnectionname == $metadata_linkconnectionname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationpipelinerunsended_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationpipelinerunsended_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_result == $metadata_result)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_pipeline == $metadata_pipeline) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationtriggerrunsended_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationtriggerrunsended_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_result == $metadata_result)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_trigger == $metadata_trigger) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingbackloggedinputeventsources_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingbackloggedinputeventsources_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingconversionerrors_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingconversionerrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingdeserializationerror_total"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingdeserializationerror_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingearlyinputevents_total"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingearlyinputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreaminginputeventbytes_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreaminginputeventbytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreaminginputevents_total"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreaminginputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreaminginputeventssourcespersecond_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreaminginputeventssourcespersecond_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreaminglateinputevents_total"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreaminglateinputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingoutoforderevents_total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingoutoforderevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingoutputevents_total"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingoutputevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingoutputwatermarkdelayseconds_maximum"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingoutputwatermarkdelayseconds_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingresourceutilization_maximum"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingresourceutilization_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_sqlstreamingruntimeerrors_total"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_sqlstreamingruntimeerrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sqlpoolname == $metadata_sqlpoolname)   &&  (metadata_sqldatabasename == $metadata_sqldatabasename)   &&  (metadata_jobname == $metadata_jobname)   &&  (metadata_logicalname == $metadata_logicalname)   &&  (metadata_partitionid == $metadata_partitionid)   &&  (metadata_processorinstance == $metadata_processorinstance) )  | delta | group_by [], sum
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
    name                     = "metadata_activity"
    default_values           = []
    suggestion_attribute_key = "metadata_activity"
  }

  template_variable {
    name                     = "metadata_activitytype"
    default_values           = []
    suggestion_attribute_key = "metadata_activitytype"
  }

  template_variable {
    name                     = "metadata_eventtype"
    default_values           = []
    suggestion_attribute_key = "metadata_eventtype"
  }

  template_variable {
    name                     = "metadata_failuretype"
    default_values           = []
    suggestion_attribute_key = "metadata_failuretype"
  }

  template_variable {
    name                     = "metadata_jobname"
    default_values           = []
    suggestion_attribute_key = "metadata_jobname"
  }

  template_variable {
    name                     = "metadata_linkconnectionname"
    default_values           = []
    suggestion_attribute_key = "metadata_linkconnectionname"
  }

  template_variable {
    name                     = "metadata_linktablestatus"
    default_values           = []
    suggestion_attribute_key = "metadata_linktablestatus"
  }

  template_variable {
    name                     = "metadata_logicalname"
    default_values           = []
    suggestion_attribute_key = "metadata_logicalname"
  }

  template_variable {
    name                     = "metadata_partitionid"
    default_values           = []
    suggestion_attribute_key = "metadata_partitionid"
  }

  template_variable {
    name                     = "metadata_pipeline"
    default_values           = []
    suggestion_attribute_key = "metadata_pipeline"
  }

  template_variable {
    name                     = "metadata_processorinstance"
    default_values           = []
    suggestion_attribute_key = "metadata_processorinstance"
  }

  template_variable {
    name                     = "metadata_result"
    default_values           = []
    suggestion_attribute_key = "metadata_result"
  }

  template_variable {
    name                     = "metadata_sqldatabasename"
    default_values           = []
    suggestion_attribute_key = "metadata_sqldatabasename"
  }

  template_variable {
    name                     = "metadata_sqlpoolname"
    default_values           = []
    suggestion_attribute_key = "metadata_sqlpoolname"
  }

  template_variable {
    name                     = "metadata_tablename"
    default_values           = []
    suggestion_attribute_key = "metadata_tablename"
  }

  template_variable {
    name                     = "metadata_trigger"
    default_values           = []
    suggestion_attribute_key = "metadata_trigger"
  }


}