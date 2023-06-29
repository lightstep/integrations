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
  description = "OpenTelemetry Collector Network_networkwatchers_connectionmonitors Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Network_networkwatchers_connectionmonitors Metrics"
  dashboard_description = "Monitor Network_networkwatchers_connectionmonitors with this metrics overview dashboard."

  chart {
    name = "azure_averageroundtripms_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_averageroundtripms_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_checksfailedpercent_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_checksfailedpercent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sourceaddress == $metadata_sourceaddress)   &&  (metadata_sourcename == $metadata_sourcename)   &&  (metadata_sourceresourceid == $metadata_sourceresourceid)   &&  (metadata_sourcetype == $metadata_sourcetype)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_destinationaddress == $metadata_destinationaddress)   &&  (metadata_destinationname == $metadata_destinationname)   &&  (metadata_destinationresourceid == $metadata_destinationresourceid)   &&  (metadata_destinationtype == $metadata_destinationtype)   &&  (metadata_destinationport == $metadata_destinationport)   &&  (metadata_testgroupname == $metadata_testgroupname)   &&  (metadata_testconfigurationname == $metadata_testconfigurationname)   &&  (metadata_sourceip == $metadata_sourceip)   &&  (metadata_destinationip == $metadata_destinationip)   &&  (metadata_sourcesubnet == $metadata_sourcesubnet)   &&  (metadata_destinationsubnet == $metadata_destinationsubnet) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_probesfailedpercent_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_probesfailedpercent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_roundtriptimems_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_roundtriptimems_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sourceaddress == $metadata_sourceaddress)   &&  (metadata_sourcename == $metadata_sourcename)   &&  (metadata_sourceresourceid == $metadata_sourceresourceid)   &&  (metadata_sourcetype == $metadata_sourcetype)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_destinationaddress == $metadata_destinationaddress)   &&  (metadata_destinationname == $metadata_destinationname)   &&  (metadata_destinationresourceid == $metadata_destinationresourceid)   &&  (metadata_destinationtype == $metadata_destinationtype)   &&  (metadata_destinationport == $metadata_destinationport)   &&  (metadata_testgroupname == $metadata_testgroupname)   &&  (metadata_testconfigurationname == $metadata_testconfigurationname)   &&  (metadata_sourceip == $metadata_sourceip)   &&  (metadata_destinationip == $metadata_destinationip)   &&  (metadata_sourcesubnet == $metadata_sourcesubnet)   &&  (metadata_destinationsubnet == $metadata_destinationsubnet) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_testresult_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_testresult_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_sourceaddress == $metadata_sourceaddress)   &&  (metadata_sourcename == $metadata_sourcename)   &&  (metadata_sourceresourceid == $metadata_sourceresourceid)   &&  (metadata_sourcetype == $metadata_sourcetype)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_destinationaddress == $metadata_destinationaddress)   &&  (metadata_destinationname == $metadata_destinationname)   &&  (metadata_destinationresourceid == $metadata_destinationresourceid)   &&  (metadata_destinationtype == $metadata_destinationtype)   &&  (metadata_destinationport == $metadata_destinationport)   &&  (metadata_testgroupname == $metadata_testgroupname)   &&  (metadata_testconfigurationname == $metadata_testconfigurationname)   &&  (metadata_testresultcriterion == $metadata_testresultcriterion)   &&  (metadata_sourceip == $metadata_sourceip)   &&  (metadata_destinationip == $metadata_destinationip)   &&  (metadata_sourcesubnet == $metadata_sourcesubnet)   &&  (metadata_destinationsubnet == $metadata_destinationsubnet) )  | delta | group_by [], sum
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
    name                     = "metadata_destinationaddress"
    default_values           = []
    suggestion_attribute_key = "metadata_destinationaddress"
  }

  template_variable {
    name                     = "metadata_destinationip"
    default_values           = []
    suggestion_attribute_key = "metadata_destinationip"
  }

  template_variable {
    name                     = "metadata_destinationname"
    default_values           = []
    suggestion_attribute_key = "metadata_destinationname"
  }

  template_variable {
    name                     = "metadata_destinationport"
    default_values           = []
    suggestion_attribute_key = "metadata_destinationport"
  }

  template_variable {
    name                     = "metadata_destinationresourceid"
    default_values           = []
    suggestion_attribute_key = "metadata_destinationresourceid"
  }

  template_variable {
    name                     = "metadata_destinationsubnet"
    default_values           = []
    suggestion_attribute_key = "metadata_destinationsubnet"
  }

  template_variable {
    name                     = "metadata_destinationtype"
    default_values           = []
    suggestion_attribute_key = "metadata_destinationtype"
  }

  template_variable {
    name                     = "metadata_protocol"
    default_values           = []
    suggestion_attribute_key = "metadata_protocol"
  }

  template_variable {
    name                     = "metadata_sourceaddress"
    default_values           = []
    suggestion_attribute_key = "metadata_sourceaddress"
  }

  template_variable {
    name                     = "metadata_sourceip"
    default_values           = []
    suggestion_attribute_key = "metadata_sourceip"
  }

  template_variable {
    name                     = "metadata_sourcename"
    default_values           = []
    suggestion_attribute_key = "metadata_sourcename"
  }

  template_variable {
    name                     = "metadata_sourceresourceid"
    default_values           = []
    suggestion_attribute_key = "metadata_sourceresourceid"
  }

  template_variable {
    name                     = "metadata_sourcesubnet"
    default_values           = []
    suggestion_attribute_key = "metadata_sourcesubnet"
  }

  template_variable {
    name                     = "metadata_sourcetype"
    default_values           = []
    suggestion_attribute_key = "metadata_sourcetype"
  }

  template_variable {
    name                     = "metadata_testconfigurationname"
    default_values           = []
    suggestion_attribute_key = "metadata_testconfigurationname"
  }

  template_variable {
    name                     = "metadata_testgroupname"
    default_values           = []
    suggestion_attribute_key = "metadata_testgroupname"
  }

  template_variable {
    name                     = "metadata_testresultcriterion"
    default_values           = []
    suggestion_attribute_key = "metadata_testresultcriterion"
  }


}