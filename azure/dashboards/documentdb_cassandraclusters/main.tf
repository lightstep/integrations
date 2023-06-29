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
  description = "OpenTelemetry Collector Documentdb_cassandraclusters Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Documentdb_cassandraclusters Metrics"
  dashboard_description = "Monitor Documentdb_cassandraclusters with this metrics overview dashboard."

  chart {
    name = "azure_cassandra_cache_capacity_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cache_capacity_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_cache_name == $metadata_cache_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cache_entries_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cache_entries_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_cache_name == $metadata_cache_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cache_hit_rate_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cache_hit_rate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_cache_name == $metadata_cache_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cache_hits_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cache_hits_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_cache_name == $metadata_cache_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cache_miss_latency_histogram_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cache_miss_latency_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_quantile == $metadata_quantile) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cache_miss_latency_p99_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cache_miss_latency_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_cache_name == $metadata_cache_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cache_requests_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cache_requests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_cache_name == $metadata_cache_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cache_size_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cache_size_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_cache_name == $metadata_cache_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_auth_failure_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_auth_failure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_auth_failure2_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_auth_failure2_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_auth_success_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_auth_success_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_condition_not_met_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_condition_not_met_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_contention_histogram_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_contention_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_contention_histogram_p99_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_contention_histogram_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_failures_total"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_failures_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_failures2_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_failures2_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_latency_histogram_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_latency_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_quantile == $metadata_quantile)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_latency_p99_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_latency_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_timeouts_total"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_timeouts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_timeouts2_total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_timeouts2_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_client_request_unfinished_commit_total"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_client_request_unfinished_commit_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_request_type == $metadata_request_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_commit_log_waiting_on_commit_latency_histogram_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_commit_log_waiting_on_commit_latency_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_quantile == $metadata_quantile) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cql_prepared_statements_executed_total"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cql_prepared_statements_executed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_cql_regular_statements_executed_total"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_cql_regular_statements_executed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_jvm_gc_count_total"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_jvm_gc_count_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_jvm_gc_time_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_jvm_gc_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_all_memtables_live_data_size_total"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_all_memtables_live_data_size_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_all_memtables_off_heap_size_total"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_all_memtables_off_heap_size_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_bloom_filter_disk_space_used_total"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_bloom_filter_disk_space_used_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_bloom_filter_false_positives_total"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_bloom_filter_false_positives_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_bloom_filter_false_ratio_average"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_bloom_filter_false_ratio_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_bloom_filter_off_heap_memory_used_total"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_bloom_filter_off_heap_memory_used_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_bytes_flushed_total"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_bytes_flushed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_cas_commit_average"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_cas_commit_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_cas_commit_p99_average"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_cas_commit_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_cas_prepare_average"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_cas_prepare_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_cas_prepare_p99_average"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_cas_prepare_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_cas_propose_average"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_cas_propose_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_cas_propose_p99_average"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_cas_propose_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_col_update_time_delta_histogram_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_col_update_time_delta_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_col_update_time_delta_histogram_p99_average"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_col_update_time_delta_histogram_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_compaction_bytes_written_total"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_compaction_bytes_written_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_compression_metadata_off_heap_memory_used_total"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_compression_metadata_off_heap_memory_used_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_compression_ratio_average"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_compression_ratio_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_coordinator_read_latency_average"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_coordinator_read_latency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_coordinator_read_latency_p99_average"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_coordinator_read_latency_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_coordinator_scan_latency_average"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_coordinator_scan_latency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_coordinator_scan_latency_p99_average"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_coordinator_scan_latency_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_dropped_mutations_total"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_dropped_mutations_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_dropped_mutations2_total"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_dropped_mutations2_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_estimated_column_count_histogram_average"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_estimated_column_count_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_estimated_column_count_histogram_p99_average"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_estimated_column_count_histogram_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_estimated_partition_count_total"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_estimated_partition_count_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_estimated_partition_size_histogram_average"
    rank = "53"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_estimated_partition_size_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_quantile == $metadata_quantile)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_estimated_partition_size_histogram_p99_average"
    rank = "54"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_estimated_partition_size_histogram_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_index_summary_off_heap_memory_used_total"
    rank = "55"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_index_summary_off_heap_memory_used_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_key_cache_hit_rate_average"
    rank = "56"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_key_cache_hit_rate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_live_disk_space_used_total"
    rank = "57"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_live_disk_space_used_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_live_scanned_histogram_average"
    rank = "58"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_live_scanned_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_live_scanned_histogram_p99_average"
    rank = "59"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_live_scanned_histogram_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_live_sstable_count_total"
    rank = "60"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_live_sstable_count_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_max_partition_size_maximum"
    rank = "61"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_max_partition_size_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_mean_partition_size_average"
    rank = "62"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_mean_partition_size_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_memtable_columns_count_total"
    rank = "63"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_memtable_columns_count_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_memtable_off_heap_size_total"
    rank = "64"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_memtable_off_heap_size_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_memtable_on_heap_size_total"
    rank = "65"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_memtable_on_heap_size_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_memtable_switch_count_total"
    rank = "66"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_memtable_switch_count_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_min_partition_size_minimum"
    rank = "67"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_min_partition_size_minimum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_pending_compactions_total"
    rank = "68"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_pending_compactions_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_pending_compactions2_total"
    rank = "69"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_pending_compactions2_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_pending_flushes_total"
    rank = "70"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_pending_flushes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_pending_flushes2_total"
    rank = "71"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_pending_flushes2_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_percent_repaired_average"
    rank = "72"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_percent_repaired_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_range_latency_average"
    rank = "73"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_range_latency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_range_latency_p99_average"
    rank = "74"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_range_latency_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_read_latency_average"
    rank = "75"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_read_latency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_read_latency_p99_average"
    rank = "76"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_read_latency_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_row_cache_hit_total"
    rank = "77"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_row_cache_hit_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_row_cache_hit_out_of_range_total"
    rank = "78"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_row_cache_hit_out_of_range_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_row_cache_miss_total"
    rank = "79"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_row_cache_miss_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_speculative_retries_total"
    rank = "80"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_speculative_retries_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_sstables_per_read_histogram_average"
    rank = "81"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_sstables_per_read_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_sstables_per_read_histogram_p99_average"
    rank = "82"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_sstables_per_read_histogram_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_tombstone_scanned_histogram_average"
    rank = "83"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_tombstone_scanned_histogram_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_tombstone_scanned_histogram_p99_average"
    rank = "84"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_tombstone_scanned_histogram_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_total_disk_space_used_total"
    rank = "85"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_total_disk_space_used_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_total_disk_space_used2_total"
    rank = "86"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_total_disk_space_used2_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_view_lock_acquire_time_average"
    rank = "87"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_view_lock_acquire_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_view_lock_acquire_time_p99_average"
    rank = "88"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_view_lock_acquire_time_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_view_read_time_average"
    rank = "89"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_view_read_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_view_read_time_p99_average"
    rank = "90"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_view_read_time_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_waiting_on_free_memtable_space_average"
    rank = "91"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_waiting_on_free_memtable_space_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_waiting_on_free_memtable_space_p99_average"
    rank = "92"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_waiting_on_free_memtable_space_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_write_latency_average"
    rank = "93"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_write_latency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_table_write_latency_p99_average"
    rank = "94"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_table_write_latency_p99_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_table == $metadata_table)   &&  (metadata_keyspace == $metadata_keyspace) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_thread_pools_active_tasks_total"
    rank = "95"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_thread_pools_active_tasks_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_pool_name == $metadata_pool_name)   &&  (metadata_pool_type == $metadata_pool_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_thread_pools_currently_blocked_tasks_total"
    rank = "96"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_thread_pools_currently_blocked_tasks_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_pool_name == $metadata_pool_name)   &&  (metadata_pool_type == $metadata_pool_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_thread_pools_currently_blocked_tasks2_total"
    rank = "97"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_thread_pools_currently_blocked_tasks2_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_pool_name == $metadata_pool_name)   &&  (metadata_pool_type == $metadata_pool_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_thread_pools_max_pool_size_maximum"
    rank = "98"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_thread_pools_max_pool_size_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_pool_name == $metadata_pool_name)   &&  (metadata_pool_type == $metadata_pool_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_thread_pools_pending_tasks_total"
    rank = "99"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_thread_pools_pending_tasks_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_pool_name == $metadata_pool_name)   &&  (metadata_pool_type == $metadata_pool_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cassandra_thread_pools_total_blocked_tasks_total"
    rank = "100"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cassandra_thread_pools_total_blocked_tasks_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_cassandra_datacenter == $metadata_cassandra_datacenter)   &&  (metadata_cassandra_node == $metadata_cassandra_node)   &&  (metadata_pool_name == $metadata_pool_name)   &&  (metadata_pool_type == $metadata_pool_type) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpu_average"
    rank = "101"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpu_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind)   &&  (metadata_cpu == $metadata_cpu) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_disk_utilization_average"
    rank = "102"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_disk_utilization_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskio_merged_reads_total"
    rank = "103"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskio_merged_reads_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskio_merged_writes_total"
    rank = "104"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskio_merged_writes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskio_read_bytes_total"
    rank = "105"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskio_read_bytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskio_read_time_total"
    rank = "106"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskio_read_time_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskio_reads_total"
    rank = "107"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskio_reads_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskio_write_bytes_total"
    rank = "108"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskio_write_bytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskio_write_time_total"
    rank = "109"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskio_write_time_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskio_writes_total"
    rank = "110"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskio_writes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ethtool_rx_bytes_total"
    rank = "111"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ethtool_rx_bytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ethtool_rx_packets_total"
    rank = "112"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ethtool_rx_packets_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ethtool_tx_bytes_total"
    rank = "113"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ethtool_tx_bytes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ethtool_tx_packets_total"
    rank = "114"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ethtool_tx_packets_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address)   &&  (metadata_kind == $metadata_kind) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_percent_mem_average"
    rank = "115"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_percent_mem_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_clusterresourcename == $metadata_clusterresourcename)   &&  (metadata_datacenterresourcename == $metadata_datacenterresourcename)   &&  (metadata_address == $metadata_address) )  | delta | group_by [], sum
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
    name                     = "metadata_address"
    default_values           = []
    suggestion_attribute_key = "metadata_address"
  }

  template_variable {
    name                     = "metadata_cache_name"
    default_values           = []
    suggestion_attribute_key = "metadata_cache_name"
  }

  template_variable {
    name                     = "metadata_cassandra_datacenter"
    default_values           = []
    suggestion_attribute_key = "metadata_cassandra_datacenter"
  }

  template_variable {
    name                     = "metadata_cassandra_node"
    default_values           = []
    suggestion_attribute_key = "metadata_cassandra_node"
  }

  template_variable {
    name                     = "metadata_clusterresourcename"
    default_values           = []
    suggestion_attribute_key = "metadata_clusterresourcename"
  }

  template_variable {
    name                     = "metadata_cpu"
    default_values           = []
    suggestion_attribute_key = "metadata_cpu"
  }

  template_variable {
    name                     = "metadata_datacenterresourcename"
    default_values           = []
    suggestion_attribute_key = "metadata_datacenterresourcename"
  }

  template_variable {
    name                     = "metadata_keyspace"
    default_values           = []
    suggestion_attribute_key = "metadata_keyspace"
  }

  template_variable {
    name                     = "metadata_kind"
    default_values           = []
    suggestion_attribute_key = "metadata_kind"
  }

  template_variable {
    name                     = "metadata_pool_name"
    default_values           = []
    suggestion_attribute_key = "metadata_pool_name"
  }

  template_variable {
    name                     = "metadata_pool_type"
    default_values           = []
    suggestion_attribute_key = "metadata_pool_type"
  }

  template_variable {
    name                     = "metadata_quantile"
    default_values           = []
    suggestion_attribute_key = "metadata_quantile"
  }

  template_variable {
    name                     = "metadata_request_type"
    default_values           = []
    suggestion_attribute_key = "metadata_request_type"
  }

  template_variable {
    name                     = "metadata_table"
    default_values           = []
    suggestion_attribute_key = "metadata_table"
  }


}