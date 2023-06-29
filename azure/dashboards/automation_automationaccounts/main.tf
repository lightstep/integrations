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
  description = "OpenTelemetry Collector Automation_automationaccounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Automation_automationaccounts Metrics"
  dashboard_description = "Monitor Automation_automationaccounts with this metrics overview dashboard."

  chart {
    name = "azure_hybridworkerping_count"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_hybridworkerping_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_hybridworkergroup == $metadata_hybridworkergroup)   &&  (metadata_hybridworker == $metadata_hybridworker)   &&  (metadata_hybridworkerversion == $metadata_hybridworkerversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totaljob_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totaljob_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runbook == $metadata_runbook)   &&  (metadata_status == $metadata_status) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalupdatedeploymentmachineruns_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalupdatedeploymentmachineruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_status == $metadata_status)   &&  (metadata_targetcomputer == $metadata_targetcomputer)   &&  (metadata_softwareupdateconfigurationname == $metadata_softwareupdateconfigurationname)   &&  (metadata_softwareupdateconfigurationrunid == $metadata_softwareupdateconfigurationrunid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalupdatedeploymentruns_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalupdatedeploymentruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_status == $metadata_status)   &&  (metadata_softwareupdateconfigurationname == $metadata_softwareupdateconfigurationname) )  | delta | group_by [], sum
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
    name                     = "metadata_hybridworker"
    default_values           = []
    suggestion_attribute_key = "metadata_hybridworker"
  }

  template_variable {
    name                     = "metadata_hybridworkergroup"
    default_values           = []
    suggestion_attribute_key = "metadata_hybridworkergroup"
  }

  template_variable {
    name                     = "metadata_hybridworkerversion"
    default_values           = []
    suggestion_attribute_key = "metadata_hybridworkerversion"
  }

  template_variable {
    name                     = "metadata_runbook"
    default_values           = []
    suggestion_attribute_key = "metadata_runbook"
  }

  template_variable {
    name                     = "metadata_softwareupdateconfigurationname"
    default_values           = []
    suggestion_attribute_key = "metadata_softwareupdateconfigurationname"
  }

  template_variable {
    name                     = "metadata_softwareupdateconfigurationrunid"
    default_values           = []
    suggestion_attribute_key = "metadata_softwareupdateconfigurationrunid"
  }

  template_variable {
    name                     = "metadata_status"
    default_values           = []
    suggestion_attribute_key = "metadata_status"
  }

  template_variable {
    name                     = "metadata_targetcomputer"
    default_values           = []
    suggestion_attribute_key = "metadata_targetcomputer"
  }


}