terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.70.10"
    }
  }
  required_version = ">= v1.0.11"
}

resource "lightstep_dashboard" "otel_collector_confluentplatform_dashboard" {
  project_name          = var.lightstep_project
  dashboard_name        = "OpenTelemetry Collector Confluent Platform"
  dashboard_description = "Monitor Confluent Platform with this summary dashboard."

  chart {
    name = "Kafka Cluster Partition AtMinIsr"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_cluster_partition_atminisr | rate | group_by [], sum"
    }
  }

  chart {
    name = "Kafka Cluster Partition InSyncReplicasCount"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_cluster_partition_insyncreplicascount | rate | group_by [], sum"
    }
  }

  chart {
    name = "Kafka Cluster Partition LastStableOffsetLag"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_cluster_partition_laststableoffsetlag | rate | group_by [], sum"
    }
  }

  chart {
    name = "Kafka Cluster Partition ReplicasCount"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_cluster_partition_replicascount | rate | group_by [], sum"
    }
  }

  chart {
    name = "Assigned Connectors"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric tor_metrics_assigned_connectors | rate | group_by [], sum"
    }
  }

  chart {
    name = "Assigned Tasks"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_connect_connect_coordinator_metrics_assigned_tasks | rate | group_by [], sum"
    }
  }

  chart {
    name = "Failed Rebalance Rate per Hour"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_connect_connect_coordinator_metrics_failed_rebalance_rate_per_hour | rate | group_by [], sum"
    }
  }

  chart {
    name = "Failed Rebalance Total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_connect_connect_coordinator_metrics_failed_rebalance_total | rate | group_by [], sum"
    }
  }

  chart {
    name = "Heartbeat Rate"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_connect_connect_coordinator_metrics_heartbeat_rate | rate | group_by [], sum"
    }
  }

  chart {
    name = "App Info Start Time"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_consumer_app_info | rate | group_by [], sum"
    }
  }

  chart {
    name = "Assigned Partitions"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_consumer_consumer_coordinator_metrics_assigned_partitions | rate | group_by [], sum"
    }
  }

  chart {
    name = "Commit Latency Average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_consumer_consumer_coordinator_metrics_commit_latency_avg | rate | group_by [], sum"
    }
  }

  chart {
    name = "Commit Latency Max"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_consumer_consumer_coordinator_metrics_commit_latency_max | rate | group_by [], max"
    }
  }

  chart {
    name = "ControllerChannelManager Queue Size"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_controller_controllerchannelmanager_queuesize | rate | group_by [], sum"
    }
  }

  chart {
    name = "Request Rate And Queue Time Ms"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_controller_controllerchannelmanager_requestrateandqueuetimems | rate | group_by [], sum"
    }
  }

  chart {
    name = "Total Queue Size"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_controller_controllerchannelmanager_totalqueuesize | rate | group_by [], sum"
    }
  }

  chart {
    name = "Event Queue Size"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_controller_controllereventmanager_eventqueuesize | rate | group_by [], sum"
    }
  }

  chart {
    name = "Acceptor Blocked Percent"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_network_acceptor_acceptorblockedpercent | rate | group_by [], sum"
    }
  }

  chart {
    name = "Processor Idle Percent"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_network_processor_idlepercent | rate | group_by [], sum"
    }
  }

  chart {
    name = "Brokers List V2 Request Error Total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_rest_jersey_metrics_brokers_list_v2_request_error_total | rate | group_by [], sum"
    }
  }

  chart {
    name = "App Info Version"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_schema_registry_app_info | rate | group_by [], sum"
    }
  }

  chart {
    name = "Compatibility Verify Request Byte Rate"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_schema_registry_jersey_metrics_compatibility_subjects_versions_verify_request_byte_rate | rate | group_by [], sum"
    }
  }

  chart {
    name = "Compatibility Verify Request Latency 99th Percentile"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric kafka_schema_registry_jersey_metrics_compatibility_subjects_versions_verify_request_latency_99 | rate | group_by [], sum"
    }
  }

  chart {
    name = "Total Bytes Consumed"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric ksql_ksql_engine_query_stats_bytes_consumed_total | rate | group_by [], sum"
    }
  }

  chart {
    name = "Count of CREATED queries"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric ksql_ksql_engine_query_stats_created_queries | rate | group_by [], sum"
    }
  }

  chart {
    name = "Count of NOT_RUNNING queries"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric ksql_ksql_engine_query_stats_not_running_queries | rate | group_by [], sum"
    }
  }

  chart {
    name = "ZooKeeper AuthFailedCount"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric zookeeper_authfailedcount | rate | group_by [], sum"
    }
  }

  chart {
    name = "ZooKeeper AvgRequestLatency"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric zookeeper_avgrequestlatency | rate | group_by [], sum"
    }
  }

  chart {
    name = "ZooKeeper ClientPort"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric zookeeper_clientport | rate | group_by [], sum"
    }
  }

  chart {
    name = "ZooKeeper Version"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric zookeeper_version | rate | group_by [], sum"
    }
  }
}
