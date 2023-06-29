---
title: Azure Microsoft.DocumentDB/cassandraClusters metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DocumentDB/cassandraClusters metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DocumentDB/cassandraClusters
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DocumentDB/cassandraClusters, **PUT DESCRIPTION HERE**. 

See [all available Azure integrations](/docs/azure-metrics).
{: .tip}

To verify metrics are reporting, search for the metrics on the [Metric details](/docs/manage-metric-details) page in **Project settings**.
{: .tip}

The following table shows the {{page.azure_int}} metrics ingested by Lightstep.
<table class="table-aws">
<colgroup><col span="1" style="width: 35%;" /><col span="1" style="width: 15%;" /><col span="1" style="width: 35%;" /></colgroup>
  <thead>
    <th>Metric Name</th>
    <th>Unit</th>
    <th>Description</th>
  </thead>
  <tr>
    <td>azure_cassandra_cache_capacity_average, azure_cassandra_cache_capacity_count, azure_cassandra_cache_capacity_maximum, azure_cassandra_cache_capacity_minimum, azure_cassandra_cache_capacity_total</td>
    <td>Bytes</td>
    <td>Cache capacity in bytes.</td>
  </tr>
  <tr>
    <td>azure_cassandra_cache_entries_average, azure_cassandra_cache_entries_count, azure_cassandra_cache_entries_maximum, azure_cassandra_cache_entries_minimum, azure_cassandra_cache_entries_total</td>
    <td>Count</td>
    <td>Total number of cache entries.</td>
  </tr>
  <tr>
    <td>azure_cassandra_cache_hit_rate_average, azure_cassandra_cache_hit_rate_count, azure_cassandra_cache_hit_rate_maximum, azure_cassandra_cache_hit_rate_minimum, azure_cassandra_cache_hit_rate_total</td>
    <td>Percent</td>
    <td>All time cache hit rate.</td>
  </tr>
  <tr>
    <td>azure_cassandra_cache_hits_average, azure_cassandra_cache_hits_count, azure_cassandra_cache_hits_maximum, azure_cassandra_cache_hits_minimum, azure_cassandra_cache_hits_total</td>
    <td>Count</td>
    <td>Total number of cache hits.</td>
  </tr>
  <tr>
    <td>azure_cassandra_cache_miss_latency_histogram_average, azure_cassandra_cache_miss_latency_histogram_count, azure_cassandra_cache_miss_latency_histogram_maximum, azure_cassandra_cache_miss_latency_histogram_minimum, azure_cassandra_cache_miss_latency_histogram_total</td>
    <td>Count</td>
    <td>Average cache miss latency (in microseconds).</td>
  </tr>
  <tr>
    <td>azure_cassandra_cache_miss_latency_p99_average, azure_cassandra_cache_miss_latency_p99_count, azure_cassandra_cache_miss_latency_p99_maximum, azure_cassandra_cache_miss_latency_p99_minimum, azure_cassandra_cache_miss_latency_p99_total</td>
    <td>Count</td>
    <td>p99 Latency of misses.</td>
  </tr>
  <tr>
    <td>azure_cassandra_cache_requests_average, azure_cassandra_cache_requests_count, azure_cassandra_cache_requests_maximum, azure_cassandra_cache_requests_minimum, azure_cassandra_cache_requests_total</td>
    <td>Count</td>
    <td>Total number of cache requests.</td>
  </tr>
  <tr>
    <td>azure_cassandra_cache_size_average, azure_cassandra_cache_size_count, azure_cassandra_cache_size_maximum, azure_cassandra_cache_size_minimum, azure_cassandra_cache_size_total</td>
    <td>Bytes</td>
    <td>Total size of occupied cache, in bytes.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_auth_failure_average, azure_cassandra_client_auth_failure_count, azure_cassandra_client_auth_failure_maximum, azure_cassandra_client_auth_failure_minimum, azure_cassandra_client_auth_failure_total</td>
    <td>Count</td>
    <td>Number of failed client authentication requests.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_auth_failure2_average, azure_cassandra_client_auth_failure2_count, azure_cassandra_client_auth_failure2_maximum, azure_cassandra_client_auth_failure2_minimum, azure_cassandra_client_auth_failure2_total</td>
    <td>Count</td>
    <td>Number of failed client authentication requests.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_auth_success_average, azure_cassandra_client_auth_success_count, azure_cassandra_client_auth_success_maximum, azure_cassandra_client_auth_success_minimum, azure_cassandra_client_auth_success_total</td>
    <td>Count</td>
    <td>Number of successful client authentication requests.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_condition_not_met_average, azure_cassandra_client_request_condition_not_met_count, azure_cassandra_client_request_condition_not_met_maximum, azure_cassandra_client_request_condition_not_met_minimum, azure_cassandra_client_request_condition_not_met_total</td>
    <td>Count</td>
    <td>Number of transaction preconditions did not match current values.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_contention_histogram_average, azure_cassandra_client_request_contention_histogram_count, azure_cassandra_client_request_contention_histogram_maximum, azure_cassandra_client_request_contention_histogram_minimum, azure_cassandra_client_request_contention_histogram_total</td>
    <td>Count</td>
    <td>How many contended reads/writes were encountered in average.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_contention_histogram_p99_average, azure_cassandra_client_request_contention_histogram_p99_count, azure_cassandra_client_request_contention_histogram_p99_maximum, azure_cassandra_client_request_contention_histogram_p99_minimum, azure_cassandra_client_request_contention_histogram_p99_total</td>
    <td>Count</td>
    <td>p99 How many contended writes were encountered.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_failures_average, azure_cassandra_client_request_failures_count, azure_cassandra_client_request_failures_maximum, azure_cassandra_client_request_failures_minimum, azure_cassandra_client_request_failures_total</td>
    <td>Count</td>
    <td>Number of transaction failures encountered.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_failures2_average, azure_cassandra_client_request_failures2_count, azure_cassandra_client_request_failures2_maximum, azure_cassandra_client_request_failures2_minimum, azure_cassandra_client_request_failures2_total</td>
    <td>Count</td>
    <td>Number of transaction failures encountered.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_latency_histogram_average, azure_cassandra_client_request_latency_histogram_count, azure_cassandra_client_request_latency_histogram_maximum, azure_cassandra_client_request_latency_histogram_minimum, azure_cassandra_client_request_latency_histogram_total</td>
    <td>Count</td>
    <td>Average client request latency (in microseconds).</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_latency_p99_average, azure_cassandra_client_request_latency_p99_count, azure_cassandra_client_request_latency_p99_maximum, azure_cassandra_client_request_latency_p99_minimum, azure_cassandra_client_request_latency_p99_total</td>
    <td>Count</td>
    <td>p99 client request latency (in microseconds).</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_timeouts_average, azure_cassandra_client_request_timeouts_count, azure_cassandra_client_request_timeouts_maximum, azure_cassandra_client_request_timeouts_minimum, azure_cassandra_client_request_timeouts_total</td>
    <td>Count</td>
    <td>Number of timeouts encountered.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_timeouts2_average, azure_cassandra_client_request_timeouts2_count, azure_cassandra_client_request_timeouts2_maximum, azure_cassandra_client_request_timeouts2_minimum, azure_cassandra_client_request_timeouts2_total</td>
    <td>Count</td>
    <td>Number of timeouts encountered.</td>
  </tr>
  <tr>
    <td>azure_cassandra_client_request_unfinished_commit_average, azure_cassandra_client_request_unfinished_commit_count, azure_cassandra_client_request_unfinished_commit_maximum, azure_cassandra_client_request_unfinished_commit_minimum, azure_cassandra_client_request_unfinished_commit_total</td>
    <td>Count</td>
    <td>Number of transactions that were committed on write.</td>
  </tr>
  <tr>
    <td>azure_cassandra_commit_log_waiting_on_commit_latency_histogram_average, azure_cassandra_commit_log_waiting_on_commit_latency_histogram_count, azure_cassandra_commit_log_waiting_on_commit_latency_histogram_maximum, azure_cassandra_commit_log_waiting_on_commit_latency_histogram_minimum, azure_cassandra_commit_log_waiting_on_commit_latency_histogram_total</td>
    <td>Count</td>
    <td>Average time spent waiting on CL fsync (in microseconds); for Periodic this is only occurs when the sync is lagging its sync interval.</td>
  </tr>
  <tr>
    <td>azure_cassandra_cql_prepared_statements_executed_average, azure_cassandra_cql_prepared_statements_executed_count, azure_cassandra_cql_prepared_statements_executed_maximum, azure_cassandra_cql_prepared_statements_executed_minimum, azure_cassandra_cql_prepared_statements_executed_total</td>
    <td>Count</td>
    <td>Number of prepared statements executed.</td>
  </tr>
  <tr>
    <td>azure_cassandra_cql_regular_statements_executed_average, azure_cassandra_cql_regular_statements_executed_count, azure_cassandra_cql_regular_statements_executed_maximum, azure_cassandra_cql_regular_statements_executed_minimum, azure_cassandra_cql_regular_statements_executed_total</td>
    <td>Count</td>
    <td>Number of non prepared statements executed.</td>
  </tr>
  <tr>
    <td>azure_cassandra_jvm_gc_count_average, azure_cassandra_jvm_gc_count_count, azure_cassandra_jvm_gc_count_maximum, azure_cassandra_jvm_gc_count_minimum, azure_cassandra_jvm_gc_count_total</td>
    <td>Count</td>
    <td>Total number of collections that have occurred.</td>
  </tr>
  <tr>
    <td>azure_cassandra_jvm_gc_time_average, azure_cassandra_jvm_gc_time_count, azure_cassandra_jvm_gc_time_maximum, azure_cassandra_jvm_gc_time_minimum, azure_cassandra_jvm_gc_time_total</td>
    <td>MilliSeconds</td>
    <td>Approximate accumulated collection elapsed time.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_all_memtables_live_data_size_average, azure_cassandra_table_all_memtables_live_data_size_count, azure_cassandra_table_all_memtables_live_data_size_maximum, azure_cassandra_table_all_memtables_live_data_size_minimum, azure_cassandra_table_all_memtables_live_data_size_total</td>
    <td>Bytes</td>
    <td>Total amount of live data stored in the memtables (2i and pending flush memtables included) that resides off-heap, excluding any data structure overhead.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_all_memtables_off_heap_size_average, azure_cassandra_table_all_memtables_off_heap_size_count, azure_cassandra_table_all_memtables_off_heap_size_maximum, azure_cassandra_table_all_memtables_off_heap_size_minimum, azure_cassandra_table_all_memtables_off_heap_size_total</td>
    <td>Bytes</td>
    <td>Total amount of data stored in the memtables (2i and pending flush memtables included) that resides off-heap.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_bloom_filter_disk_space_used_average, azure_cassandra_table_bloom_filter_disk_space_used_count, azure_cassandra_table_bloom_filter_disk_space_used_maximum, azure_cassandra_table_bloom_filter_disk_space_used_minimum, azure_cassandra_table_bloom_filter_disk_space_used_total</td>
    <td>Bytes</td>
    <td>Disk space used by bloom filter (in bytes).</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_bloom_filter_false_positives_average, azure_cassandra_table_bloom_filter_false_positives_count, azure_cassandra_table_bloom_filter_false_positives_maximum, azure_cassandra_table_bloom_filter_false_positives_minimum, azure_cassandra_table_bloom_filter_false_positives_total</td>
    <td>Count</td>
    <td>Number of false positives on table's bloom filter.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_bloom_filter_false_ratio_average, azure_cassandra_table_bloom_filter_false_ratio_count, azure_cassandra_table_bloom_filter_false_ratio_maximum, azure_cassandra_table_bloom_filter_false_ratio_minimum, azure_cassandra_table_bloom_filter_false_ratio_total</td>
    <td>Percent</td>
    <td>False positive ratio of table's bloom filter.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_bloom_filter_off_heap_memory_used_average, azure_cassandra_table_bloom_filter_off_heap_memory_used_count, azure_cassandra_table_bloom_filter_off_heap_memory_used_maximum, azure_cassandra_table_bloom_filter_off_heap_memory_used_minimum, azure_cassandra_table_bloom_filter_off_heap_memory_used_total</td>
    <td>Bytes</td>
    <td>Off-heap memory used by bloom filter.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_bytes_flushed_average, azure_cassandra_table_bytes_flushed_count, azure_cassandra_table_bytes_flushed_maximum, azure_cassandra_table_bytes_flushed_minimum, azure_cassandra_table_bytes_flushed_total</td>
    <td>Bytes</td>
    <td>Total number of bytes flushed since server [re]start.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_cas_commit_average, azure_cassandra_table_cas_commit_count, azure_cassandra_table_cas_commit_maximum, azure_cassandra_table_cas_commit_minimum, azure_cassandra_table_cas_commit_total</td>
    <td>Count</td>
    <td>Average latency of paxos commit round.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_cas_commit_p99_average, azure_cassandra_table_cas_commit_p99_count, azure_cassandra_table_cas_commit_p99_maximum, azure_cassandra_table_cas_commit_p99_minimum, azure_cassandra_table_cas_commit_p99_total</td>
    <td>Count</td>
    <td>p99 Latency of paxos commit round.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_cas_prepare_average, azure_cassandra_table_cas_prepare_count, azure_cassandra_table_cas_prepare_maximum, azure_cassandra_table_cas_prepare_minimum, azure_cassandra_table_cas_prepare_total</td>
    <td>Count</td>
    <td>Average latency of paxos prepare round.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_cas_prepare_p99_average, azure_cassandra_table_cas_prepare_p99_count, azure_cassandra_table_cas_prepare_p99_maximum, azure_cassandra_table_cas_prepare_p99_minimum, azure_cassandra_table_cas_prepare_p99_total</td>
    <td>Count</td>
    <td>p99 Latency of paxos prepare round.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_cas_propose_average, azure_cassandra_table_cas_propose_count, azure_cassandra_table_cas_propose_maximum, azure_cassandra_table_cas_propose_minimum, azure_cassandra_table_cas_propose_total</td>
    <td>Count</td>
    <td>Average latency of paxos propose round.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_cas_propose_p99_average, azure_cassandra_table_cas_propose_p99_count, azure_cassandra_table_cas_propose_p99_maximum, azure_cassandra_table_cas_propose_p99_minimum, azure_cassandra_table_cas_propose_p99_total</td>
    <td>Count</td>
    <td>p99 Latency of paxos propose round.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_col_update_time_delta_histogram_average, azure_cassandra_table_col_update_time_delta_histogram_count, azure_cassandra_table_col_update_time_delta_histogram_maximum, azure_cassandra_table_col_update_time_delta_histogram_minimum, azure_cassandra_table_col_update_time_delta_histogram_total</td>
    <td>Count</td>
    <td>Average column update time delta on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_col_update_time_delta_histogram_p99_average, azure_cassandra_table_col_update_time_delta_histogram_p99_count, azure_cassandra_table_col_update_time_delta_histogram_p99_maximum, azure_cassandra_table_col_update_time_delta_histogram_p99_minimum, azure_cassandra_table_col_update_time_delta_histogram_p99_total</td>
    <td>Count</td>
    <td>p99 Column update time delta on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_compaction_bytes_written_average, azure_cassandra_table_compaction_bytes_written_count, azure_cassandra_table_compaction_bytes_written_maximum, azure_cassandra_table_compaction_bytes_written_minimum, azure_cassandra_table_compaction_bytes_written_total</td>
    <td>Bytes</td>
    <td>Total number of bytes written by compaction since server [re]start.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_compression_metadata_off_heap_memory_used_average, azure_cassandra_table_compression_metadata_off_heap_memory_used_count, azure_cassandra_table_compression_metadata_off_heap_memory_used_maximum, azure_cassandra_table_compression_metadata_off_heap_memory_used_minimum, azure_cassandra_table_compression_metadata_off_heap_memory_used_total</td>
    <td>Bytes</td>
    <td>Off-heap memory used by compression metadata.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_compression_ratio_average, azure_cassandra_table_compression_ratio_count, azure_cassandra_table_compression_ratio_maximum, azure_cassandra_table_compression_ratio_minimum, azure_cassandra_table_compression_ratio_total</td>
    <td>Percent</td>
    <td>Current compression ratio for all SSTables.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_coordinator_read_latency_average, azure_cassandra_table_coordinator_read_latency_count, azure_cassandra_table_coordinator_read_latency_maximum, azure_cassandra_table_coordinator_read_latency_minimum, azure_cassandra_table_coordinator_read_latency_total</td>
    <td>Count</td>
    <td>Average coordinator read latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_coordinator_read_latency_p99_average, azure_cassandra_table_coordinator_read_latency_p99_count, azure_cassandra_table_coordinator_read_latency_p99_maximum, azure_cassandra_table_coordinator_read_latency_p99_minimum, azure_cassandra_table_coordinator_read_latency_p99_total</td>
    <td>Count</td>
    <td>p99 Coordinator read latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_coordinator_scan_latency_average, azure_cassandra_table_coordinator_scan_latency_count, azure_cassandra_table_coordinator_scan_latency_maximum, azure_cassandra_table_coordinator_scan_latency_minimum, azure_cassandra_table_coordinator_scan_latency_total</td>
    <td>Count</td>
    <td>Average coordinator range scan latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_coordinator_scan_latency_p99_average, azure_cassandra_table_coordinator_scan_latency_p99_count, azure_cassandra_table_coordinator_scan_latency_p99_maximum, azure_cassandra_table_coordinator_scan_latency_p99_minimum, azure_cassandra_table_coordinator_scan_latency_p99_total</td>
    <td>Count</td>
    <td>p99 Coordinator range scan latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_dropped_mutations_average, azure_cassandra_table_dropped_mutations_count, azure_cassandra_table_dropped_mutations_maximum, azure_cassandra_table_dropped_mutations_minimum, azure_cassandra_table_dropped_mutations_total</td>
    <td>Count</td>
    <td>Number of dropped mutations on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_dropped_mutations2_average, azure_cassandra_table_dropped_mutations2_count, azure_cassandra_table_dropped_mutations2_maximum, azure_cassandra_table_dropped_mutations2_minimum, azure_cassandra_table_dropped_mutations2_total</td>
    <td>Count</td>
    <td>Number of dropped mutations on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_estimated_column_count_histogram_average, azure_cassandra_table_estimated_column_count_histogram_count, azure_cassandra_table_estimated_column_count_histogram_maximum, azure_cassandra_table_estimated_column_count_histogram_minimum, azure_cassandra_table_estimated_column_count_histogram_total</td>
    <td>Count</td>
    <td>Estimated number of columns in average.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_estimated_column_count_histogram_p99_average, azure_cassandra_table_estimated_column_count_histogram_p99_count, azure_cassandra_table_estimated_column_count_histogram_p99_maximum, azure_cassandra_table_estimated_column_count_histogram_p99_minimum, azure_cassandra_table_estimated_column_count_histogram_p99_total</td>
    <td>Count</td>
    <td>p99 Estimated number of columns.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_estimated_partition_count_average, azure_cassandra_table_estimated_partition_count_count, azure_cassandra_table_estimated_partition_count_maximum, azure_cassandra_table_estimated_partition_count_minimum, azure_cassandra_table_estimated_partition_count_total</td>
    <td>Count</td>
    <td>Approximate number of keys in table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_estimated_partition_size_histogram_average, azure_cassandra_table_estimated_partition_size_histogram_count, azure_cassandra_table_estimated_partition_size_histogram_maximum, azure_cassandra_table_estimated_partition_size_histogram_minimum, azure_cassandra_table_estimated_partition_size_histogram_total</td>
    <td>Bytes</td>
    <td>Estimated partition size in average.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_estimated_partition_size_histogram_p99_average, azure_cassandra_table_estimated_partition_size_histogram_p99_count, azure_cassandra_table_estimated_partition_size_histogram_p99_maximum, azure_cassandra_table_estimated_partition_size_histogram_p99_minimum, azure_cassandra_table_estimated_partition_size_histogram_p99_total</td>
    <td>Bytes</td>
    <td>p99 Estimated partition size (in bytes).</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_index_summary_off_heap_memory_used_average, azure_cassandra_table_index_summary_off_heap_memory_used_count, azure_cassandra_table_index_summary_off_heap_memory_used_maximum, azure_cassandra_table_index_summary_off_heap_memory_used_minimum, azure_cassandra_table_index_summary_off_heap_memory_used_total</td>
    <td>Bytes</td>
    <td>Off-heap memory used by index summary.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_key_cache_hit_rate_average, azure_cassandra_table_key_cache_hit_rate_count, azure_cassandra_table_key_cache_hit_rate_maximum, azure_cassandra_table_key_cache_hit_rate_minimum, azure_cassandra_table_key_cache_hit_rate_total</td>
    <td>Percent</td>
    <td>Key cache hit rate for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_live_disk_space_used_average, azure_cassandra_table_live_disk_space_used_count, azure_cassandra_table_live_disk_space_used_maximum, azure_cassandra_table_live_disk_space_used_minimum, azure_cassandra_table_live_disk_space_used_total</td>
    <td>Bytes</td>
    <td>Disk space used by SSTables belonging to this table (in bytes).</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_live_scanned_histogram_average, azure_cassandra_table_live_scanned_histogram_count, azure_cassandra_table_live_scanned_histogram_maximum, azure_cassandra_table_live_scanned_histogram_minimum, azure_cassandra_table_live_scanned_histogram_total</td>
    <td>Count</td>
    <td>Average live cells scanned in queries on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_live_scanned_histogram_p99_average, azure_cassandra_table_live_scanned_histogram_p99_count, azure_cassandra_table_live_scanned_histogram_p99_maximum, azure_cassandra_table_live_scanned_histogram_p99_minimum, azure_cassandra_table_live_scanned_histogram_p99_total</td>
    <td>Count</td>
    <td>p99 Live cells scanned in queries on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_live_sstable_count_average, azure_cassandra_table_live_sstable_count_count, azure_cassandra_table_live_sstable_count_maximum, azure_cassandra_table_live_sstable_count_minimum, azure_cassandra_table_live_sstable_count_total</td>
    <td>Count</td>
    <td>Number of SSTables on disk for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_max_partition_size_average, azure_cassandra_table_max_partition_size_count, azure_cassandra_table_max_partition_size_maximum, azure_cassandra_table_max_partition_size_minimum, azure_cassandra_table_max_partition_size_total</td>
    <td>Bytes</td>
    <td>Size of the largest compacted partition (in bytes).</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_mean_partition_size_average, azure_cassandra_table_mean_partition_size_count, azure_cassandra_table_mean_partition_size_maximum, azure_cassandra_table_mean_partition_size_minimum, azure_cassandra_table_mean_partition_size_total</td>
    <td>Bytes</td>
    <td>Size of the average compacted partition (in bytes).</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_memtable_columns_count_average, azure_cassandra_table_memtable_columns_count_count, azure_cassandra_table_memtable_columns_count_maximum, azure_cassandra_table_memtable_columns_count_minimum, azure_cassandra_table_memtable_columns_count_total</td>
    <td>Count</td>
    <td>Total number of columns present in the memtable.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_memtable_off_heap_size_average, azure_cassandra_table_memtable_off_heap_size_count, azure_cassandra_table_memtable_off_heap_size_maximum, azure_cassandra_table_memtable_off_heap_size_minimum, azure_cassandra_table_memtable_off_heap_size_total</td>
    <td>Bytes</td>
    <td>Total amount of data stored in the memtable that resides off-heap, including column related overhead and partitions overwritten.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_memtable_on_heap_size_average, azure_cassandra_table_memtable_on_heap_size_count, azure_cassandra_table_memtable_on_heap_size_maximum, azure_cassandra_table_memtable_on_heap_size_minimum, azure_cassandra_table_memtable_on_heap_size_total</td>
    <td>Bytes</td>
    <td>Total amount of data stored in the memtable that resides on-heap, including column related overhead and partitions overwritten.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_memtable_switch_count_average, azure_cassandra_table_memtable_switch_count_count, azure_cassandra_table_memtable_switch_count_maximum, azure_cassandra_table_memtable_switch_count_minimum, azure_cassandra_table_memtable_switch_count_total</td>
    <td>Count</td>
    <td>Number of times flush has resulted in the memtable being switched out.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_min_partition_size_average, azure_cassandra_table_min_partition_size_count, azure_cassandra_table_min_partition_size_maximum, azure_cassandra_table_min_partition_size_minimum, azure_cassandra_table_min_partition_size_total</td>
    <td>Bytes</td>
    <td>Size of the smallest compacted partition (in bytes).</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_pending_compactions_average, azure_cassandra_table_pending_compactions_count, azure_cassandra_table_pending_compactions_maximum, azure_cassandra_table_pending_compactions_minimum, azure_cassandra_table_pending_compactions_total</td>
    <td>Count</td>
    <td>Estimate of number of pending compactions for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_pending_compactions2_average, azure_cassandra_table_pending_compactions2_count, azure_cassandra_table_pending_compactions2_maximum, azure_cassandra_table_pending_compactions2_minimum, azure_cassandra_table_pending_compactions2_total</td>
    <td>Count</td>
    <td>Estimate of number of pending compactions for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_pending_flushes_average, azure_cassandra_table_pending_flushes_count, azure_cassandra_table_pending_flushes_maximum, azure_cassandra_table_pending_flushes_minimum, azure_cassandra_table_pending_flushes_total</td>
    <td>Count</td>
    <td>Estimated number of flush tasks pending for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_pending_flushes2_average, azure_cassandra_table_pending_flushes2_count, azure_cassandra_table_pending_flushes2_maximum, azure_cassandra_table_pending_flushes2_minimum, azure_cassandra_table_pending_flushes2_total</td>
    <td>Count</td>
    <td>Estimated number of flush tasks pending for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_percent_repaired_average, azure_cassandra_table_percent_repaired_count, azure_cassandra_table_percent_repaired_maximum, azure_cassandra_table_percent_repaired_minimum, azure_cassandra_table_percent_repaired_total</td>
    <td>Percent</td>
    <td>Percent of table data that is repaired on disk.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_range_latency_average, azure_cassandra_table_range_latency_count, azure_cassandra_table_range_latency_maximum, azure_cassandra_table_range_latency_minimum, azure_cassandra_table_range_latency_total</td>
    <td>Count</td>
    <td>Average local range scan latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_range_latency_p99_average, azure_cassandra_table_range_latency_p99_count, azure_cassandra_table_range_latency_p99_maximum, azure_cassandra_table_range_latency_p99_minimum, azure_cassandra_table_range_latency_p99_total</td>
    <td>Count</td>
    <td>p99 Local range scan latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_read_latency_average, azure_cassandra_table_read_latency_count, azure_cassandra_table_read_latency_maximum, azure_cassandra_table_read_latency_minimum, azure_cassandra_table_read_latency_total</td>
    <td>Count</td>
    <td>Average local read latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_read_latency_p99_average, azure_cassandra_table_read_latency_p99_count, azure_cassandra_table_read_latency_p99_maximum, azure_cassandra_table_read_latency_p99_minimum, azure_cassandra_table_read_latency_p99_total</td>
    <td>Count</td>
    <td>p99 Local read latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_row_cache_hit_average, azure_cassandra_table_row_cache_hit_count, azure_cassandra_table_row_cache_hit_maximum, azure_cassandra_table_row_cache_hit_minimum, azure_cassandra_table_row_cache_hit_total</td>
    <td>Count</td>
    <td>Number of table row cache hits.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_row_cache_hit_out_of_range_average, azure_cassandra_table_row_cache_hit_out_of_range_count, azure_cassandra_table_row_cache_hit_out_of_range_maximum, azure_cassandra_table_row_cache_hit_out_of_range_minimum, azure_cassandra_table_row_cache_hit_out_of_range_total</td>
    <td>Count</td>
    <td>Number of table row cache hits that do not satisfy the query filter, thus went to disk.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_row_cache_miss_average, azure_cassandra_table_row_cache_miss_count, azure_cassandra_table_row_cache_miss_maximum, azure_cassandra_table_row_cache_miss_minimum, azure_cassandra_table_row_cache_miss_total</td>
    <td>Count</td>
    <td>Number of table row cache misses.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_speculative_retries_average, azure_cassandra_table_speculative_retries_count, azure_cassandra_table_speculative_retries_maximum, azure_cassandra_table_speculative_retries_minimum, azure_cassandra_table_speculative_retries_total</td>
    <td>Count</td>
    <td>Number of times speculative retries were sent for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_sstables_per_read_histogram_average, azure_cassandra_table_sstables_per_read_histogram_count, azure_cassandra_table_sstables_per_read_histogram_maximum, azure_cassandra_table_sstables_per_read_histogram_minimum, azure_cassandra_table_sstables_per_read_histogram_total</td>
    <td>Count</td>
    <td>Average number of sstable data files accessed per single partition read. SSTables skipped due to Bloom Filters, min-max key or partition index lookup are not taken into account.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_sstables_per_read_histogram_p99_average, azure_cassandra_table_sstables_per_read_histogram_p99_count, azure_cassandra_table_sstables_per_read_histogram_p99_maximum, azure_cassandra_table_sstables_per_read_histogram_p99_minimum, azure_cassandra_table_sstables_per_read_histogram_p99_total</td>
    <td>Count</td>
    <td>p99 Number of sstable data files accessed per single partition read. SSTables skipped due to Bloom Filters, min-max key or partition index lookup are not taken into account.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_tombstone_scanned_histogram_average, azure_cassandra_table_tombstone_scanned_histogram_count, azure_cassandra_table_tombstone_scanned_histogram_maximum, azure_cassandra_table_tombstone_scanned_histogram_minimum, azure_cassandra_table_tombstone_scanned_histogram_total</td>
    <td>Count</td>
    <td>Average tombstones scanned in queries on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_tombstone_scanned_histogram_p99_average, azure_cassandra_table_tombstone_scanned_histogram_p99_count, azure_cassandra_table_tombstone_scanned_histogram_p99_maximum, azure_cassandra_table_tombstone_scanned_histogram_p99_minimum, azure_cassandra_table_tombstone_scanned_histogram_p99_total</td>
    <td>Count</td>
    <td>p99 Tombstones scanned in queries on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_total_disk_space_used_average, azure_cassandra_table_total_disk_space_used_count, azure_cassandra_table_total_disk_space_used_maximum, azure_cassandra_table_total_disk_space_used_minimum, azure_cassandra_table_total_disk_space_used_total</td>
    <td>Bytes</td>
    <td>Total disk space used by SSTables belonging to this table, including obsolete ones waiting to be GC'd.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_total_disk_space_used2_average, azure_cassandra_table_total_disk_space_used2_count, azure_cassandra_table_total_disk_space_used2_maximum, azure_cassandra_table_total_disk_space_used2_minimum, azure_cassandra_table_total_disk_space_used2_total</td>
    <td>Bytes</td>
    <td>Total disk space used by SSTables belonging to this table, including obsolete ones waiting to be GC'd.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_view_lock_acquire_time_average, azure_cassandra_table_view_lock_acquire_time_count, azure_cassandra_table_view_lock_acquire_time_maximum, azure_cassandra_table_view_lock_acquire_time_minimum, azure_cassandra_table_view_lock_acquire_time_total</td>
    <td>Count</td>
    <td>Average time taken acquiring a partition lock for materialized view updates on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_view_lock_acquire_time_p99_average, azure_cassandra_table_view_lock_acquire_time_p99_count, azure_cassandra_table_view_lock_acquire_time_p99_maximum, azure_cassandra_table_view_lock_acquire_time_p99_minimum, azure_cassandra_table_view_lock_acquire_time_p99_total</td>
    <td>Count</td>
    <td>p99 Time taken acquiring a partition lock for materialized view updates on this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_view_read_time_average, azure_cassandra_table_view_read_time_count, azure_cassandra_table_view_read_time_maximum, azure_cassandra_table_view_read_time_minimum, azure_cassandra_table_view_read_time_total</td>
    <td>Count</td>
    <td>Average time taken during the local read of a materialized view update.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_view_read_time_p99_average, azure_cassandra_table_view_read_time_p99_count, azure_cassandra_table_view_read_time_p99_maximum, azure_cassandra_table_view_read_time_p99_minimum, azure_cassandra_table_view_read_time_p99_total</td>
    <td>Count</td>
    <td>p99 Time taken during the local read of a materialized view update.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_waiting_on_free_memtable_space_average, azure_cassandra_table_waiting_on_free_memtable_space_count, azure_cassandra_table_waiting_on_free_memtable_space_maximum, azure_cassandra_table_waiting_on_free_memtable_space_minimum, azure_cassandra_table_waiting_on_free_memtable_space_total</td>
    <td>Count</td>
    <td>Average time spent waiting for free memtable space, either on- or off-heap.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_waiting_on_free_memtable_space_p99_average, azure_cassandra_table_waiting_on_free_memtable_space_p99_count, azure_cassandra_table_waiting_on_free_memtable_space_p99_maximum, azure_cassandra_table_waiting_on_free_memtable_space_p99_minimum, azure_cassandra_table_waiting_on_free_memtable_space_p99_total</td>
    <td>Count</td>
    <td>p99 Time spent waiting for free memtable space, either on- or off-heap.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_write_latency_average, azure_cassandra_table_write_latency_count, azure_cassandra_table_write_latency_maximum, azure_cassandra_table_write_latency_minimum, azure_cassandra_table_write_latency_total</td>
    <td>Count</td>
    <td>Average local write latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_table_write_latency_p99_average, azure_cassandra_table_write_latency_p99_count, azure_cassandra_table_write_latency_p99_maximum, azure_cassandra_table_write_latency_p99_minimum, azure_cassandra_table_write_latency_p99_total</td>
    <td>Count</td>
    <td>p99 Local write latency for this table.</td>
  </tr>
  <tr>
    <td>azure_cassandra_thread_pools_active_tasks_average, azure_cassandra_thread_pools_active_tasks_count, azure_cassandra_thread_pools_active_tasks_maximum, azure_cassandra_thread_pools_active_tasks_minimum, azure_cassandra_thread_pools_active_tasks_total</td>
    <td>Count</td>
    <td>Number of tasks being actively worked on by this pool.</td>
  </tr>
  <tr>
    <td>azure_cassandra_thread_pools_currently_blocked_tasks_average, azure_cassandra_thread_pools_currently_blocked_tasks_count, azure_cassandra_thread_pools_currently_blocked_tasks_maximum, azure_cassandra_thread_pools_currently_blocked_tasks_minimum, azure_cassandra_thread_pools_currently_blocked_tasks_total</td>
    <td>Count</td>
    <td>Number of tasks that are currently blocked due to queue saturation but on retry will become unblocked.</td>
  </tr>
  <tr>
    <td>azure_cassandra_thread_pools_currently_blocked_tasks2_average, azure_cassandra_thread_pools_currently_blocked_tasks2_count, azure_cassandra_thread_pools_currently_blocked_tasks2_maximum, azure_cassandra_thread_pools_currently_blocked_tasks2_minimum, azure_cassandra_thread_pools_currently_blocked_tasks2_total</td>
    <td>Count</td>
    <td>Number of tasks that are currently blocked due to queue saturation but on retry will become unblocked.</td>
  </tr>
  <tr>
    <td>azure_cassandra_thread_pools_max_pool_size_average, azure_cassandra_thread_pools_max_pool_size_count, azure_cassandra_thread_pools_max_pool_size_maximum, azure_cassandra_thread_pools_max_pool_size_minimum, azure_cassandra_thread_pools_max_pool_size_total</td>
    <td>Count</td>
    <td>The maximum number of threads in this pool.</td>
  </tr>
  <tr>
    <td>azure_cassandra_thread_pools_pending_tasks_average, azure_cassandra_thread_pools_pending_tasks_count, azure_cassandra_thread_pools_pending_tasks_maximum, azure_cassandra_thread_pools_pending_tasks_minimum, azure_cassandra_thread_pools_pending_tasks_total</td>
    <td>Count</td>
    <td>Number of queued tasks queued up on this pool.</td>
  </tr>
  <tr>
    <td>azure_cassandra_thread_pools_total_blocked_tasks_average, azure_cassandra_thread_pools_total_blocked_tasks_count, azure_cassandra_thread_pools_total_blocked_tasks_maximum, azure_cassandra_thread_pools_total_blocked_tasks_minimum, azure_cassandra_thread_pools_total_blocked_tasks_total</td>
    <td>Count</td>
    <td>Number of tasks that were blocked due to queue saturation.</td>
  </tr>
  <tr>
    <td>azure_cpu_average, azure_cpu_count, azure_cpu_maximum, azure_cpu_minimum, azure_cpu_total</td>
    <td>Percent</td>
    <td>CPU active usage rate</td>
  </tr>
  <tr>
    <td>azure_disk_utilization_average, azure_disk_utilization_count, azure_disk_utilization_maximum, azure_disk_utilization_minimum, azure_disk_utilization_total</td>
    <td>Percent</td>
    <td>Disk utilization rate</td>
  </tr>
  <tr>
    <td>azure_diskio_merged_reads_average, azure_diskio_merged_reads_count, azure_diskio_merged_reads_maximum, azure_diskio_merged_reads_minimum, azure_diskio_merged_reads_total</td>
    <td>Count</td>
    <td>disk I/O merged reads</td>
  </tr>
  <tr>
    <td>azure_diskio_merged_writes_average, azure_diskio_merged_writes_count, azure_diskio_merged_writes_maximum, azure_diskio_merged_writes_minimum, azure_diskio_merged_writes_total</td>
    <td>Count</td>
    <td>disk I/O merged writes</td>
  </tr>
  <tr>
    <td>azure_diskio_read_bytes_average, azure_diskio_read_bytes_count, azure_diskio_read_bytes_maximum, azure_diskio_read_bytes_minimum, azure_diskio_read_bytes_total</td>
    <td>Bytes</td>
    <td>disk I/O read bytes</td>
  </tr>
  <tr>
    <td>azure_diskio_read_time_average, azure_diskio_read_time_count, azure_diskio_read_time_maximum, azure_diskio_read_time_minimum, azure_diskio_read_time_total</td>
    <td>MilliSeconds</td>
    <td>disk I/O read time (milliseconds)</td>
  </tr>
  <tr>
    <td>azure_diskio_reads_average, azure_diskio_reads_count, azure_diskio_reads_maximum, azure_diskio_reads_minimum, azure_diskio_reads_total</td>
    <td>Count</td>
    <td>disk I/O read counts</td>
  </tr>
  <tr>
    <td>azure_diskio_write_bytes_average, azure_diskio_write_bytes_count, azure_diskio_write_bytes_maximum, azure_diskio_write_bytes_minimum, azure_diskio_write_bytes_total</td>
    <td>Bytes</td>
    <td>disk I/O write bytes</td>
  </tr>
  <tr>
    <td>azure_diskio_write_time_average, azure_diskio_write_time_count, azure_diskio_write_time_maximum, azure_diskio_write_time_minimum, azure_diskio_write_time_total</td>
    <td>MilliSeconds</td>
    <td>disk I/O write time (milliseconds)</td>
  </tr>
  <tr>
    <td>azure_diskio_writes_average, azure_diskio_writes_count, azure_diskio_writes_maximum, azure_diskio_writes_minimum, azure_diskio_writes_total</td>
    <td>Count</td>
    <td>disk I/O write counts</td>
  </tr>
  <tr>
    <td>azure_ethtool_rx_bytes_average, azure_ethtool_rx_bytes_count, azure_ethtool_rx_bytes_maximum, azure_ethtool_rx_bytes_minimum, azure_ethtool_rx_bytes_total</td>
    <td>Bytes</td>
    <td>network received bytes</td>
  </tr>
  <tr>
    <td>azure_ethtool_rx_packets_average, azure_ethtool_rx_packets_count, azure_ethtool_rx_packets_maximum, azure_ethtool_rx_packets_minimum, azure_ethtool_rx_packets_total</td>
    <td>Count</td>
    <td>network received packets</td>
  </tr>
  <tr>
    <td>azure_ethtool_tx_bytes_average, azure_ethtool_tx_bytes_count, azure_ethtool_tx_bytes_maximum, azure_ethtool_tx_bytes_minimum, azure_ethtool_tx_bytes_total</td>
    <td>Bytes</td>
    <td>network transmitted bytes</td>
  </tr>
  <tr>
    <td>azure_ethtool_tx_packets_average, azure_ethtool_tx_packets_count, azure_ethtool_tx_packets_maximum, azure_ethtool_tx_packets_minimum, azure_ethtool_tx_packets_total</td>
    <td>Count</td>
    <td>network transmitted packets</td>
  </tr>
  <tr>
    <td>azure_percent_mem_average, azure_percent_mem_count, azure_percent_mem_maximum, azure_percent_mem_minimum, azure_percent_mem_total</td>
    <td>Percent</td>
    <td>Memory utilization rate</td>
  </tr>
</table>
