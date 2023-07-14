---
title: Azure Microsoft.Sql/managedInstances metrics
date: 2023-07-07 00:00:00
canonical_url:
description: See the Azure Microsoft.Sql/managedInstances metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Sql/managedInstances
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Sql/managedInstances.

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
    <td>azure_avg_cpu_percent_average, azure_avg_cpu_percent_count, azure_avg_cpu_percent_maximum, azure_avg_cpu_percent_minimum, azure_avg_cpu_percent_total</td>
    <td>Percent</td>
    <td>Average CPU percentage</td>
  </tr>
  <tr>
    <td>azure_io_bytes_read_average, azure_io_bytes_read_count, azure_io_bytes_read_maximum, azure_io_bytes_read_minimum, azure_io_bytes_read_total</td>
    <td>Bytes</td>
    <td>IO bytes read</td>
  </tr>
  <tr>
    <td>azure_io_bytes_written_average, azure_io_bytes_written_count, azure_io_bytes_written_maximum, azure_io_bytes_written_minimum, azure_io_bytes_written_total</td>
    <td>Bytes</td>
    <td>IO bytes written</td>
  </tr>
  <tr>
    <td>azure_io_requests_average, azure_io_requests_count, azure_io_requests_maximum, azure_io_requests_minimum, azure_io_requests_total</td>
    <td>Count</td>
    <td>IO requests count</td>
  </tr>
  <tr>
    <td>azure_reserved_storage_mb_average, azure_reserved_storage_mb_count, azure_reserved_storage_mb_maximum, azure_reserved_storage_mb_minimum, azure_reserved_storage_mb_total</td>
    <td>Count</td>
    <td>Storage space reserved</td>
  </tr>
  <tr>
    <td>azure_storage_space_used_mb_average, azure_storage_space_used_mb_count, azure_storage_space_used_mb_maximum, azure_storage_space_used_mb_minimum, azure_storage_space_used_mb_total</td>
    <td>Count</td>
    <td>Storage space used</td>
  </tr>
  <tr>
    <td>azure_virtual_core_count_average, azure_virtual_core_count_count, azure_virtual_core_count_maximum, azure_virtual_core_count_minimum, azure_virtual_core_count_total</td>
    <td>Count</td>
    <td>Virtual core count</td>
  </tr>
</table>
