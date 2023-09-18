terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.76.0"
    }
  }
  required_version = ">= v1.0.11"
}

variable "cloud_observability_project" {
  description = "Cloud Observability Project Name"
  type        = string
}

output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.cloud_observability_project}/dashboard/${lightstep_dashboard.otel_collector_dashboard.id}"
  description = "OpenTelemetry Collector NATS Server Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name          = var.cloud_observability_project
  dashboard_name        = "NATS Server"
  dashboard_description = "A real-time Nats server monitoring dashboard providing insights into server performance and message traffic."

  group {
    rank            = 0
    title           = ""
    visibility_type = "implicit"
  }
  group {
    rank            = 1
    title           = "OS"
    visibility_type = "explicit"

    chart {
      name        = "Server CPU"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_cpu | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
    chart {
      name        = "Server Memory"
      description = ""
      type        = "timeseries"
      rank        = 1
      x_pos       = 24
      y_pos       = 0
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_mem | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
  }
  group {
    rank            = 2
    title           = "Throughput"
    visibility_type = "explicit"

    chart {
      name        = "Bytes In"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 12
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_in_bytes | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
    chart {
      name        = "Msgs In"
      description = ""
      type        = "timeseries"
      rank        = 1
      x_pos       = 12
      y_pos       = 0
      width       = 12
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_in_msgs | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
    chart {
      name        = "Bytes Out"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 24
      y_pos       = 0
      width       = 12
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_out_bytes | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
    chart {
      name        = "Msgs Out"
      description = ""
      type        = "timeseries"
      rank        = 3
      x_pos       = 36
      y_pos       = 0
      width       = 12
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_out_msgs | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
  }
  group {
    rank            = 3
    title           = "Client"
    visibility_type = "explicit"

    chart {
      name        = "Connections"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_connections | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_max_connections | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
    chart {
      name        = "Subscriptions"
      description = ""
      type        = "timeseries"
      rank        = 1
      x_pos       = 16
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_subscriptions | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
    chart {
      name        = "Slow Consumers"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 32
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric gnatsd_varz_slow_consumers | filter (\"server_id\" == $server) | latest | group_by [\"server_id\"], sum"
      }
    }
  }

  template_variable {
    name                     = "server"
    default_values           = []
    suggestion_attribute_key = "server_id"
  }

  label {
    key   = ""
    value = "nats"
  }
  label {
    key   = ""
    value = "natsserver"
  }
}
