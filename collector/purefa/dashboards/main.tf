terraform {
    required_providers {
      lightstep = {
        source  = "lightstep/lightstep"
        version = "~> 1.70.10"
      }
    }
    required_version = ">= v1.0.11"
  }
  
  resource "lightstep_dashboard" "otel_collector_purefa_dashboard" {
    project_name          = var.lightstep_project
    dashboard_name        = "OpenTelemetry Pure FlashArray Overview Dashboard"
    dashboard_description = "Monitor key metrics from Pure FlashArray"
  
    chart {
      name = "FlashArray Throughput (IOPS)"
      rank = "0"
      type = "timeseries"
  
      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric purefa_array_performance_throughput_iops | rate | group_by [], sum"
      }
    }
  
    chart {
      name = "FlashArray Space Utilization"
      rank = "1"
      type = "timeseries"
  
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric purefa_array_space_utilization | group_by [], avg"
      }
    }
  
    chart {
      name = "FlashArray Latency (µs)"
      rank = "2"
      type = "timeseries"
  
      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric purefa_array_performance_latency_usec | group_by [], avg"
      }
    }
  
  chart {
    name = "FlashArray Volume Throughput (IOPS)"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_performance_throughput_iops | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Volume Latency (µs)"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_performance_latency_usec | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Pod Throughput (Bytes/sec)"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_pod_performance_bandwidth_bytes | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Network Interface Throughput (pkts/sec)"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_network_interface_performance_throughput_pkts | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Hardware Component Temperature (C)"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_hw_component_temperature_celsius | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Directory Space (Bytes)"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_directory_space_bytes | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Host Throughput (IOPS)"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_host_performance_throughput_iops | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Host Latency (µs)"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_host_performance_latency_usec | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Pod Replication Bandwidth (Bytes/sec)"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_pod_performance_replication_bandwidth_bytes | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Directory Throughput (IOPS)"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_directory_performance_throughput_iops | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Space Data Reduction Ratio"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_array_space_data_reduction_ratio | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Network Interface Errors (Errors/sec)"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_network_interface_performance_errors | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Hardware Component Voltage (Volt)"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_hw_component_voltage_volt | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Volume Performance (Latency µs)"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_performance_latency_usec | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Volume Throughput (Bytes/sec)"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_performance_bandwidth_bytes | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Directory Space (Bytes)"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_directory_space_bytes | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Pod Average Operations Size (Bytes)"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_pod_performance_average_bytes | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Hardware Component Temperature (Celsius)"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_hw_component_temperature_celsius | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Network Interface Throughput (Packets/sec)"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_network_interface_performance_throughput_pkts | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Network Interface Errors (Errors/sec)"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_network_interface_performance_errors | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Pod Space (Bytes)"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_pod_space_bytes | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Pod Data Reduction Ratio"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_pod_space_data_reduction_ratio | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Pod Replication Bandwidth (Bytes/sec)"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_pod_performance_replication_bandwidth_bytes | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Pod Replica Link Bandwidth (Bytes/sec)"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_pod_replica_links_performance_bandwidth_bytes | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Pod Replica Link Max Lag (Seconds)"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_pod_replica_links_lag_max_sec | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Volume Performance (Bytes/sec)"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_performance_bandwidth_bytes | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Volume Latency (Microseconds)"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_performance_latency_usec | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Volume Throughput (IOPS)"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_performance_throughput_iops | rate | group_by [], sum"
    }
  }

  chart {
    name = "FlashArray Volume Space (Bytes)"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_space_bytes | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Volume Data Reduction Ratio"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_volume_space_data_reduction_ratio | group_by [], avg"
    }
  }

  chart {
    name = "FlashArray Hardware Component Temperature (Celsius)"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = "metric purefa_hw_component_temperature_celsius | group_by [], avg"
    }
  }

}
  