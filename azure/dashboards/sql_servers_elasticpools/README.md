---
title: Azure Microsoft.Sql/servers/elasticpools metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Sql/servers/elasticpools metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Sql/servers/elasticpools
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Sql/servers/elasticpools, **PUT DESCRIPTION HERE**. 

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
    <td>azure_allocated_data_storage_average, azure_allocated_data_storage_count, azure_allocated_data_storage_maximum, azure_allocated_data_storage_minimum, azure_allocated_data_storage_total</td>
    <td>Bytes</td>
    <td>Data space allocated. Not applicable to hyperscale</td>
  </tr>
  <tr>
    <td>azure_allocated_data_storage_percent_average, azure_allocated_data_storage_percent_count, azure_allocated_data_storage_percent_maximum, azure_allocated_data_storage_percent_minimum, azure_allocated_data_storage_percent_total</td>
    <td>Percent</td>
    <td>Data space allocated percent. Not applicable to hyperscale</td>
  </tr>
  <tr>
    <td>azure_app_cpu_billed_average, azure_app_cpu_billed_count, azure_app_cpu_billed_maximum, azure_app_cpu_billed_minimum, azure_app_cpu_billed_total</td>
    <td>Count</td>
    <td>App CPU billed. Applies to serverless elastic pools.</td>
  </tr>
  <tr>
    <td>azure_app_cpu_percent_average, azure_app_cpu_percent_count, azure_app_cpu_percent_maximum, azure_app_cpu_percent_minimum, azure_app_cpu_percent_total</td>
    <td>Percent</td>
    <td>App CPU percentage. Applies to serverless elastic pools.</td>
  </tr>
  <tr>
    <td>azure_app_memory_percent_average, azure_app_memory_percent_count, azure_app_memory_percent_maximum, azure_app_memory_percent_minimum, azure_app_memory_percent_total</td>
    <td>Percent</td>
    <td>App memory percentage. Applies to serverless elastic pools.</td>
  </tr>
  <tr>
    <td>azure_cpu_limit_average, azure_cpu_limit_count, azure_cpu_limit_maximum, azure_cpu_limit_minimum, azure_cpu_limit_total</td>
    <td>Count</td>
    <td>CPU limit. Applies to vCore-based elastic pools.</td>
  </tr>
  <tr>
    <td>azure_cpu_percent_average, azure_cpu_percent_count, azure_cpu_percent_maximum, azure_cpu_percent_minimum, azure_cpu_percent_total</td>
    <td>Percent</td>
    <td>CPU percentage</td>
  </tr>
  <tr>
    <td>azure_cpu_used_average, azure_cpu_used_count, azure_cpu_used_maximum, azure_cpu_used_minimum, azure_cpu_used_total</td>
    <td>Count</td>
    <td>CPU used. Applies to vCore-based elastic pools.</td>
  </tr>
  <tr>
    <td>azure_dtu_consumption_percent_average, azure_dtu_consumption_percent_count, azure_dtu_consumption_percent_maximum, azure_dtu_consumption_percent_minimum, azure_dtu_consumption_percent_total</td>
    <td>Percent</td>
    <td>DTU Percentage. Applies to DTU-based elastic pools.</td>
  </tr>
  <tr>
    <td>azure_edtu_limit_average, azure_edtu_limit_count, azure_edtu_limit_maximum, azure_edtu_limit_minimum, azure_edtu_limit_total</td>
    <td>Count</td>
    <td>eDTU limit. Applies to DTU-based elastic pools.</td>
  </tr>
  <tr>
    <td>azure_edtu_used_average, azure_edtu_used_count, azure_edtu_used_maximum, azure_edtu_used_minimum, azure_edtu_used_total</td>
    <td>Count</td>
    <td>eDTU used. Applies to DTU-based elastic pools.</td>
  </tr>
  <tr>
    <td>azure_log_write_percent_average, azure_log_write_percent_count, azure_log_write_percent_maximum, azure_log_write_percent_minimum, azure_log_write_percent_total</td>
    <td>Percent</td>
    <td>Log IO percentage</td>
  </tr>
  <tr>
    <td>azure_physical_data_read_percent_average, azure_physical_data_read_percent_count, azure_physical_data_read_percent_maximum, azure_physical_data_read_percent_minimum, azure_physical_data_read_percent_total</td>
    <td>Percent</td>
    <td>Data IO percentage</td>
  </tr>
  <tr>
    <td>azure_sessions_count_average, azure_sessions_count_count, azure_sessions_count_maximum, azure_sessions_count_minimum, azure_sessions_count_total</td>
    <td>Count</td>
    <td>Number of active sessions</td>
  </tr>
  <tr>
    <td>azure_sessions_percent_average, azure_sessions_percent_count, azure_sessions_percent_maximum, azure_sessions_percent_minimum, azure_sessions_percent_total</td>
    <td>Percent</td>
    <td>Sessions percentage</td>
  </tr>
  <tr>
    <td>azure_sqlserver_process_core_percent_average, azure_sqlserver_process_core_percent_count, azure_sqlserver_process_core_percent_maximum, azure_sqlserver_process_core_percent_minimum, azure_sqlserver_process_core_percent_total</td>
    <td>Percent</td>
    <td>CPU usage as a percentage of the SQL DB process. Applies to elastic pools.</td>
  </tr>
  <tr>
    <td>azure_sqlserver_process_memory_percent_average, azure_sqlserver_process_memory_percent_count, azure_sqlserver_process_memory_percent_maximum, azure_sqlserver_process_memory_percent_minimum, azure_sqlserver_process_memory_percent_total</td>
    <td>Percent</td>
    <td>Memory usage as a percentage of the SQL DB process. Applies to elastic pools.</td>
  </tr>
  <tr>
    <td>azure_storage_limit_average, azure_storage_limit_count, azure_storage_limit_maximum, azure_storage_limit_minimum, azure_storage_limit_total</td>
    <td>Bytes</td>
    <td>Data max size. Not applicable to hyperscale</td>
  </tr>
  <tr>
    <td>azure_storage_percent_average, azure_storage_percent_count, azure_storage_percent_maximum, azure_storage_percent_minimum, azure_storage_percent_total</td>
    <td>Percent</td>
    <td>Data space used percent. Not applicable to hyperscale</td>
  </tr>
  <tr>
    <td>azure_storage_used_average, azure_storage_used_count, azure_storage_used_maximum, azure_storage_used_minimum, azure_storage_used_total</td>
    <td>Bytes</td>
    <td>Data space used. Not applicable to hyperscale</td>
  </tr>
  <tr>
    <td>azure_tempdb_data_size_average, azure_tempdb_data_size_count, azure_tempdb_data_size_maximum, azure_tempdb_data_size_minimum, azure_tempdb_data_size_total</td>
    <td>Count</td>
    <td>Space used in tempdb data files in kilobytes.</td>
  </tr>
  <tr>
    <td>azure_tempdb_log_size_average, azure_tempdb_log_size_count, azure_tempdb_log_size_maximum, azure_tempdb_log_size_minimum, azure_tempdb_log_size_total</td>
    <td>Count</td>
    <td>Space used in tempdb transaction log file in kilobytes.</td>
  </tr>
  <tr>
    <td>azure_tempdb_log_used_percent_average, azure_tempdb_log_used_percent_count, azure_tempdb_log_used_percent_maximum, azure_tempdb_log_used_percent_minimum, azure_tempdb_log_used_percent_total</td>
    <td>Percent</td>
    <td>Space used percentage in tempdb transaction log file</td>
  </tr>
  <tr>
    <td>azure_workers_percent_average, azure_workers_percent_count, azure_workers_percent_maximum, azure_workers_percent_minimum, azure_workers_percent_total</td>
    <td>Percent</td>
    <td>Workers percentage</td>
  </tr>
  <tr>
    <td>azure_xtp_storage_percent_average, azure_xtp_storage_percent_count, azure_xtp_storage_percent_maximum, azure_xtp_storage_percent_minimum, azure_xtp_storage_percent_total</td>
    <td>Percent</td>
    <td>In-Memory OLTP storage percent. Not applicable to hyperscale</td>
  </tr>
</table>
