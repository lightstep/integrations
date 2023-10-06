terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.79.0"
    }
  }
  required_version = ">= v1.0.11"
}

variable "lightstep_project" {
  description = "Cloud Observability Project Name"
  type        = string
}

output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.collector_tidb_overview.id}"
  description = "OpenTelemetry Collector TiDB Dashboard URL"
}

resource "lightstep_dashboard" "collector_tidb_overview" {
  project_name          = var.lightstep_project
  dashboard_name        = "TiDB - Overview"
  dashboard_description = "TiDB Overview Monitoring Dashboard provides real-time insights and performance metrics for TiDB, offering comprehensive visibility into the distributed database's health and efficiency."

  group {
    rank            = 0
    title           = ""
    visibility_type = "implicit"
  }
  group {
    rank            = 1
    title           = "PD"
    visibility_type = "explicit"

    chart {
      name        = "PD Role"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric pd_server_tso | delta 1m | group_by [], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Storage Capacity"
      description = ""
      type        = "timeseries"
      rank        = 1
      x_pos       = 16
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric pd_cluster_status | filter (\"type\" == \"storage_capacity\") | latest 1m | group_by [], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Current Storage Size"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 32
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric pd_cluster_status | filter (\"type\" == \"storage_size\") | latest 1m | group_by [], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Number Of Regions"
      description = ""
      type        = "timeseries"
      rank        = 3
      x_pos       = 0
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric pd_cluster_status | filter (\"type\" == \"region_count\") | latest 1m | group_by [], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Leader Balance Ratio"
      description = ""
      type        = "timeseries"
      rank        = 4
      x_pos       = 16
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "with\n  a = metric pd_scheduler_store_status | filter (\"type\" == \"leader_score\") | latest 15m | group_by [], min;\n  b = metric pd_scheduler_store_status | filter (\"type\" == \"leader_score\") | latest 15s | group_by [], max;\njoin ((1-(a / b))), a=0, b=0"
      }

      subtitle = ""
    }
    chart {
      name        = "Region Balance Ratio"
      description = ""
      type        = "timeseries"
      rank        = 5
      x_pos       = 32
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "with\n  a = metric pd_scheduler_store_status | filter (\"type\" == \"region_score\") | latest 15m | group_by [], min;\n  b = metric pd_scheduler_store_status | filter (\"type\" == \"region_score\") | latest 15s | group_by [], max;\njoin ((1-(a / b))), a=0, b=0"
      }

      subtitle = ""
    }
    chart {
      name        = "Store Status"
      description = ""
      type        = "timeseries"
      rank        = 6
      x_pos       = 0
      y_pos       = 16
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "table"
        hidden       = false
        query_string = "metric pd_cluster_status | latest | group_by [\"type\"], min"
      }

      subtitle = ""
    }
    chart {
      name        = "Client Handle Requests Duration Percentile"
      description = ""
      type        = "timeseries"
      rank        = 7
      x_pos       = 16
      y_pos       = 16
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric pd_client_request_handle_requests_duration_seconds | delta 30s | group_by [\"type\"], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }

      subtitle = ""
    }
    chart {
      name        = "Region Health"
      description = ""
      type        = "timeseries"
      rank        = 8
      x_pos       = 32
      y_pos       = 16
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric pd_regions_status | latest | group_by [\"type\"], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Hot Write Region's Leader Distribution"
      description = ""
      type        = "timeseries"
      rank        = 9
      x_pos       = 0
      y_pos       = 24
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric pd_hotspot_status | filter (\"type\" == \"hot_write_region_as_leader\") | latest | group_by [], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Hot Read Region's Leader Distribution"
      description = ""
      type        = "timeseries"
      rank        = 10
      x_pos       = 16
      y_pos       = 24
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric pd_hotspot_status | filter (\"type\" == \"hot_read_region_as_leader\") | latest | group_by [], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Region Heartbeat Report"
      description = ""
      type        = "timeseries"
      rank        = 11
      x_pos       = 32
      y_pos       = 24
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric pd_scheduler_region_heartbeat | filter ((\"type\" == \"report\") && (\"status\" == \"ok\")) | rate | group_by [\"store\"], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "99% Region Heartbeat Latency"
      description = ""
      type        = "timeseries"
      rank        = 12
      x_pos       = 0
      y_pos       = 32
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric pd_scheduler_region_heartbeat_latency_seconds | delta 5m | group_by [\"store\"], sum | point percentile(value, 99.0)"
      }

      subtitle = ""
    }
  }
  group {
    rank            = 2
    title           = "TiDB"
    visibility_type = "explicit"

    chart {
      name        = "Statement OPS"
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
        query_string = "metric tidb_executor_statement_total | rate 1m | group_by [\"type\"], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Duration"
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
        query_string = "metric tidb_server_handle_query_duration_seconds | delta | group_by [], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }

      subtitle = ""
    }
    chart {
      name        = "Query Per Second"
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
        query_string = "metric tidb_server_query_total | rate 1m | group_by [\"type\", \"result\"], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Failed Query OPM"
      description = ""
      type        = "timeseries"
      rank        = 3
      x_pos       = 0
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_server_execute_error_total | delta 1m | group_by [\"type\"], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Connection Count"
      description = ""
      type        = "timeseries"
      rank        = 4
      x_pos       = 16
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_server_connections | latest | group_by [], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Heap Memory Usage"
      description = ""
      type        = "timeseries"
      rank        = 5
      x_pos       = 32
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_heap_inuse_bytes | filter (\"service.name\" =~ \"tidb.*\") | latest | group_by [], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Transaction OPS"
      description = ""
      type        = "timeseries"
      rank        = 6
      x_pos       = 0
      y_pos       = 16
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_session_transaction_total | rate 1m | group_by [\"type\"], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Transaction Duration"
      description = ""
      type        = "timeseries"
      rank        = 7
      x_pos       = 16
      y_pos       = 16
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_session_transaction_duration_seconds | delta 1m | group_by [\"type\"], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }

      subtitle = ""
    }
    chart {
      name        = "KV Cmd OPS"
      description = ""
      type        = "timeseries"
      rank        = 8
      x_pos       = 32
      y_pos       = 16
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_tikvclient_txn_cmd_duration_seconds | delta 1m | group_by [\"type\"], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }

      subtitle = ""
    }
    chart {
      name        = "KV Cmd Duration 99"
      description = ""
      type        = "timeseries"
      rank        = 9
      x_pos       = 0
      y_pos       = 24
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_tikvclient_txn_cmd_duration_seconds | delta 1m | group_by [\"type\"], sum | point percentile(value, 99.0)"
      }

      subtitle = ""
    }
    chart {
      name        = "PD TSO OPS"
      description = ""
      type        = "timeseries"
      rank        = 10
      x_pos       = 16
      y_pos       = 24
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric pd_client_request_handle_requests_duration_seconds | filter (\"type\" == \"tso\") | delta 1m | group_by [], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }

      subtitle = ""
    }
    chart {
      name        = "PD TSO Wait Duration"
      description = ""
      type        = "timeseries"
      rank        = 11
      x_pos       = 32
      y_pos       = 24
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric pd_client_cmd_handle_cmds_duration_seconds | filter (\"type\" == \"tso\") | delta 1m | group_by [], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }

      subtitle = ""
    }
    chart {
      name        = "TiClient Region Error OPS"
      description = ""
      type        = "timeseries"
      rank        = 12
      x_pos       = 0
      y_pos       = 32
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_tikvclient_region_err_total | rate 1m | group_by [\"type\"], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Lock Resolve OPS"
      description = ""
      type        = "timeseries"
      rank        = 13
      x_pos       = 16
      y_pos       = 32
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_tikvclient_lock_resolver_actions_total | rate 1m | group_by [\"type\"], sum"
      }

      subtitle = ""
    }
    chart {
      name        = "Load Schema Duration"
      description = ""
      type        = "timeseries"
      rank        = 14
      x_pos       = 32
      y_pos       = 32
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_domain_load_schema_duration_seconds | delta 1m | group_by [], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }

      subtitle = ""
    }
    chart {
      name        = "KV Backoff OPS"
      description = ""
      type        = "timeseries"
      rank        = 15
      x_pos       = 0
      y_pos       = 40
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric tidb_tikvclient_backoff_total | rate 1m | group_by [\"type\"], sum"
      }

      subtitle = ""
    }
  }

  label {
    key   = ""
    value = "tikv"
  }
  label {
    key   = ""
    value = "pd"
  }
  label {
    key   = ""
    value = "database"
  }
  label {
    key   = ""
    value = "tidb"
  }
}