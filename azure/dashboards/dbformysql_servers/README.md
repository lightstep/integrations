---
title: Azure Microsoft.DBforMySQL/servers metrics
date: 2023-07-07 00:00:00
canonical_url:
description: See the Azure Microsoft.DBforMySQL/servers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DBforMySQL/servers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DBforMySQL/servers.

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
    <td>azure_backup_storage_used_average, azure_backup_storage_used_count, azure_backup_storage_used_maximum, azure_backup_storage_used_minimum, azure_backup_storage_used_total</td>
    <td>Bytes</td>
    <td>Backup Storage used</td>
  </tr>
  <tr>
    <td>azure_connections_failed_average, azure_connections_failed_count, azure_connections_failed_maximum, azure_connections_failed_minimum, azure_connections_failed_total</td>
    <td>Count</td>
    <td>Failed Connections</td>
  </tr>
  <tr>
    <td>azure_cpu_percent_average, azure_cpu_percent_count, azure_cpu_percent_maximum, azure_cpu_percent_minimum, azure_cpu_percent_total</td>
    <td>Percent</td>
    <td>CPU percent</td>
  </tr>
  <tr>
    <td>azure_io_consumption_percent_average, azure_io_consumption_percent_count, azure_io_consumption_percent_maximum, azure_io_consumption_percent_minimum, azure_io_consumption_percent_total</td>
    <td>Percent</td>
    <td>IO percent</td>
  </tr>
  <tr>
    <td>azure_memory_percent_average, azure_memory_percent_count, azure_memory_percent_maximum, azure_memory_percent_minimum, azure_memory_percent_total</td>
    <td>Percent</td>
    <td>Memory percent</td>
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
    <td>azure_seconds_behind_master_average, azure_seconds_behind_master_count, azure_seconds_behind_master_maximum, azure_seconds_behind_master_minimum, azure_seconds_behind_master_total</td>
    <td>Count</td>
    <td>Replication lag in seconds</td>
  </tr>
  <tr>
    <td>azure_serverlog_storage_limit_average, azure_serverlog_storage_limit_count, azure_serverlog_storage_limit_maximum, azure_serverlog_storage_limit_minimum, azure_serverlog_storage_limit_total</td>
    <td>Bytes</td>
    <td>Server Log storage limit</td>
  </tr>
  <tr>
    <td>azure_serverlog_storage_percent_average, azure_serverlog_storage_percent_count, azure_serverlog_storage_percent_maximum, azure_serverlog_storage_percent_minimum, azure_serverlog_storage_percent_total</td>
    <td>Percent</td>
    <td>Server Log storage percent</td>
  </tr>
  <tr>
    <td>azure_serverlog_storage_usage_average, azure_serverlog_storage_usage_count, azure_serverlog_storage_usage_maximum, azure_serverlog_storage_usage_minimum, azure_serverlog_storage_usage_total</td>
    <td>Bytes</td>
    <td>Server Log storage used</td>
  </tr>
  <tr>
    <td>azure_storage_limit_average, azure_storage_limit_count, azure_storage_limit_maximum, azure_storage_limit_minimum, azure_storage_limit_total</td>
    <td>Bytes</td>
    <td>Storage limit</td>
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
</table>
