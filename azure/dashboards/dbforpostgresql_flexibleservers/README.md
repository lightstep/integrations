---
title: Azure Microsoft.DBforPostgreSQL/flexibleServers metrics
date: 2023-07-07 00:00:00
canonical_url:
description: See the Azure Microsoft.DBforPostgreSQL/flexibleServers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DBforPostgreSQL/flexibleServers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DBforPostgreSQL/flexibleServers.

See [all available Azure integrations](/docs/azure-metrics).
{: .tip}

To verify metrics are reporting, search for the metrics on the [Metric details](/docs/manage-metric-details) page.
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
    <td>azure_active_connections_average, azure_active_connections_count, azure_active_connections_maximum, azure_active_connections_minimum, azure_active_connections_total</td>
    <td>Count</td>
    <td>Active Connections</td>
  </tr>
  <tr>
    <td>azure_analyze_count_user_tables_average, azure_analyze_count_user_tables_count, azure_analyze_count_user_tables_maximum, azure_analyze_count_user_tables_minimum, azure_analyze_count_user_tables_total</td>
    <td>Count</td>
    <td>Number of times user only tables have been manually analyzed in this database</td>
  </tr>
  <tr>
    <td>azure_autoanalyze_count_user_tables_average, azure_autoanalyze_count_user_tables_count, azure_autoanalyze_count_user_tables_maximum, azure_autoanalyze_count_user_tables_minimum, azure_autoanalyze_count_user_tables_total</td>
    <td>Count</td>
    <td>Number of times user only tables have been analyzed by the autovacuum daemon in this database</td>
  </tr>
  <tr>
    <td>azure_autovacuum_count_user_tables_average, azure_autovacuum_count_user_tables_count, azure_autovacuum_count_user_tables_maximum, azure_autovacuum_count_user_tables_minimum, azure_autovacuum_count_user_tables_total</td>
    <td>Count</td>
    <td>Number of times user only tables have been vacuumed by the autovacuum daemon in this database</td>
  </tr>
  <tr>
    <td>azure_backup_storage_used_average, azure_backup_storage_used_count, azure_backup_storage_used_maximum, azure_backup_storage_used_minimum, azure_backup_storage_used_total</td>
    <td>Bytes</td>
    <td>Backup Storage Used</td>
  </tr>
  <tr>
    <td>azure_blks_hit_average, azure_blks_hit_count, azure_blks_hit_maximum, azure_blks_hit_minimum, azure_blks_hit_total</td>
    <td>Count</td>
    <td>Number of times disk blocks were found already in the buffer cache, so that a read was not necessary</td>
  </tr>
  <tr>
    <td>azure_blks_read_average, azure_blks_read_count, azure_blks_read_maximum, azure_blks_read_minimum, azure_blks_read_total</td>
    <td>Count</td>
    <td>Number of disk blocks read in this database</td>
  </tr>
  <tr>
    <td>azure_client_connections_active_average, azure_client_connections_active_count, azure_client_connections_active_maximum, azure_client_connections_active_minimum, azure_client_connections_active_total</td>
    <td>Count</td>
    <td>Connections from clients which are associated with a PostgreSQL connection</td>
  </tr>
  <tr>
    <td>azure_client_connections_waiting_average, azure_client_connections_waiting_count, azure_client_connections_waiting_maximum, azure_client_connections_waiting_minimum, azure_client_connections_waiting_total</td>
    <td>Count</td>
    <td>Connections from clients that are waiting for a PostgreSQL connection to service them</td>
  </tr>
  <tr>
    <td>azure_connections_failed_average, azure_connections_failed_count, azure_connections_failed_maximum, azure_connections_failed_minimum, azure_connections_failed_total</td>
    <td>Count</td>
    <td>Failed Connections</td>
  </tr>
  <tr>
    <td>azure_connections_succeeded_average, azure_connections_succeeded_count, azure_connections_succeeded_maximum, azure_connections_succeeded_minimum, azure_connections_succeeded_total</td>
    <td>Count</td>
    <td>Succeeded Connections</td>
  </tr>
  <tr>
    <td>azure_cpu_credits_consumed_average, azure_cpu_credits_consumed_count, azure_cpu_credits_consumed_maximum, azure_cpu_credits_consumed_minimum, azure_cpu_credits_consumed_total</td>
    <td>Count</td>
    <td>Total number of credits consumed by the database server</td>
  </tr>
  <tr>
    <td>azure_cpu_credits_remaining_average, azure_cpu_credits_remaining_count, azure_cpu_credits_remaining_maximum, azure_cpu_credits_remaining_minimum, azure_cpu_credits_remaining_total</td>
    <td>Count</td>
    <td>Total number of credits available to burst</td>
  </tr>
  <tr>
    <td>azure_cpu_percent_average, azure_cpu_percent_count, azure_cpu_percent_maximum, azure_cpu_percent_minimum, azure_cpu_percent_total</td>
    <td>Percent</td>
    <td>CPU percent</td>
  </tr>
  <tr>
    <td>azure_deadlocks_average, azure_deadlocks_count, azure_deadlocks_maximum, azure_deadlocks_minimum, azure_deadlocks_total</td>
    <td>Count</td>
    <td>Number of deadlocks detected in this database</td>
  </tr>
  <tr>
    <td>azure_disk_bandwidth_consumed_percentage_average, azure_disk_bandwidth_consumed_percentage_count, azure_disk_bandwidth_consumed_percentage_maximum, azure_disk_bandwidth_consumed_percentage_minimum, azure_disk_bandwidth_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of disk bandwidth consumed per minute</td>
  </tr>
  <tr>
    <td>azure_disk_iops_consumed_percentage_average, azure_disk_iops_consumed_percentage_count, azure_disk_iops_consumed_percentage_maximum, azure_disk_iops_consumed_percentage_minimum, azure_disk_iops_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of disk I/Os consumed per minute</td>
  </tr>
  <tr>
    <td>azure_disk_queue_depth_average, azure_disk_queue_depth_count, azure_disk_queue_depth_maximum, azure_disk_queue_depth_minimum, azure_disk_queue_depth_total</td>
    <td>Count</td>
    <td>Number of outstanding I/O operations to the data disk</td>
  </tr>
  <tr>
    <td>azure_iops_average, azure_iops_count, azure_iops_maximum, azure_iops_minimum, azure_iops_total</td>
    <td>Count</td>
    <td>IO Operations per second</td>
  </tr>
  <tr>
    <td>azure_is_db_alive_average, azure_is_db_alive_count, azure_is_db_alive_maximum, azure_is_db_alive_minimum, azure_is_db_alive_total</td>
    <td>Count</td>
    <td>Indicates if the database is up or not</td>
  </tr>
  <tr>
    <td>azure_logical_replication_delay_in_bytes_average, azure_logical_replication_delay_in_bytes_count, azure_logical_replication_delay_in_bytes_maximum, azure_logical_replication_delay_in_bytes_minimum, azure_logical_replication_delay_in_bytes_total</td>
    <td>Bytes</td>
    <td>Maximum lag across all logical replication slots</td>
  </tr>
  <tr>
    <td>azure_longest_query_time_sec_average, azure_longest_query_time_sec_count, azure_longest_query_time_sec_maximum, azure_longest_query_time_sec_minimum, azure_longest_query_time_sec_total</td>
    <td>Seconds</td>
    <td>The age in seconds of the longest query that is currently running</td>
  </tr>
  <tr>
    <td>azure_longest_transaction_time_sec_average, azure_longest_transaction_time_sec_count, azure_longest_transaction_time_sec_maximum, azure_longest_transaction_time_sec_minimum, azure_longest_transaction_time_sec_total</td>
    <td>Seconds</td>
    <td>The age in seconds of the longest transaction (including idle transactions)</td>
  </tr>
  <tr>
    <td>azure_max_connections_average, azure_max_connections_count, azure_max_connections_maximum, azure_max_connections_minimum, azure_max_connections_total</td>
    <td>Count</td>
    <td>Max connections</td>
  </tr>
  <tr>
    <td>azure_maximum_used_transactionids_average, azure_maximum_used_transactionids_count, azure_maximum_used_transactionids_maximum, azure_maximum_used_transactionids_minimum, azure_maximum_used_transactionids_total</td>
    <td>Count</td>
    <td>Maximum Used Transaction IDs</td>
  </tr>
  <tr>
    <td>azure_memory_percent_average, azure_memory_percent_count, azure_memory_percent_maximum, azure_memory_percent_minimum, azure_memory_percent_total</td>
    <td>Percent</td>
    <td>Memory percent</td>
  </tr>
  <tr>
    <td>azure_n_dead_tup_user_tables_average, azure_n_dead_tup_user_tables_count, azure_n_dead_tup_user_tables_maximum, azure_n_dead_tup_user_tables_minimum, azure_n_dead_tup_user_tables_total</td>
    <td>Count</td>
    <td>Estimated number of dead rows for user only tables in this database</td>
  </tr>
  <tr>
    <td>azure_n_live_tup_user_tables_average, azure_n_live_tup_user_tables_count, azure_n_live_tup_user_tables_maximum, azure_n_live_tup_user_tables_minimum, azure_n_live_tup_user_tables_total</td>
    <td>Count</td>
    <td>Estimated number of live rows for user only tables in this database</td>
  </tr>
  <tr>
    <td>azure_n_mod_since_analyze_user_tables_average, azure_n_mod_since_analyze_user_tables_count, azure_n_mod_since_analyze_user_tables_maximum, azure_n_mod_since_analyze_user_tables_minimum, azure_n_mod_since_analyze_user_tables_total</td>
    <td>Count</td>
    <td>Estimated number of rows modified since user only tables were last analyzed</td>
  </tr>
  <tr>
    <td>azure_network_bytes_egress_average, azure_network_bytes_egress_count, azure_network_bytes_egress_maximum, azure_network_bytes_egress_minimum, azure_network_bytes_egress_total</td>
    <td>Bytes</td>
    <td>Network Out across active connections</td>
  </tr>
  <tr>
    <td>azure_network_bytes_ingress_average, azure_network_bytes_ingress_count, azure_network_bytes_ingress_maximum, azure_network_bytes_ingress_minimum, azure_network_bytes_ingress_total</td>
    <td>Bytes</td>
    <td>Network In across active connections</td>
  </tr>
  <tr>
    <td>azure_num_pools_average, azure_num_pools_count, azure_num_pools_maximum, azure_num_pools_minimum, azure_num_pools_total</td>
    <td>Count</td>
    <td>Total number of connection pools</td>
  </tr>
  <tr>
    <td>azure_numbackends_average, azure_numbackends_count, azure_numbackends_maximum, azure_numbackends_minimum, azure_numbackends_total</td>
    <td>Count</td>
    <td>Number of backends connected to this database</td>
  </tr>
  <tr>
    <td>azure_oldest_backend_time_sec_average, azure_oldest_backend_time_sec_count, azure_oldest_backend_time_sec_maximum, azure_oldest_backend_time_sec_minimum, azure_oldest_backend_time_sec_total</td>
    <td>Seconds</td>
    <td>The age in seconds of the oldest backend (irrespective of the state)</td>
  </tr>
  <tr>
    <td>azure_oldest_backend_xmin_average, azure_oldest_backend_xmin_count, azure_oldest_backend_xmin_maximum, azure_oldest_backend_xmin_minimum, azure_oldest_backend_xmin_total</td>
    <td>Count</td>
    <td>The actual value of the oldest xmin.</td>
  </tr>
  <tr>
    <td>azure_oldest_backend_xmin_age_average, azure_oldest_backend_xmin_age_count, azure_oldest_backend_xmin_age_maximum, azure_oldest_backend_xmin_age_minimum, azure_oldest_backend_xmin_age_total</td>
    <td>Count</td>
    <td>Age in units of the oldest xmin. It indicated how many transactions passed since oldest xmin</td>
  </tr>
  <tr>
    <td>azure_physical_replication_delay_in_bytes_average, azure_physical_replication_delay_in_bytes_count, azure_physical_replication_delay_in_bytes_maximum, azure_physical_replication_delay_in_bytes_minimum, azure_physical_replication_delay_in_bytes_total</td>
    <td>Bytes</td>
    <td>Maximum lag across all asynchronous physical replication slots</td>
  </tr>
  <tr>
    <td>azure_physical_replication_delay_in_seconds_average, azure_physical_replication_delay_in_seconds_count, azure_physical_replication_delay_in_seconds_maximum, azure_physical_replication_delay_in_seconds_minimum, azure_physical_replication_delay_in_seconds_total</td>
    <td>Seconds</td>
    <td>Read Replica lag in seconds</td>
  </tr>
  <tr>
    <td>azure_read_iops_average, azure_read_iops_count, azure_read_iops_maximum, azure_read_iops_minimum, azure_read_iops_total</td>
    <td>Count</td>
    <td>Number of data disk I/O read operations per second</td>
  </tr>
  <tr>
    <td>azure_read_throughput_average, azure_read_throughput_count, azure_read_throughput_maximum, azure_read_throughput_minimum, azure_read_throughput_total</td>
    <td>Count</td>
    <td>Bytes read per second from the data disk during monitoring period</td>
  </tr>
  <tr>
    <td>azure_server_connections_active_average, azure_server_connections_active_count, azure_server_connections_active_maximum, azure_server_connections_active_minimum, azure_server_connections_active_total</td>
    <td>Count</td>
    <td>Connections to PostgreSQL that are in use by a client connection</td>
  </tr>
  <tr>
    <td>azure_server_connections_idle_average, azure_server_connections_idle_count, azure_server_connections_idle_maximum, azure_server_connections_idle_minimum, azure_server_connections_idle_total</td>
    <td>Count</td>
    <td>Connections to PostgreSQL that are idle, ready to service a new client connection</td>
  </tr>
  <tr>
    <td>azure_sessions_by_state_average, azure_sessions_by_state_count, azure_sessions_by_state_maximum, azure_sessions_by_state_minimum, azure_sessions_by_state_total</td>
    <td>Count</td>
    <td>Overall state of the backends</td>
  </tr>
  <tr>
    <td>azure_sessions_by_wait_event_type_average, azure_sessions_by_wait_event_type_count, azure_sessions_by_wait_event_type_maximum, azure_sessions_by_wait_event_type_minimum, azure_sessions_by_wait_event_type_total</td>
    <td>Count</td>
    <td>Sessions by the type of event for which the backend is waiting</td>
  </tr>
  <tr>
    <td>azure_storage_free_average, azure_storage_free_count, azure_storage_free_maximum, azure_storage_free_minimum, azure_storage_free_total</td>
    <td>Bytes</td>
    <td>Storage Free</td>
  </tr>
  <tr>
    <td>azure_storage_percent_average, azure_storage_percent_count, azure_storage_percent_maximum, azure_storage_percent_minimum, azure_storage_percent_total</td>
    <td>Percent</td>
    <td>Storage percent</td>
  </tr>
  <tr>
    <td>azure_storage_used_average, azure_storage_used_count, azure_storage_used_maximum, azure_storage_used_minimum, azure_storage_used_total</td>
    <td>Bytes</td>
    <td>Storage used</td>
  </tr>
  <tr>
    <td>azure_tables_analyzed_user_tables_average, azure_tables_analyzed_user_tables_count, azure_tables_analyzed_user_tables_maximum, azure_tables_analyzed_user_tables_minimum, azure_tables_analyzed_user_tables_total</td>
    <td>Count</td>
    <td>Number of user only tables that have been analyzed in this database</td>
  </tr>
  <tr>
    <td>azure_tables_autoanalyzed_user_tables_average, azure_tables_autoanalyzed_user_tables_count, azure_tables_autoanalyzed_user_tables_maximum, azure_tables_autoanalyzed_user_tables_minimum, azure_tables_autoanalyzed_user_tables_total</td>
    <td>Count</td>
    <td>Number of user only tables that have been analyzed by the autovacuum daemon in this database</td>
  </tr>
  <tr>
    <td>azure_tables_autovacuumed_user_tables_average, azure_tables_autovacuumed_user_tables_count, azure_tables_autovacuumed_user_tables_maximum, azure_tables_autovacuumed_user_tables_minimum, azure_tables_autovacuumed_user_tables_total</td>
    <td>Count</td>
    <td>Number of user only tables that have been vacuumed by the autovacuum daemon in this database</td>
  </tr>
  <tr>
    <td>azure_tables_counter_user_tables_average, azure_tables_counter_user_tables_count, azure_tables_counter_user_tables_maximum, azure_tables_counter_user_tables_minimum, azure_tables_counter_user_tables_total</td>
    <td>Count</td>
    <td>Number of user only tables in this database</td>
  </tr>
  <tr>
    <td>azure_tables_vacuumed_user_tables_average, azure_tables_vacuumed_user_tables_count, azure_tables_vacuumed_user_tables_maximum, azure_tables_vacuumed_user_tables_minimum, azure_tables_vacuumed_user_tables_total</td>
    <td>Count</td>
    <td>Number of user only tables that have been vacuumed in this database</td>
  </tr>
  <tr>
    <td>azure_temp_bytes_average, azure_temp_bytes_count, azure_temp_bytes_maximum, azure_temp_bytes_minimum, azure_temp_bytes_total</td>
    <td>Bytes</td>
    <td>Total amount of data written to temporary files by queries in this database</td>
  </tr>
  <tr>
    <td>azure_temp_files_average, azure_temp_files_count, azure_temp_files_maximum, azure_temp_files_minimum, azure_temp_files_total</td>
    <td>Count</td>
    <td>Number of temporary files created by queries in this database</td>
  </tr>
  <tr>
    <td>azure_total_pooled_connections_average, azure_total_pooled_connections_count, azure_total_pooled_connections_maximum, azure_total_pooled_connections_minimum, azure_total_pooled_connections_total</td>
    <td>Count</td>
    <td>Current number of pooled connections</td>
  </tr>
  <tr>
    <td>azure_tup_deleted_average, azure_tup_deleted_count, azure_tup_deleted_maximum, azure_tup_deleted_minimum, azure_tup_deleted_total</td>
    <td>Count</td>
    <td>Number of rows deleted by queries in this database</td>
  </tr>
  <tr>
    <td>azure_tup_fetched_average, azure_tup_fetched_count, azure_tup_fetched_maximum, azure_tup_fetched_minimum, azure_tup_fetched_total</td>
    <td>Count</td>
    <td>Number of rows fetched by queries in this database</td>
  </tr>
  <tr>
    <td>azure_tup_inserted_average, azure_tup_inserted_count, azure_tup_inserted_maximum, azure_tup_inserted_minimum, azure_tup_inserted_total</td>
    <td>Count</td>
    <td>Number of rows inserted by queries in this database</td>
  </tr>
  <tr>
    <td>azure_tup_returned_average, azure_tup_returned_count, azure_tup_returned_maximum, azure_tup_returned_minimum, azure_tup_returned_total</td>
    <td>Count</td>
    <td>Number of rows returned by queries in this database</td>
  </tr>
  <tr>
    <td>azure_tup_updated_average, azure_tup_updated_count, azure_tup_updated_maximum, azure_tup_updated_minimum, azure_tup_updated_total</td>
    <td>Count</td>
    <td>Number of rows updated by queries in this database</td>
  </tr>
  <tr>
    <td>azure_txlogs_storage_used_average, azure_txlogs_storage_used_count, azure_txlogs_storage_used_maximum, azure_txlogs_storage_used_minimum, azure_txlogs_storage_used_total</td>
    <td>Bytes</td>
    <td>Transaction Log Storage Used</td>
  </tr>
  <tr>
    <td>azure_vacuum_count_user_tables_average, azure_vacuum_count_user_tables_count, azure_vacuum_count_user_tables_maximum, azure_vacuum_count_user_tables_minimum, azure_vacuum_count_user_tables_total</td>
    <td>Count</td>
    <td>Number of times user only tables have been manually vacuumed in this database (not counting VACUUM FULL)</td>
  </tr>
  <tr>
    <td>azure_write_iops_average, azure_write_iops_count, azure_write_iops_maximum, azure_write_iops_minimum, azure_write_iops_total</td>
    <td>Count</td>
    <td>Number of data disk I/O write operations per second</td>
  </tr>
  <tr>
    <td>azure_write_throughput_average, azure_write_throughput_count, azure_write_throughput_maximum, azure_write_throughput_minimum, azure_write_throughput_total</td>
    <td>Count</td>
    <td>Bytes written per second to the data disk during monitoring period</td>
  </tr>
  <tr>
    <td>azure_xact_commit_average, azure_xact_commit_count, azure_xact_commit_maximum, azure_xact_commit_minimum, azure_xact_commit_total</td>
    <td>Count</td>
    <td>Number of transactions in this database that have been committed</td>
  </tr>
  <tr>
    <td>azure_xact_rollback_average, azure_xact_rollback_count, azure_xact_rollback_maximum, azure_xact_rollback_minimum, azure_xact_rollback_total</td>
    <td>Count</td>
    <td>Number of transactions in this database that have been rolled back</td>
  </tr>
  <tr>
    <td>azure_xact_total_average, azure_xact_total_count, azure_xact_total_maximum, azure_xact_total_minimum, azure_xact_total_total</td>
    <td>Count</td>
    <td>Number of total transactions executed in this database</td>
  </tr>
</table>
