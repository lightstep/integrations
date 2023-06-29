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
  description = "OpenTelemetry Collector Healthcareapis_services Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Healthcareapis_services Metrics"
  dashboard_description = "Monitor Healthcareapis_services with this metrics overview dashboard."

  chart {
    name = "azure_availability_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availability_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cosmosdbcollectionsize_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cosmosdbcollectionsize_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cosmosdbindexsize_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cosmosdbindexsize_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cosmosdbrequestcharge_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cosmosdbrequestcharge_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcetype == $metadata_resourcetype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cosmosdbrequests_average;azure_cosmosdbrequests_count;azure_cosmosdbrequests_maximum;azure_cosmosdbrequests_minimum;azure_cosmosdbrequests_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cosmosdbrequests_average;azure_cosmosdbrequests_count;azure_cosmosdbrequests_maximum;azure_cosmosdbrequests_minimum;azure_cosmosdbrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcetype == $metadata_resourcetype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cosmosdbthrottlerate_average;azure_cosmosdbthrottlerate_count;azure_cosmosdbthrottlerate_maximum;azure_cosmosdbthrottlerate_minimum;azure_cosmosdbthrottlerate_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cosmosdbthrottlerate_average;azure_cosmosdbthrottlerate_count;azure_cosmosdbthrottlerate_maximum;azure_cosmosdbthrottlerate_minimum;azure_cosmosdbthrottlerate_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_resourcetype == $metadata_resourcetype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_iotconnectordeviceevent_average;azure_iotconnectordeviceevent_count;azure_iotconnectordeviceevent_maximum;azure_iotconnectordeviceevent_minimum;azure_iotconnectordeviceevent_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_iotconnectordeviceevent_average;azure_iotconnectordeviceevent_count;azure_iotconnectordeviceevent_maximum;azure_iotconnectordeviceevent_minimum;azure_iotconnectordeviceevent_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_connectorname == $metadata_connectorname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_iotconnectordeviceeventprocessinglatencyms_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_iotconnectordeviceeventprocessinglatencyms_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_connectorname == $metadata_connectorname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_iotconnectormeasurement_average;azure_iotconnectormeasurement_count;azure_iotconnectormeasurement_maximum;azure_iotconnectormeasurement_minimum;azure_iotconnectormeasurement_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_iotconnectormeasurement_average;azure_iotconnectormeasurement_count;azure_iotconnectormeasurement_maximum;azure_iotconnectormeasurement_minimum;azure_iotconnectormeasurement_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_connectorname == $metadata_connectorname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_iotconnectormeasurementgroup_average;azure_iotconnectormeasurementgroup_count;azure_iotconnectormeasurementgroup_maximum;azure_iotconnectormeasurementgroup_minimum;azure_iotconnectormeasurementgroup_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_iotconnectormeasurementgroup_average;azure_iotconnectormeasurementgroup_count;azure_iotconnectormeasurementgroup_maximum;azure_iotconnectormeasurementgroup_minimum;azure_iotconnectormeasurementgroup_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_connectorname == $metadata_connectorname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_iotconnectormeasurementingestionlatencyms_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_iotconnectormeasurementingestionlatencyms_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_connectorname == $metadata_connectorname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_iotconnectornormalizedevent_average;azure_iotconnectornormalizedevent_count;azure_iotconnectornormalizedevent_maximum;azure_iotconnectornormalizedevent_minimum;azure_iotconnectornormalizedevent_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_iotconnectornormalizedevent_average;azure_iotconnectornormalizedevent_count;azure_iotconnectornormalizedevent_maximum;azure_iotconnectornormalizedevent_minimum;azure_iotconnectornormalizedevent_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_connectorname == $metadata_connectorname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_iotconnectortotalerrors_average;azure_iotconnectortotalerrors_count;azure_iotconnectortotalerrors_maximum;azure_iotconnectortotalerrors_minimum;azure_iotconnectortotalerrors_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_iotconnectortotalerrors_average;azure_iotconnectortotalerrors_count;azure_iotconnectortotalerrors_maximum;azure_iotconnectortotalerrors_minimum;azure_iotconnectortotalerrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_errortype == $metadata_errortype)   &&  (metadata_errorseverity == $metadata_errorseverity)   &&  (metadata_connectorname == $metadata_connectorname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalerrors_average;azure_totalerrors_count;azure_totalerrors_maximum;azure_totalerrors_minimum;azure_totalerrors_total"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalerrors_average;azure_totalerrors_count;azure_totalerrors_maximum;azure_totalerrors_minimum;azure_totalerrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protocol == $metadata_protocol)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass)   &&  (metadata_statuscodetext == $metadata_statuscodetext) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totallatency_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totallatency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protocol == $metadata_protocol) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalrequests_average;azure_totalrequests_count;azure_totalrequests_maximum;azure_totalrequests_minimum;azure_totalrequests_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalrequests_average;azure_totalrequests_count;azure_totalrequests_maximum;azure_totalrequests_minimum;azure_totalrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_protocol == $metadata_protocol) )  | delta | group_by [], sum
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
    name                     = "metadata_connectorname"
    default_values           = []
    suggestion_attribute_key = "metadata_connectorname"
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
    name                     = "metadata_protocol"
    default_values           = []
    suggestion_attribute_key = "metadata_protocol"
  }

  template_variable {
    name                     = "metadata_resourcetype"
    default_values           = []
    suggestion_attribute_key = "metadata_resourcetype"
  }

  template_variable {
    name                     = "metadata_statuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscode"
  }

  template_variable {
    name                     = "metadata_statuscodeclass"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscodeclass"
  }

  template_variable {
    name                     = "metadata_statuscodetext"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscodetext"
  }


}