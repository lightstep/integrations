---
title: Azure Microsoft.DBForPostgreSQL/serverGroupsv2 metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DBForPostgreSQL/serverGroupsv2 metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DBForPostgreSQL/serverGroupsv2
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DBForPostgreSQL/serverGroupsv2, **PUT DESCRIPTION HERE**. 

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
    <td>azure_active_connections_average, azure_active_connections_count, azure_active_connections_maximum, azure_active_connections_minimum, azure_active_connections_total</td>
    <td>Count</td>
    <td>Active Connections</td>
  </tr>
  <tr>
    <td>azure_apps_reserved_memory_percent_average, azure_apps_reserved_memory_percent_count, azure_apps_reserved_memory_percent_maximum, azure_apps_reserved_memory_percent_minimum, azure_apps_reserved_memory_percent_total</td>
    <td>Percent</td>
    <td>Percentage of Commit Memory Limit Reserved by Applications</td>
  </tr>
  <tr>
    <td>azure_cpu_credits_consumed_average, azure_cpu_credits_consumed_count, azure_cpu_credits_consumed_maximum, azure_cpu_credits_consumed_minimum, azure_cpu_credits_consumed_total</td>
    <td>Count</td>
    <td>Total number of credits consumed by the node. Only available when burstable compute is provisioned on the node.</td>
  </tr>
  <tr>
    <td>azure_cpu_credits_remaining_average, azure_cpu_credits_remaining_count, azure_cpu_credits_remaining_maximum, azure_cpu_credits_remaining_minimum, azure_cpu_credits_remaining_total</td>
    <td>Count</td>
    <td>Total number of credits available to burst. Only available when burstable compute is provisioned on the node.</td>
  </tr>
  <tr>
    <td>azure_cpu_percent_average, azure_cpu_percent_count, azure_cpu_percent_maximum, azure_cpu_percent_minimum, azure_cpu_percent_total</td>
    <td>Percent</td>
    <td>CPU percent</td>
  </tr>
  <tr>
    <td>azure_iops_average, azure_iops_count, azure_iops_maximum, azure_iops_minimum, azure_iops_total</td>
    <td>Count</td>
    <td>IO operations per second</td>
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
    <td>azure_replication_lag_average, azure_replication_lag_count, azure_replication_lag_maximum, azure_replication_lag_minimum, azure_replication_lag_total</td>
    <td>MilliSeconds</td>
    <td>Allows to see how much read replica nodes are behind their counterparts in the primary cluster</td>
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
    <td>azure_vm_cached_bandwidth_percent_average, azure_vm_cached_bandwidth_percent_count, azure_vm_cached_bandwidth_percent_maximum, azure_vm_cached_bandwidth_percent_minimum, azure_vm_cached_bandwidth_percent_total</td>
    <td>Percent</td>
    <td>Percentage of cached disk bandwidth consumed by the VM</td>
  </tr>
  <tr>
    <td>azure_vm_cached_iops_percent_average, azure_vm_cached_iops_percent_count, azure_vm_cached_iops_percent_maximum, azure_vm_cached_iops_percent_minimum, azure_vm_cached_iops_percent_total</td>
    <td>Percent</td>
    <td>Percentage of cached disk IOPS consumed by the VM</td>
  </tr>
  <tr>
    <td>azure_vm_uncached_bandwidth_percent_average, azure_vm_uncached_bandwidth_percent_count, azure_vm_uncached_bandwidth_percent_maximum, azure_vm_uncached_bandwidth_percent_minimum, azure_vm_uncached_bandwidth_percent_total</td>
    <td>Percent</td>
    <td>Percentage of uncached disk bandwidth consumed by the VM</td>
  </tr>
  <tr>
    <td>azure_vm_uncached_iops_percent_average, azure_vm_uncached_iops_percent_count, azure_vm_uncached_iops_percent_maximum, azure_vm_uncached_iops_percent_minimum, azure_vm_uncached_iops_percent_total</td>
    <td>Percent</td>
    <td>Percentage of uncached disk IOPS consumed by the VM</td>
  </tr>
</table>
