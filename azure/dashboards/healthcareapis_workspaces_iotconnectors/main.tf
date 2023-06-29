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
  description = "OpenTelemetry Collector Healthcareapis_workspaces_iotconnectors Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Healthcareapis_workspaces_iotconnectors Metrics"
  dashboard_description = "Monitor Healthcareapis_workspaces_iotconnectors with this metrics overview dashboard."

  chart {
    name = "azure_deviceevent_average;azure_deviceevent_count;azure_deviceevent_maximum;azure_deviceevent_minimum;azure_deviceevent_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deviceevent_average;azure_deviceevent_count;azure_deviceevent_maximum;azure_deviceevent_minimum;azure_deviceevent_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deviceeventprocessinglatencyms_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deviceeventprocessinglatencyms_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_droppedevent_average;azure_droppedevent_count;azure_droppedevent_maximum;azure_droppedevent_minimum;azure_droppedevent_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_droppedevent_average;azure_droppedevent_count;azure_droppedevent_maximum;azure_droppedevent_minimum;azure_droppedevent_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_fhirresourcesaved_average;azure_fhirresourcesaved_count;azure_fhirresourcesaved_maximum;azure_fhirresourcesaved_minimum;azure_fhirresourcesaved_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_fhirresourcesaved_average;azure_fhirresourcesaved_count;azure_fhirresourcesaved_maximum;azure_fhirresourcesaved_minimum;azure_fhirresourcesaved_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_iotconnectorstatus_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_iotconnectorstatus_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename)   &&  (metadata_healthcheckname == $metadata_healthcheckname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_measurement_average;azure_measurement_count;azure_measurement_maximum;azure_measurement_minimum;azure_measurement_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_measurement_average;azure_measurement_count;azure_measurement_maximum;azure_measurement_minimum;azure_measurement_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_measurementgroup_average;azure_measurementgroup_count;azure_measurementgroup_maximum;azure_measurementgroup_minimum;azure_measurementgroup_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_measurementgroup_average;azure_measurementgroup_count;azure_measurementgroup_maximum;azure_measurementgroup_minimum;azure_measurementgroup_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_measurementingestionlatencyms_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_measurementingestionlatencyms_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_normalizedevent_average;azure_normalizedevent_count;azure_normalizedevent_maximum;azure_normalizedevent_minimum;azure_normalizedevent_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_normalizedevent_average;azure_normalizedevent_count;azure_normalizedevent_maximum;azure_normalizedevent_minimum;azure_normalizedevent_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcename == $metadata_resourcename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalerrors_average;azure_totalerrors_count;azure_totalerrors_maximum;azure_totalerrors_minimum;azure_totalerrors_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalerrors_average;azure_totalerrors_count;azure_totalerrors_maximum;azure_totalerrors_minimum;azure_totalerrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_errortype == $metadata_errortype)   &&  (metadata_errorseverity == $metadata_errorseverity)   &&  (metadata_resourcename == $metadata_resourcename) )  | delta | group_by [], sum
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
    name                     = "metadata_errorseverity"
    default_values           = []
    suggestion_attribute_key = "metadata_errorseverity"
  }

  template_variable {
    name                     = "metadata_errortype"
    default_values           = []
    suggestion_attribute_key = "metadata_errortype"
  }

  template_variable {
    name                     = "metadata_healthcheckname"
    default_values           = []
    suggestion_attribute_key = "metadata_healthcheckname"
  }

  template_variable {
    name                     = "metadata_name"
    default_values           = []
    suggestion_attribute_key = "metadata_name"
  }

  template_variable {
    name                     = "metadata_operation"
    default_values           = []
    suggestion_attribute_key = "metadata_operation"
  }

  template_variable {
    name                     = "metadata_resourcename"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcename"
  }


}