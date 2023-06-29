---
title: Azure Microsoft.DBforMySQL/flexibleServers metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DBforMySQL/flexibleServers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DBforMySQL/flexibleServers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DBforMySQL/flexibleServers, **PUT DESCRIPTION HERE**. 

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
    <td>azure_aborted_connections_average, azure_aborted_connections_count, azure_aborted_connections_maximum, azure_aborted_connections_minimum, azure_aborted_connections_total</td>
    <td>Count</td>
    <td>Aborted Connections</td>
  </tr>
  <tr>
    <td>azure_active_connections_average, azure_active_connections_count, azure_active_connections_maximum, azure_active_connections_minimum, azure_active_connections_total</td>
    <td>Count</td>
    <td>Active Connections</td>
  </tr>
  <tr>
    <td>azure_available_memory_bytes_average, azure_available_memory_bytes_count, azure_available_memory_bytes_maximum, azure_available_memory_bytes_minimum, azure_available_memory_bytes_total</td>
    <td>Bytes</td>
    <td>Amount of physical memory, in bytes.</td>
  </tr>
  <tr>
    <td>azure_backup_storage_used_average, azure_backup_storage_used_count, azure_backup_storage_used_maximum, azure_backup_storage_used_minimum, azure_backup_storage_used_total</td>
    <td>Bytes</td>
    <td>Backup Storage Used</td>
  </tr>
  <tr>
    <td>azure_com_alter_table_average, azure_com_alter_table_count, azure_com_alter_table_maximum, azure_com_alter_table_minimum, azure_com_alter_table_total</td>
    <td>Count</td>
    <td>The number of times ALTER TABLE statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_com_create_db_average, azure_com_create_db_count, azure_com_create_db_maximum, azure_com_create_db_minimum, azure_com_create_db_total</td>
    <td>Count</td>
    <td>The number of times CREATE DB statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_com_create_table_average, azure_com_create_table_count, azure_com_create_table_maximum, azure_com_create_table_minimum, azure_com_create_table_total</td>
    <td>Count</td>
    <td>The number of times CREATE TABLE statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_com_delete_average, azure_com_delete_count, azure_com_delete_maximum, azure_com_delete_minimum, azure_com_delete_total</td>
    <td>Count</td>
    <td>The number of times DELETE statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_com_drop_db_average, azure_com_drop_db_count, azure_com_drop_db_maximum, azure_com_drop_db_minimum, azure_com_drop_db_total</td>
    <td>Count</td>
    <td>The number of times DROP DB statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_com_drop_table_average, azure_com_drop_table_count, azure_com_drop_table_maximum, azure_com_drop_table_minimum, azure_com_drop_table_total</td>
    <td>Count</td>
    <td>The number of times DROP TABLE statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_com_insert_average, azure_com_insert_count, azure_com_insert_maximum, azure_com_insert_minimum, azure_com_insert_total</td>
    <td>Count</td>
    <td>The number of times INSERT statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_com_select_average, azure_com_select_count, azure_com_select_maximum, azure_com_select_minimum, azure_com_select_total</td>
    <td>Count</td>
    <td>The number of times SELECT statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_com_update_average, azure_com_update_count, azure_com_update_maximum, azure_com_update_minimum, azure_com_update_total</td>
    <td>Count</td>
    <td>The number of times UPDATE statement has been executed.</td>
  </tr>
  <tr>
    <td>azure_cpu_credits_consumed_average, azure_cpu_credits_consumed_count, azure_cpu_credits_consumed_maximum, azure_cpu_credits_consumed_minimum, azure_cpu_credits_consumed_total</td>
    <td>Count</td>
    <td>CPU Credits Consumed</td>
  </tr>
  <tr>
    <td>azure_cpu_credits_remaining_average, azure_cpu_credits_remaining_count, azure_cpu_credits_remaining_maximum, azure_cpu_credits_remaining_minimum, azure_cpu_credits_remaining_total</td>
    <td>Count</td>
    <td>CPU Credits Remaining</td>
  </tr>
  <tr>
    <td>azure_cpu_percent_average, azure_cpu_percent_count, azure_cpu_percent_maximum, azure_cpu_percent_minimum, azure_cpu_percent_total</td>
    <td>Percent</td>
    <td>Host CPU Percent</td>
  </tr>
  <tr>
    <td>azure_ha_io_status_average, azure_ha_io_status_count, azure_ha_io_status_maximum, azure_ha_io_status_minimum, azure_ha_io_status_total</td>
    <td>Count</td>
    <td>Status for replication IO thread running</td>
  </tr>
  <tr>
    <td>azure_ha_replication_lag_average, azure_ha_replication_lag_count, azure_ha_replication_lag_maximum, azure_ha_replication_lag_minimum, azure_ha_replication_lag_total</td>
    <td>Seconds</td>
    <td>HA Replication lag in seconds</td>
  </tr>
  <tr>
    <td>azure_ha_sql_status_average, azure_ha_sql_status_count, azure_ha_sql_status_maximum, azure_ha_sql_status_minimum, azure_ha_sql_status_total</td>
    <td>Count</td>
    <td>Status for replication SQL thread running</td>
  </tr>
  <tr>
    <td>azure_innodb_buffer_pool_pages_data_average, azure_innodb_buffer_pool_pages_data_count, azure_innodb_buffer_pool_pages_data_maximum, azure_innodb_buffer_pool_pages_data_minimum, azure_innodb_buffer_pool_pages_data_total</td>
    <td>Count</td>
    <td>The number of pages in the InnoDB buffer pool containing data.</td>
  </tr>
  <tr>
    <td>azure_innodb_buffer_pool_pages_dirty_average, azure_innodb_buffer_pool_pages_dirty_count, azure_innodb_buffer_pool_pages_dirty_maximum, azure_innodb_buffer_pool_pages_dirty_minimum, azure_innodb_buffer_pool_pages_dirty_total</td>
    <td>Count</td>
    <td>The current number of dirty pages in the InnoDB buffer pool.</td>
  </tr>
  <tr>
    <td>azure_innodb_buffer_pool_pages_free_average, azure_innodb_buffer_pool_pages_free_count, azure_innodb_buffer_pool_pages_free_maximum, azure_innodb_buffer_pool_pages_free_minimum, azure_innodb_buffer_pool_pages_free_total</td>
    <td>Count</td>
    <td>The number of free pages in the InnoDB buffer pool.</td>
  </tr>
  <tr>
    <td>azure_innodb_buffer_pool_read_requests_average, azure_innodb_buffer_pool_read_requests_count, azure_innodb_buffer_pool_read_requests_maximum, azure_innodb_buffer_pool_read_requests_minimum, azure_innodb_buffer_pool_read_requests_total</td>
    <td>Count</td>
    <td>The number of logical read requests.</td>
  </tr>
  <tr>
    <td>azure_innodb_buffer_pool_reads_average, azure_innodb_buffer_pool_reads_count, azure_innodb_buffer_pool_reads_maximum, azure_innodb_buffer_pool_reads_minimum, azure_innodb_buffer_pool_reads_total</td>
    <td>Count</td>
    <td>The number of logical reads that InnoDB could not satisfy from the buffer pool, and had to read directly from disk.</td>
  </tr>
  <tr>
    <td>azure_innodb_data_writes_average, azure_innodb_data_writes_count, azure_innodb_data_writes_maximum, azure_innodb_data_writes_minimum, azure_innodb_data_writes_total</td>
    <td>Count</td>
    <td>The total number of data writes.</td>
  </tr>
  <tr>
    <td>azure_innodb_row_lock_time_average, azure_innodb_row_lock_time_count, azure_innodb_row_lock_time_maximum, azure_innodb_row_lock_time_minimum, azure_innodb_row_lock_time_total</td>
    <td>Milliseconds</td>
    <td>The total time spent in acquiring row locks for InnoDB tables, in milliseconds.</td>
  </tr>
  <tr>
    <td>azure_io_consumption_percent_average, azure_io_consumption_percent_count, azure_io_consumption_percent_maximum, azure_io_consumption_percent_minimum, azure_io_consumption_percent_total</td>
    <td>Percent</td>
    <td>Storage I/O consumption percent</td>
  </tr>
  <tr>
    <td>azure_memory_percent_average, azure_memory_percent_count, azure_memory_percent_maximum, azure_memory_percent_minimum, azure_memory_percent_total</td>
    <td>Percent</td>
    <td>Host Memory Percent</td>
  </tr>
  <tr>
    <td>azure_network_bytes_egress_average, azure_network_bytes_egress_count, azure_network_bytes_egress_maximum, azure_network_bytes_egress_minimum, azure_network_bytes_egress_total</td>
    <td>Bytes</td>
    <td>Host Network egress in bytes</td>
  </tr>
  <tr>
    <td>azure_network_bytes_ingress_average, azure_network_bytes_ingress_count, azure_network_bytes_ingress_maximum, azure_network_bytes_ingress_minimum, azure_network_bytes_ingress_total</td>
    <td>Bytes</td>
    <td>Host Network ingress in bytes</td>
  </tr>
  <tr>
    <td>azure_queries_average, azure_queries_count, azure_queries_maximum, azure_queries_minimum, azure_queries_total</td>
    <td>Count</td>
    <td>Queries</td>
  </tr>
  <tr>
    <td>azure_replica_io_running_average, azure_replica_io_running_count, azure_replica_io_running_maximum, azure_replica_io_running_minimum, azure_replica_io_running_total</td>
    <td>Count</td>
    <td>Status for replication IO thread running</td>
  </tr>
  <tr>
    <td>azure_replica_sql_running_average, azure_replica_sql_running_count, azure_replica_sql_running_maximum, azure_replica_sql_running_minimum, azure_replica_sql_running_total</td>
    <td>Count</td>
    <td>Status for replication SQL thread running</td>
  </tr>
  <tr>
    <td>azure_replication_lag_average, azure_replication_lag_count, azure_replication_lag_maximum, azure_replication_lag_minimum, azure_replication_lag_total</td>
    <td>Seconds</td>
    <td>Replication lag in seconds</td>
  </tr>
  <tr>
    <td>azure_serverlog_storage_limit_average, azure_serverlog_storage_limit_count, azure_serverlog_storage_limit_maximum, azure_serverlog_storage_limit_minimum, azure_serverlog_storage_limit_total</td>
    <td>Bytes</td>
    <td>Serverlog Storage Limit</td>
  </tr>
  <tr>
    <td>azure_serverlog_storage_percent_average, azure_serverlog_storage_percent_count, azure_serverlog_storage_percent_maximum, azure_serverlog_storage_percent_minimum, azure_serverlog_storage_percent_total</td>
    <td>Percent</td>
    <td>Serverlog Storage Percent</td>
  </tr>
  <tr>
    <td>azure_serverlog_storage_usage_average, azure_serverlog_storage_usage_count, azure_serverlog_storage_usage_maximum, azure_serverlog_storage_usage_minimum, azure_serverlog_storage_usage_total</td>
    <td>Bytes</td>
    <td>Serverlog Storage Used</td>
  </tr>
  <tr>
    <td>azure_slow_queries_average, azure_slow_queries_count, azure_slow_queries_maximum, azure_slow_queries_minimum, azure_slow_queries_total</td>
    <td>Count</td>
    <td>The number of queries that have taken more than long_query_time seconds.</td>
  </tr>
  <tr>
    <td>azure_storage_io_count_average, azure_storage_io_count_count, azure_storage_io_count_maximum, azure_storage_io_count_minimum, azure_storage_io_count_total</td>
    <td>Count</td>
    <td>The number of storage I/O consumed.</td>
  </tr>
  <tr>
    <td>azure_storage_limit_average, azure_storage_limit_count, azure_storage_limit_maximum, azure_storage_limit_minimum, azure_storage_limit_total</td>
    <td>Bytes</td>
    <td>Storage Limit</td>
  </tr>
  <tr>
    <td>azure_storage_percent_average, azure_storage_percent_count, azure_storage_percent_maximum, azure_storage_percent_minimum, azure_storage_percent_total</td>
    <td>Percent</td>
    <td>Storage Percent</td>
  </tr>
  <tr>
    <td>azure_storage_throttle_count_average, azure_storage_throttle_count_count, azure_storage_throttle_count_maximum, azure_storage_throttle_count_minimum, azure_storage_throttle_count_total</td>
    <td>Count</td>
    <td>Storage IO requests throttled in the selected time range. Deprecated, please check Storage IO Percent for throttling.</td>
  </tr>
  <tr>
    <td>azure_storage_used_average, azure_storage_used_count, azure_storage_used_maximum, azure_storage_used_minimum, azure_storage_used_total</td>
    <td>Bytes</td>
    <td>Storage Used</td>
  </tr>
  <tr>
    <td>azure_threads_running_average, azure_threads_running_count, azure_threads_running_maximum, azure_threads_running_minimum, azure_threads_running_total</td>
    <td>Count</td>
    <td>The number of threads that are not sleeping.</td>
  </tr>
  <tr>
    <td>azure_total_connections_average, azure_total_connections_count, azure_total_connections_maximum, azure_total_connections_minimum, azure_total_connections_total</td>
    <td>Count</td>
    <td>Total Connections</td>
  </tr>
</table>
