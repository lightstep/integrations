---
title: Azure microsoft.compute/disks metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.compute/disks metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.compute/disks
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.compute/disks.

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
    <td>azure_composite_disk_read_bytes/sec_average, azure_composite_disk_read_bytes/sec_count, azure_composite_disk_read_bytes/sec_maximum, azure_composite_disk_read_bytes/sec_minimum, azure_composite_disk_read_bytes/sec_total</td>
    <td>BytesPerSecond</td>
    <td>Bytes/sec read from disk during monitoring period, please note, this metric is in preview and is subject to change before becoming generally available</td>
  </tr>
  <tr>
    <td>azure_composite_disk_read_operations/sec_average, azure_composite_disk_read_operations/sec_count, azure_composite_disk_read_operations/sec_maximum, azure_composite_disk_read_operations/sec_minimum, azure_composite_disk_read_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Number of read IOs performed on a disk during monitoring period, please note, this metric is in preview and is subject to change before becoming generally available</td>
  </tr>
  <tr>
    <td>azure_composite_disk_write_bytes/sec_average, azure_composite_disk_write_bytes/sec_count, azure_composite_disk_write_bytes/sec_maximum, azure_composite_disk_write_bytes/sec_minimum, azure_composite_disk_write_bytes/sec_total</td>
    <td>BytesPerSecond</td>
    <td>Bytes/sec written to disk during monitoring period, please note, this metric is in preview and is subject to change before becoming generally available</td>
  </tr>
  <tr>
    <td>azure_composite_disk_write_operations/sec_average, azure_composite_disk_write_operations/sec_count, azure_composite_disk_write_operations/sec_maximum, azure_composite_disk_write_operations/sec_minimum, azure_composite_disk_write_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Number of Write IOs performed on a disk during monitoring period, please note, this metric is in preview and is subject to change before becoming generally available</td>
  </tr>
  <tr>
    <td>azure_diskpaidburstiops_average, azure_diskpaidburstiops_count, azure_diskpaidburstiops_maximum, azure_diskpaidburstiops_minimum, azure_diskpaidburstiops_total</td>
    <td>Count</td>
    <td>The accumulated operations of burst transactions used for disks with on-demand burst enabled. Emitted on an hour interval</td>
  </tr>
</table>
