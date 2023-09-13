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
  description = "OpenTelemetry Collector Neo4J Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  dashboard_name        = "Neo4J - Overview"
  project_name          = "dev_bcronin"
  dashboard_description = "A Prometheus-integrated Neo4j metrics monitoring dashboard provides real-time insights into Neo4j database performance and health."

  group {
    rank            = 0
    title           = ""
    visibility_type = "implicit"
  }
  group {
    rank            = 1
    title           = "Database"
    visibility_type = "explicit"

    chart {
      name        = "Relationship Creation Speed (IDs)"
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
        query_string = "metric neo4j_database_neo4j_ids_in_use_relationship | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Property Creation Speed (IDs)"
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
        query_string = "metric neo4j_database_neo4j_ids_in_use_property | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Node Creation Speed (IDs)"
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
        query_string = "metric neo4j_database_neo4j_ids_in_use_node | rate | group_by [], sum"
      }
    }
  }
  group {
    rank            = 2
    title           = "Graph Count"
    visibility_type = "explicit"

    chart {
      name        = "Relationship Types"
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
        query_string = "metric neo4j_database_neo4j_ids_in_use_relationship_type | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Relationships"
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
        query_string = "metric neo4j_database_neo4j_ids_in_use_relationship | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Nodes"
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
        query_string = "metric neo4j_database_neo4j_ids_in_use_node | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Properties"
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
        query_string = "metric neo4j_database_neo4j_ids_in_use_property | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Items"
      description = ""
      type        = "timeseries"
      rank        = 4
      x_pos       = 16
      y_pos       = 8
      width       = 32
      height      = 8

      query {
        query_name   = "a"
        display      = "area"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_ids_in_use_property | latest | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "area"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_ids_in_use_node | latest | group_by [], sum"
      }
      query {
        query_name   = "c"
        display      = "area"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_ids_in_use_relationship | latest | group_by [], sum"
      }
      query {
        query_name   = "d"
        display      = "area"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_ids_in_use_relationship_type | latest | group_by [], sum"
      }
    }
  }
  group {
    rank            = 3
    title           = "DBMS Bolt"
    visibility_type = "explicit"

    chart {
      name        = "Messages Queue"
      description = "Messages received - Messages started"
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
        query_string = "with\n  a = metric neo4j_dbms_bolt_messages_received_total | rate | group_by [], sum;\n  b = metric neo4j_dbms_bolt_messages_started_total | rate | group_by [], sum;\njoin ((a - b)), a=0, b=0"
      }
    }
    chart {
      name        = "Connections"
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
        query_string = "metric neo4j_dbms_bolt_connections_closed_total | rate | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_dbms_bolt_connections_idle | latest | group_by [], sum"
      }
      query {
        query_name   = "c"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_dbms_bolt_connections_opened_total | rate | group_by [], sum"
      }
      query {
        query_name   = "d"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_dbms_bolt_connections_running | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bolt Messages (Done vs Failed)"
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
        query_string = "metric neo4j_dbms_bolt_messages_done_total | rate | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_dbms_bolt_messages_failed_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Sessions"
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
        query_string = "metric neo4j_dbms_bolt_connections_running | latest | group_by [], sum"
      }
    }
  }
  group {
    rank            = 4
    title           = "DBMS VM"
    visibility_type = "explicit"

    chart {
      name        = "VM Used Buffer"
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
        query_string = "metric neo4j_dbms_vm_memory_buffer_direct_used | latest | group_by [], sum"
      }
    }
    chart {
      name        = "VM Live Threads"
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
        query_string = "metric neo4j_dbms_vm_threads | latest | group_by [], sum"
      }
    }
    chart {
      name        = "VM Garbage Collector"
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
        query_string = "metric neo4j_dbms_vm_gc_time_g1_old_generation_total | rate | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_dbms_vm_gc_time_g1_young_generation_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "VM Heap Size"
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
        query_string = "metric neo4j_dbms_vm_memory_pool_g1_eden_space | latest | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_dbms_vm_memory_pool_g1_old_gen | latest | group_by [], sum"
      }
      query {
        query_name   = "c"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_dbms_vm_memory_pool_g1_survivor_space | rate | group_by [], sum"
      }
    }
  }
  group {
    rank            = 5
    title           = "DBMS Page Cache"
    visibility_type = "explicit"

    chart {
      name        = "Page Cache Faults"
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
        query_string = "metric neo4j_dbms_page_cache_page_faults_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Page Cache Hits"
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
        query_string = "metric neo4j_dbms_page_cache_hits_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Page Cache Hit Ratio"
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
        query_string = "metric neo4j_dbms_page_cache_hit_ratio | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Pages Flushed"
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
        query_string = "metric neo4j_database_neo4j_check_point_pages_flushed | latest | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_system_check_point_pages_flushed | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Checkpoints"
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
        query_string = "metric neo4j_database_neo4j_check_point_events_total | rate | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_check_point_total_time_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Checkpoint Events Duration (Seconds)"
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
        query_string = "metric neo4j_database_neo4j_check_point_duration | latest | group_by [], sum"
      }
    }
  }
  group {
    rank            = 6
    title           = "Transactions"
    visibility_type = "explicit"

    chart {
      name        = "Committed Transaction Speed"
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
        query_string = "metric neo4j_database_neo4j_transaction_committed_total | rate | group_by [], mean"
      }
    }
    chart {
      name        = "Active Transactions"
      description = "Active Transactions - Read and Write - \nand Peak concurrent"
      type        = "timeseries"
      rank        = 1
      x_pos       = 32
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_active_read | latest | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_active_write | latest | group_by [], sum"
      }
      query {
        query_name   = "c"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_peak_concurrent_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Committed Write Transaction Rate"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 32
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_committed_write_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Committed Transaction Rate"
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
        query_string = "metric neo4j_database_neo4j_transaction_committed_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Committed Read Transaction Rate"
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
        query_string = "metric neo4j_database_neo4j_transaction_committed_read_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Transactions"
      description = "All transaction metrics"
      type        = "timeseries"
      rank        = 5
      x_pos       = 0
      y_pos       = 16
      width       = 48
      height      = 10

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_started_total | rate | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_committed_total | rate | group_by [], sum"
      }
      query {
        query_name   = "c"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_rollbacks_total | rate | group_by [], sum"
      }
      query {
        query_name   = "d"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_terminated_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Committed Transactions"
      description = "All transaction metrics"
      type        = "timeseries"
      rank        = 6
      x_pos       = 0
      y_pos       = 26
      width       = 48
      height      = 10

      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_committed_total | rate | group_by [], sum"
      }
      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_committed_read_total | rate | group_by [], sum"
      }
      query {
        query_name   = "c"
        display      = "line"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_committed_write_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Rolled Back Transaction Speed"
      description = ""
      type        = "timeseries"
      rank        = 7
      x_pos       = 16
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric neo4j_database_neo4j_transaction_rollbacks_total | rate | group_by [], mean"
      }
    }
  }

  label {
    key   = ""
    value = "graph"
  }
  label {
    key   = ""
    value = "neo4j"
  }
  label {
    key   = ""
    value = "database"
  }
}
