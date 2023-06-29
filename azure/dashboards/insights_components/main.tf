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
  description = "OpenTelemetry Collector Insights_components Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Insights_components Metrics"
  dashboard_description = "Monitor Insights_components with this metrics overview dashboard."

  chart {
    name = "azure_availabilityresults/availabilitypercentage_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availabilityresults/availabilitypercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_availabilityresult/name == $metadata_availabilityresult/name)   &&  (metadata_availabilityresult/location == $metadata_availabilityresult/location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_availabilityresults/count_count"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availabilityresults/count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_availabilityresult/name == $metadata_availabilityresult/name)   &&  (metadata_availabilityresult/location == $metadata_availabilityresult/location)   &&  (metadata_availabilityresult/success == $metadata_availabilityresult/success) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_availabilityresults/duration_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availabilityresults/duration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_availabilityresult/name == $metadata_availabilityresult/name)   &&  (metadata_availabilityresult/location == $metadata_availabilityresult/location)   &&  (metadata_availabilityresult/success == $metadata_availabilityresult/success) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_browsertimings/networkduration_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_browsertimings/networkduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_browsertimings/processingduration_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_browsertimings/processingduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_browsertimings/receiveduration_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_browsertimings/receiveduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_browsertimings/sendduration_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_browsertimings/sendduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_browsertimings/totalduration_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_browsertimings/totalduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dependencies/count_count"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dependencies/count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dependency/type == $metadata_dependency/type)   &&  (metadata_dependency/performancebucket == $metadata_dependency/performancebucket)   &&  (metadata_dependency/success == $metadata_dependency/success)   &&  (metadata_dependency/target == $metadata_dependency/target)   &&  (metadata_dependency/resultcode == $metadata_dependency/resultcode)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dependencies/duration_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dependencies/duration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dependency/type == $metadata_dependency/type)   &&  (metadata_dependency/performancebucket == $metadata_dependency/performancebucket)   &&  (metadata_dependency/success == $metadata_dependency/success)   &&  (metadata_dependency/target == $metadata_dependency/target)   &&  (metadata_dependency/resultcode == $metadata_dependency/resultcode)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dependencies/failed_count"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dependencies/failed_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_dependency/type == $metadata_dependency/type)   &&  (metadata_dependency/performancebucket == $metadata_dependency/performancebucket)   &&  (metadata_dependency/success == $metadata_dependency/success)   &&  (metadata_dependency/target == $metadata_dependency/target)   &&  (metadata_dependency/resultcode == $metadata_dependency/resultcode)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_exceptions/browser_count"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_exceptions/browser_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_client/isserver == $metadata_client/isserver)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_exceptions/count_count"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_exceptions/count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance)   &&  (metadata_client/type == $metadata_client/type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_exceptions/server_count"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_exceptions/server_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_client/isserver == $metadata_client/isserver)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pageviews/count_count"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pageviews/count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pageviews/duration_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pageviews/duration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/exceptionspersecond_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/exceptionspersecond_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/memoryavailablebytes_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/memoryavailablebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/processcpupercentage_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/processcpupercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/processiobytespersecond_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/processiobytespersecond_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/processorcpupercentage_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/processorcpupercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/processprivatebytes_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/processprivatebytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/requestexecutiontime_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/requestexecutiontime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/requestsinqueue_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/requestsinqueue_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_performancecounters/requestspersecond_average"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_performancecounters/requestspersecond_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requests/count_count"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requests/count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_request/performancebucket == $metadata_request/performancebucket)   &&  (metadata_request/resultcode == $metadata_request/resultcode)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance)   &&  (metadata_request/success == $metadata_request/success)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requests/duration_average"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requests/duration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_request/performancebucket == $metadata_request/performancebucket)   &&  (metadata_request/resultcode == $metadata_request/resultcode)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance)   &&  (metadata_request/success == $metadata_request/success)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requests/failed_count"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requests/failed_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_request/performancebucket == $metadata_request/performancebucket)   &&  (metadata_request/resultcode == $metadata_request/resultcode)   &&  (metadata_request/success == $metadata_request/success)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_requests/rate_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_requests/rate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_request/performancebucket == $metadata_request/performancebucket)   &&  (metadata_request/resultcode == $metadata_request/resultcode)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance)   &&  (metadata_request/success == $metadata_request/success)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_traces/count_count"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_traces/count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_trace/severitylevel == $metadata_trace/severitylevel)   &&  (metadata_operation/synthetic == $metadata_operation/synthetic)   &&  (metadata_cloud/rolename == $metadata_cloud/rolename)   &&  (metadata_cloud/roleinstance == $metadata_cloud/roleinstance) )  | delta | group_by [], sum
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
    name                     = "metadata_availabilityresult/location"
    default_values           = []
    suggestion_attribute_key = "metadata_availabilityresult/location"
  }

  template_variable {
    name                     = "metadata_availabilityresult/name"
    default_values           = []
    suggestion_attribute_key = "metadata_availabilityresult/name"
  }

  template_variable {
    name                     = "metadata_availabilityresult/success"
    default_values           = []
    suggestion_attribute_key = "metadata_availabilityresult/success"
  }

  template_variable {
    name                     = "metadata_client/isserver"
    default_values           = []
    suggestion_attribute_key = "metadata_client/isserver"
  }

  template_variable {
    name                     = "metadata_client/type"
    default_values           = []
    suggestion_attribute_key = "metadata_client/type"
  }

  template_variable {
    name                     = "metadata_cloud/roleinstance"
    default_values           = []
    suggestion_attribute_key = "metadata_cloud/roleinstance"
  }

  template_variable {
    name                     = "metadata_cloud/rolename"
    default_values           = []
    suggestion_attribute_key = "metadata_cloud/rolename"
  }

  template_variable {
    name                     = "metadata_dependency/performancebucket"
    default_values           = []
    suggestion_attribute_key = "metadata_dependency/performancebucket"
  }

  template_variable {
    name                     = "metadata_dependency/resultcode"
    default_values           = []
    suggestion_attribute_key = "metadata_dependency/resultcode"
  }

  template_variable {
    name                     = "metadata_dependency/success"
    default_values           = []
    suggestion_attribute_key = "metadata_dependency/success"
  }

  template_variable {
    name                     = "metadata_dependency/target"
    default_values           = []
    suggestion_attribute_key = "metadata_dependency/target"
  }

  template_variable {
    name                     = "metadata_dependency/type"
    default_values           = []
    suggestion_attribute_key = "metadata_dependency/type"
  }

  template_variable {
    name                     = "metadata_operation/synthetic"
    default_values           = []
    suggestion_attribute_key = "metadata_operation/synthetic"
  }

  template_variable {
    name                     = "metadata_request/performancebucket"
    default_values           = []
    suggestion_attribute_key = "metadata_request/performancebucket"
  }

  template_variable {
    name                     = "metadata_request/resultcode"
    default_values           = []
    suggestion_attribute_key = "metadata_request/resultcode"
  }

  template_variable {
    name                     = "metadata_request/success"
    default_values           = []
    suggestion_attribute_key = "metadata_request/success"
  }

  template_variable {
    name                     = "metadata_trace/severitylevel"
    default_values           = []
    suggestion_attribute_key = "metadata_trace/severitylevel"
  }


}