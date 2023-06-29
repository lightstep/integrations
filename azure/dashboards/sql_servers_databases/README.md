---
title: Azure Microsoft.Sql/servers/databases metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Sql/servers/databases metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Sql/servers/databases
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Sql/servers/databases, **PUT DESCRIPTION HERE**. 

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
    <td>azure_active_queries_average, azure_active_queries_count, azure_active_queries_maximum, azure_active_queries_minimum, azure_active_queries_total</td>
    <td>Count</td>
    <td>Active queries across all workload groups. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_allocated_data_storage_average, azure_allocated_data_storage_count, azure_allocated_data_storage_maximum, azure_allocated_data_storage_minimum, azure_allocated_data_storage_total</td>
    <td>Bytes</td>
    <td>Allocated data storage. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_app_cpu_billed_average, azure_app_cpu_billed_count, azure_app_cpu_billed_maximum, azure_app_cpu_billed_minimum, azure_app_cpu_billed_total</td>
    <td>Count</td>
    <td>App CPU billed. Applies to serverless databases.</td>
  </tr>
  <tr>
    <td>azure_app_cpu_billed_ha_replicas_average, azure_app_cpu_billed_ha_replicas_count, azure_app_cpu_billed_ha_replicas_maximum, azure_app_cpu_billed_ha_replicas_minimum, azure_app_cpu_billed_ha_replicas_total</td>
    <td>Count</td>
    <td>Sum of app CPU billed across all HA replicas associated with the primary replica or a named replica.</td>
  </tr>
  <tr>
    <td>azure_app_cpu_percent_average, azure_app_cpu_percent_count, azure_app_cpu_percent_maximum, azure_app_cpu_percent_minimum, azure_app_cpu_percent_total</td>
    <td>Percent</td>
    <td>App CPU percentage. Applies to serverless databases.</td>
  </tr>
  <tr>
    <td>azure_app_memory_percent_average, azure_app_memory_percent_count, azure_app_memory_percent_maximum, azure_app_memory_percent_minimum, azure_app_memory_percent_total</td>
    <td>Percent</td>
    <td>App memory percentage. Applies to serverless databases.</td>
  </tr>
  <tr>
    <td>azure_base_blob_size_bytes_average, azure_base_blob_size_bytes_count, azure_base_blob_size_bytes_maximum, azure_base_blob_size_bytes_minimum, azure_base_blob_size_bytes_total</td>
    <td>Bytes</td>
    <td>Data storage size. Applies to Hyperscale databases.</td>
  </tr>
  <tr>
    <td>azure_blocked_by_firewall_average, azure_blocked_by_firewall_count, azure_blocked_by_firewall_maximum, azure_blocked_by_firewall_minimum, azure_blocked_by_firewall_total</td>
    <td>Count</td>
    <td>Blocked by Firewall</td>
  </tr>
  <tr>
    <td>azure_cache_hit_percent_average, azure_cache_hit_percent_count, azure_cache_hit_percent_maximum, azure_cache_hit_percent_minimum, azure_cache_hit_percent_total</td>
    <td>Percent</td>
    <td>Cache hit percentage. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_cache_used_percent_average, azure_cache_used_percent_count, azure_cache_used_percent_maximum, azure_cache_used_percent_minimum, azure_cache_used_percent_total</td>
    <td>Percent</td>
    <td>Cache used percentage. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_connection_failed_average, azure_connection_failed_count, azure_connection_failed_maximum, azure_connection_failed_minimum, azure_connection_failed_total</td>
    <td>Count</td>
    <td>Failed Connections</td>
  </tr>
  <tr>
    <td>azure_connection_failed_user_error_average, azure_connection_failed_user_error_count, azure_connection_failed_user_error_maximum, azure_connection_failed_user_error_minimum, azure_connection_failed_user_error_total</td>
    <td>Count</td>
    <td>Failed Connections : User Errors</td>
  </tr>
  <tr>
    <td>azure_connection_successful_average, azure_connection_successful_count, azure_connection_successful_maximum, azure_connection_successful_minimum, azure_connection_successful_total</td>
    <td>Count</td>
    <td>Successful Connections</td>
  </tr>
  <tr>
    <td>azure_cpu_limit_average, azure_cpu_limit_count, azure_cpu_limit_maximum, azure_cpu_limit_minimum, azure_cpu_limit_total</td>
    <td>Count</td>
    <td>CPU limit. Applies to vCore-based databases.</td>
  </tr>
  <tr>
    <td>azure_cpu_percent_average, azure_cpu_percent_count, azure_cpu_percent_maximum, azure_cpu_percent_minimum, azure_cpu_percent_total</td>
    <td>Percent</td>
    <td>CPU percentage</td>
  </tr>
  <tr>
    <td>azure_cpu_used_average, azure_cpu_used_count, azure_cpu_used_maximum, azure_cpu_used_minimum, azure_cpu_used_total</td>
    <td>Count</td>
    <td>CPU used. Applies to vCore-based databases.</td>
  </tr>
  <tr>
    <td>azure_deadlock_average, azure_deadlock_count, azure_deadlock_maximum, azure_deadlock_minimum, azure_deadlock_total</td>
    <td>Count</td>
    <td>Deadlocks. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_diff_backup_size_bytes_average, azure_diff_backup_size_bytes_count, azure_diff_backup_size_bytes_maximum, azure_diff_backup_size_bytes_minimum, azure_diff_backup_size_bytes_total</td>
    <td>Bytes</td>
    <td>Cumulative differential backup storage size. Applies to vCore-based databases. Not applicable to Hyperscale databases.</td>
  </tr>
  <tr>
    <td>azure_dtu_consumption_percent_average, azure_dtu_consumption_percent_count, azure_dtu_consumption_percent_maximum, azure_dtu_consumption_percent_minimum, azure_dtu_consumption_percent_total</td>
    <td>Percent</td>
    <td>DTU Percentage. Applies to DTU-based databases.</td>
  </tr>
  <tr>
    <td>azure_dtu_limit_average, azure_dtu_limit_count, azure_dtu_limit_maximum, azure_dtu_limit_minimum, azure_dtu_limit_total</td>
    <td>Count</td>
    <td>DTU Limit. Applies to DTU-based databases.</td>
  </tr>
  <tr>
    <td>azure_dtu_used_average, azure_dtu_used_count, azure_dtu_used_maximum, azure_dtu_used_minimum, azure_dtu_used_total</td>
    <td>Count</td>
    <td>DTU used. Applies to DTU-based databases.</td>
  </tr>
  <tr>
    <td>azure_dwu_consumption_percent_average, azure_dwu_consumption_percent_count, azure_dwu_consumption_percent_maximum, azure_dwu_consumption_percent_minimum, azure_dwu_consumption_percent_total</td>
    <td>Percent</td>
    <td>DWU percentage. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_dwu_limit_average, azure_dwu_limit_count, azure_dwu_limit_maximum, azure_dwu_limit_minimum, azure_dwu_limit_total</td>
    <td>Count</td>
    <td>DWU limit. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_dwu_used_average, azure_dwu_used_count, azure_dwu_used_maximum, azure_dwu_used_minimum, azure_dwu_used_total</td>
    <td>Count</td>
    <td>DWU used. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_free_amount_consumed_average, azure_free_amount_consumed_count, azure_free_amount_consumed_maximum, azure_free_amount_consumed_minimum, azure_free_amount_consumed_total</td>
    <td>Count</td>
    <td>Free amount of vCore seconds consumed this month. Applies only to free database offer.</td>
  </tr>
  <tr>
    <td>azure_free_amount_remaining_average, azure_free_amount_remaining_count, azure_free_amount_remaining_maximum, azure_free_amount_remaining_minimum, azure_free_amount_remaining_total</td>
    <td>Count</td>
    <td>Free amount of vCore seconds remaining this month. Applies only to free database offer.</td>
  </tr>
  <tr>
    <td>azure_full_backup_size_bytes_average, azure_full_backup_size_bytes_count, azure_full_backup_size_bytes_maximum, azure_full_backup_size_bytes_minimum, azure_full_backup_size_bytes_total</td>
    <td>Bytes</td>
    <td>Cumulative full backup storage size. Applies to vCore-based databases. Not applicable to Hyperscale databases.</td>
  </tr>
  <tr>
    <td>azure_ledger_digest_upload_failed_average, azure_ledger_digest_upload_failed_count, azure_ledger_digest_upload_failed_maximum, azure_ledger_digest_upload_failed_minimum, azure_ledger_digest_upload_failed_total</td>
    <td>Count</td>
    <td>Ledger digests that failed to be uploaded.</td>
  </tr>
  <tr>
    <td>azure_ledger_digest_upload_success_average, azure_ledger_digest_upload_success_count, azure_ledger_digest_upload_success_maximum, azure_ledger_digest_upload_success_minimum, azure_ledger_digest_upload_success_total</td>
    <td>Count</td>
    <td>Ledger digests that were successfully uploaded.</td>
  </tr>
  <tr>
    <td>azure_local_tempdb_usage_percent_average, azure_local_tempdb_usage_percent_count, azure_local_tempdb_usage_percent_maximum, azure_local_tempdb_usage_percent_minimum, azure_local_tempdb_usage_percent_total</td>
    <td>Percent</td>
    <td>Local tempdb percentage. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_log_backup_size_bytes_average, azure_log_backup_size_bytes_count, azure_log_backup_size_bytes_maximum, azure_log_backup_size_bytes_minimum, azure_log_backup_size_bytes_total</td>
    <td>Bytes</td>
    <td>Cumulative log backup storage size. Applies to vCore-based and Hyperscale databases.</td>
  </tr>
  <tr>
    <td>azure_log_write_percent_average, azure_log_write_percent_count, azure_log_write_percent_maximum, azure_log_write_percent_minimum, azure_log_write_percent_total</td>
    <td>Percent</td>
    <td>Log IO percentage. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_memory_usage_percent_average, azure_memory_usage_percent_count, azure_memory_usage_percent_maximum, azure_memory_usage_percent_minimum, azure_memory_usage_percent_total</td>
    <td>Percent</td>
    <td>Memory percentage. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_physical_data_read_percent_average, azure_physical_data_read_percent_count, azure_physical_data_read_percent_maximum, azure_physical_data_read_percent_minimum, azure_physical_data_read_percent_total</td>
    <td>Percent</td>
    <td>Data IO percentage</td>
  </tr>
  <tr>
    <td>azure_queued_queries_average, azure_queued_queries_count, azure_queued_queries_maximum, azure_queued_queries_minimum, azure_queued_queries_total</td>
    <td>Count</td>
    <td>Queued queries across all workload groups. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_sessions_count_average, azure_sessions_count_count, azure_sessions_count_maximum, azure_sessions_count_minimum, azure_sessions_count_total</td>
    <td>Count</td>
    <td>Number of active sessions. Not applicable to Synapse DW Analytics.</td>
  </tr>
  <tr>
    <td>azure_sessions_percent_average, azure_sessions_percent_count, azure_sessions_percent_maximum, azure_sessions_percent_minimum, azure_sessions_percent_total</td>
    <td>Percent</td>
    <td>Sessions percentage. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_snapshot_backup_size_bytes_average, azure_snapshot_backup_size_bytes_count, azure_snapshot_backup_size_bytes_maximum, azure_snapshot_backup_size_bytes_minimum, azure_snapshot_backup_size_bytes_total</td>
    <td>Bytes</td>
    <td>Cumulative data backup storage size. Applies to Hyperscale databases.</td>
  </tr>
  <tr>
    <td>azure_sqlserver_process_core_percent_average, azure_sqlserver_process_core_percent_count, azure_sqlserver_process_core_percent_maximum, azure_sqlserver_process_core_percent_minimum, azure_sqlserver_process_core_percent_total</td>
    <td>Percent</td>
    <td>CPU usage as a percentage of the SQL DB process. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_sqlserver_process_memory_percent_average, azure_sqlserver_process_memory_percent_count, azure_sqlserver_process_memory_percent_maximum, azure_sqlserver_process_memory_percent_minimum, azure_sqlserver_process_memory_percent_total</td>
    <td>Percent</td>
    <td>Memory usage as a percentage of the SQL DB process. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_storage_average, azure_storage_count, azure_storage_maximum, azure_storage_minimum, azure_storage_total</td>
    <td>Bytes</td>
    <td>Data space used. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_storage_percent_average, azure_storage_percent_count, azure_storage_percent_maximum, azure_storage_percent_minimum, azure_storage_percent_total</td>
    <td>Percent</td>
    <td>Data space used percent. Not applicable to data warehouses or hyperscale databases.</td>
  </tr>
  <tr>
    <td>azure_tempdb_data_size_average, azure_tempdb_data_size_count, azure_tempdb_data_size_maximum, azure_tempdb_data_size_minimum, azure_tempdb_data_size_total</td>
    <td>Count</td>
    <td>Space used in tempdb data files in kilobytes. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_tempdb_log_size_average, azure_tempdb_log_size_count, azure_tempdb_log_size_maximum, azure_tempdb_log_size_minimum, azure_tempdb_log_size_total</td>
    <td>Count</td>
    <td>Space used in tempdb transaction log file in kilobytes. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_tempdb_log_used_percent_average, azure_tempdb_log_used_percent_count, azure_tempdb_log_used_percent_maximum, azure_tempdb_log_used_percent_minimum, azure_tempdb_log_used_percent_total</td>
    <td>Percent</td>
    <td>Space used percentage in tempdb transaction log file. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_wlg_active_queries_average, azure_wlg_active_queries_count, azure_wlg_active_queries_maximum, azure_wlg_active_queries_minimum, azure_wlg_active_queries_total</td>
    <td>Count</td>
    <td>Active queries within the workload group. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_wlg_active_queries_timeouts_average, azure_wlg_active_queries_timeouts_count, azure_wlg_active_queries_timeouts_maximum, azure_wlg_active_queries_timeouts_minimum, azure_wlg_active_queries_timeouts_total</td>
    <td>Count</td>
    <td>Queries that have timed out for the workload group. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_wlg_allocation_relative_to_system_percent_average, azure_wlg_allocation_relative_to_system_percent_count, azure_wlg_allocation_relative_to_system_percent_maximum, azure_wlg_allocation_relative_to_system_percent_minimum, azure_wlg_allocation_relative_to_system_percent_total</td>
    <td>Percent</td>
    <td>Allocated percentage of resources relative to the entire system per workload group. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_wlg_allocation_relative_to_wlg_effective_cap_percent_average, azure_wlg_allocation_relative_to_wlg_effective_cap_percent_count, azure_wlg_allocation_relative_to_wlg_effective_cap_percent_maximum, azure_wlg_allocation_relative_to_wlg_effective_cap_percent_minimum, azure_wlg_allocation_relative_to_wlg_effective_cap_percent_total</td>
    <td>Percent</td>
    <td>Allocated percentage of resources relative to the specified cap resources per workload group. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_wlg_effective_cap_resource_percent_average, azure_wlg_effective_cap_resource_percent_count, azure_wlg_effective_cap_resource_percent_maximum, azure_wlg_effective_cap_resource_percent_minimum, azure_wlg_effective_cap_resource_percent_total</td>
    <td>Percent</td>
    <td>A hard limit on the percentage of resources allowed for the workload group, taking into account Effective Min Resource Percentage allocated for other workload groups. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_wlg_effective_min_resource_percent_average, azure_wlg_effective_min_resource_percent_count, azure_wlg_effective_min_resource_percent_maximum, azure_wlg_effective_min_resource_percent_minimum, azure_wlg_effective_min_resource_percent_total</td>
    <td>Percent</td>
    <td>Minimum percentage of resources reserved and isolated for the workload group, taking into account the service level minimum. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_wlg_queued_queries_average, azure_wlg_queued_queries_count, azure_wlg_queued_queries_maximum, azure_wlg_queued_queries_minimum, azure_wlg_queued_queries_total</td>
    <td>Count</td>
    <td>Queued queries within the workload group. Applies only to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_workers_percent_average, azure_workers_percent_count, azure_workers_percent_maximum, azure_workers_percent_minimum, azure_workers_percent_total</td>
    <td>Percent</td>
    <td>Workers percentage. Not applicable to data warehouses.</td>
  </tr>
  <tr>
    <td>azure_xtp_storage_percent_average, azure_xtp_storage_percent_count, azure_xtp_storage_percent_maximum, azure_xtp_storage_percent_minimum, azure_xtp_storage_percent_total</td>
    <td>Percent</td>
    <td>In-Memory OLTP storage percent. Not applicable to data warehouses.</td>
  </tr>
</table>
