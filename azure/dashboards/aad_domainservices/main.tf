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
  description = "OpenTelemetry Collector Aad_domainservices Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Aad_domainservices Metrics"
  dashboard_description = "Monitor Aad_domainservices with this metrics overview dashboard."

  chart {
    name = "azure_\directoryservices(ntds)\ldap_searches/sec_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\directoryservices(ntds)\ldap_searches/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\directoryservices(ntds)\ldap_successful_binds/sec_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\directoryservices(ntds)\ldap_successful_binds/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\dns\total_query_received/sec_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\dns\total_query_received/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\dns\total_response_sent/sec_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\dns\total_response_sent/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\memory%_committed_bytes_in_use_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\memory%_committed_bytes_in_use_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\process(dns)%_processor_time_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\process(dns)%_processor_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\process(lsass)%_processor_time_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\process(lsass)%_processor_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\processor(_total)%_processor_time_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\processor(_total)%_processor_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\security_system-wide_statistics\kerberos_authentications_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\security_system-wide_statistics\kerberos_authentications_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_\security_system-wide_statistics\ntlm_authentications_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_\security_system-wide_statistics\ntlm_authentications_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_datacenter == $metadata_datacenter)   &&  (metadata_tenant == $metadata_tenant)   &&  (metadata_role == $metadata_role)   &&  (metadata_roleinstance == $metadata_roleinstance)   &&  (metadata_scaleunit == $metadata_scaleunit) )  | delta | group_by [], sum
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
    name                     = "metadata_datacenter"
    default_values           = []
    suggestion_attribute_key = "metadata_datacenter"
  }

  template_variable {
    name                     = "metadata_role"
    default_values           = []
    suggestion_attribute_key = "metadata_role"
  }

  template_variable {
    name                     = "metadata_roleinstance"
    default_values           = []
    suggestion_attribute_key = "metadata_roleinstance"
  }

  template_variable {
    name                     = "metadata_scaleunit"
    default_values           = []
    suggestion_attribute_key = "metadata_scaleunit"
  }

  template_variable {
    name                     = "metadata_tenant"
    default_values           = []
    suggestion_attribute_key = "metadata_tenant"
  }


}