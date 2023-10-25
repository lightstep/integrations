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
  description = "ServiceNow Cloud Observability Project Name"
  type        = string
}

output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.collector_kong_overview.id}"
  description = "OpenTelemetry Collector Kong Dashboard URL"
}

resource "lightstep_dashboard" "collector_kong_overview" {
  project_name          = var.lightstep_project
  dashboard_name        = "Kong Metrics"
  dashboard_description = "Monitor Kong with this metrics overview dashboard."

  chart {
    name = "Requests Total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric kong_nginx_requests_total | filter ((service.name == $service_name) && (net.host.name == $net_host_name) && (service.instance.id == $service_instance_id) && (net.host.port == $net_host_port) && (http.scheme == $http_scheme)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Datastore Reachable"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric kong_datastore_reachable | filter ((service.name == $service_name) && (net.host.name == $net_host_name) && (service.instance.id == $service_instance_id) && (net.host.port == $net_host_port) && (http.scheme == $http_scheme)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Total Capacity in Bytes"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric kong_memory_lua_shared_dict_total_bytes | filter ((service.name == $service_name) && (net.host.name == $net_host_name) && (service.instance.id == $service_instance_id) && (net.host.port == $net_host_port) && (http.scheme == $http_scheme) && (kong_subsystem == $kong_subsystem) && (node_id == $node_id)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Allocated Bytes"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric kong_memory_workers_lua_vms_bytes | filter ((service.name == $service_name) && (net.host.name == $net_host_name) && (service.instance.id == $service_instance_id) && (net.host.port == $net_host_port) && (http.scheme == $http_scheme) && (kong_subsystem == $kong_subsystem) && (node_id == $node_id)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Node Metadata"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric kong_node_info | filter ((service.name == $service_name) && (net.host.name == $net_host_name) && (service.instance.id == $service_instance_id) && (net.host.port == $net_host_port) && (http.scheme == $http_scheme)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Allocated Slabs in Bytes"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric kong_memory_lua_shared_dict_bytes | filter ((service.name == $service_name) && (net.host.name == $net_host_name) && (service.instance.id == $service_instance_id) && (net.host.port == $net_host_port) && (http.scheme == $http_scheme) && (kong_subsystem == $kong_subsystem) && (node_id == $node_id)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Connections"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric kong_nginx_connections_total | filter ((service.name == $service_name) && (net.host.name == $net_host_name) && (service.instance.id == $service_instance_id) && (net.host.port == $net_host_port) && (http.scheme == $http_scheme) && (node_id == $node_id)) | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "Nginx Timers"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric kong_nginx_timers | filter ((service.name == $service_name) && (net.host.name == $net_host_name) && (service.instance.id == $service_instance_id) && (net.host.port == $net_host_port) && (http.scheme == $http_scheme)) | delta | group_by [], sum
EOT
    }
  }

  template_variable {
    name                     = "http_scheme"
    default_values           = []
    suggestion_attribute_key = "http.scheme"
  }

  template_variable {
    name                     = "kong_subsystem"
    default_values           = []
    suggestion_attribute_key = "kong_subsystem"
  }

  template_variable {
    name                     = "net_host_name"
    default_values           = []
    suggestion_attribute_key = "net.host.name"
  }

  template_variable {
    name                     = "net_host_port"
    default_values           = []
    suggestion_attribute_key = "net.host.port"
  }

  template_variable {
    name                     = "node_id"
    default_values           = []
    suggestion_attribute_key = "node_id"
  }

  template_variable {
    name                     = "service_instance_id"
    default_values           = []
    suggestion_attribute_key = "service.instance.id"
  }

  template_variable {
    name                     = "service_name"
    default_values           = []
    suggestion_attribute_key = "service.name"
  }
}
