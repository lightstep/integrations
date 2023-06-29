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
  description = "OpenTelemetry Collector Communication_communicationservices Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Communication_communicationservices Metrics"
  dashboard_description = "Monitor Communication_communicationservices with this metrics overview dashboard."

  chart {
    name = "azure_apirequestauthentication_count"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequestauthentication_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apirequestcallautomation_count"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequestcallautomation_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apirequestcallrecording_count"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequestcallrecording_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apirequestchat_count"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequestchat_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apirequestnetworktraversal_count"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequestnetworktraversal_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apirequestrooms_count"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequestrooms_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apirequestrouter_count"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequestrouter_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodesubclass == $metadata_statuscodesubclass)   &&  (metadata_apiversion == $metadata_apiversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apirequests_count"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequests_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass)   &&  (metadata_statuscodereason == $metadata_statuscodereason) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_apirequestsms_count"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_apirequestsms_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_operation == $metadata_operation)   &&  (metadata_statuscode == $metadata_statuscode)   &&  (metadata_statuscodeclass == $metadata_statuscodeclass)   &&  (metadata_errorcode == $metadata_errorcode)   &&  (metadata_numbertype == $metadata_numbertype)   &&  (metadata_country == $metadata_country)   &&  (metadata_optaction == $metadata_optaction) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_deliverystatusupdate_count"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_deliverystatusupdate_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_messagestatus == $metadata_messagestatus)   &&  (metadata_result == $metadata_result)   &&  (metadata_smtpstatuscode == $metadata_smtpstatuscode)   &&  (metadata_enhancedsmtpstatuscode == $metadata_enhancedsmtpstatuscode)   &&  (metadata_senderdomain == $metadata_senderdomain)   &&  (metadata_ishardbounce == $metadata_ishardbounce) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_userengagement_count"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_userengagement_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_engagementtype == $metadata_engagementtype) )  | delta | group_by [], sum
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
    name                     = "metadata_apiversion"
    default_values           = []
    suggestion_attribute_key = "metadata_apiversion"
  }

  template_variable {
    name                     = "metadata_country"
    default_values           = []
    suggestion_attribute_key = "metadata_country"
  }

  template_variable {
    name                     = "metadata_engagementtype"
    default_values           = []
    suggestion_attribute_key = "metadata_engagementtype"
  }

  template_variable {
    name                     = "metadata_enhancedsmtpstatuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_enhancedsmtpstatuscode"
  }

  template_variable {
    name                     = "metadata_errorcode"
    default_values           = []
    suggestion_attribute_key = "metadata_errorcode"
  }

  template_variable {
    name                     = "metadata_ishardbounce"
    default_values           = []
    suggestion_attribute_key = "metadata_ishardbounce"
  }

  template_variable {
    name                     = "metadata_messagestatus"
    default_values           = []
    suggestion_attribute_key = "metadata_messagestatus"
  }

  template_variable {
    name                     = "metadata_numbertype"
    default_values           = []
    suggestion_attribute_key = "metadata_numbertype"
  }

  template_variable {
    name                     = "metadata_operation"
    default_values           = []
    suggestion_attribute_key = "metadata_operation"
  }

  template_variable {
    name                     = "metadata_operationname"
    default_values           = []
    suggestion_attribute_key = "metadata_operationname"
  }

  template_variable {
    name                     = "metadata_optaction"
    default_values           = []
    suggestion_attribute_key = "metadata_optaction"
  }

  template_variable {
    name                     = "metadata_result"
    default_values           = []
    suggestion_attribute_key = "metadata_result"
  }

  template_variable {
    name                     = "metadata_senderdomain"
    default_values           = []
    suggestion_attribute_key = "metadata_senderdomain"
  }

  template_variable {
    name                     = "metadata_smtpstatuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_smtpstatuscode"
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
    name                     = "metadata_statuscodereason"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscodereason"
  }

  template_variable {
    name                     = "metadata_statuscodesubclass"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscodesubclass"
  }


}