---
title: Azure Microsoft.ClassicCompute/virtualMachines metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ClassicCompute/virtualMachines metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ClassicCompute/virtualMachines
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ClassicCompute/virtualMachines, **PUT DESCRIPTION HERE**. 

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
    <td>azure_disk_read_bytes/sec_average, azure_disk_read_bytes/sec_count, azure_disk_read_bytes/sec_maximum, azure_disk_read_bytes/sec_minimum, azure_disk_read_bytes/sec_total</td>
    <td>BytesPerSecond</td>
    <td>Average bytes read from disk during monitoring period.</td>
  </tr>
  <tr>
    <td>azure_disk_read_operations/sec_average, azure_disk_read_operations/sec_count, azure_disk_read_operations/sec_maximum, azure_disk_read_operations/sec_minimum, azure_disk_read_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Disk Read IOPS.</td>
  </tr>
  <tr>
    <td>azure_disk_write_bytes/sec_average, azure_disk_write_bytes/sec_count, azure_disk_write_bytes/sec_maximum, azure_disk_write_bytes/sec_minimum, azure_disk_write_bytes/sec_total</td>
    <td>BytesPerSecond</td>
    <td>Average bytes written to disk during monitoring period.</td>
  </tr>
  <tr>
    <td>azure_disk_write_operations/sec_average, azure_disk_write_operations/sec_count, azure_disk_write_operations/sec_maximum, azure_disk_write_operations/sec_minimum, azure_disk_write_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Disk Write IOPS.</td>
  </tr>
  <tr>
    <td>azure_network_in_average, azure_network_in_count, azure_network_in_maximum, azure_network_in_minimum, azure_network_in_total</td>
    <td>Bytes</td>
    <td>The number of bytes received on all network interfaces by the Virtual Machine(s) (Incoming Traffic).</td>
  </tr>
  <tr>
    <td>azure_network_out_average, azure_network_out_count, azure_network_out_maximum, azure_network_out_minimum, azure_network_out_total</td>
    <td>Bytes</td>
    <td>The number of bytes out on all network interfaces by the Virtual Machine(s) (Outgoing Traffic).</td>
  </tr>
  <tr>
    <td>azure_percentage_cpu_average, azure_percentage_cpu_count, azure_percentage_cpu_maximum, azure_percentage_cpu_minimum, azure_percentage_cpu_total</td>
    <td>Percent</td>
    <td>The percentage of allocated compute units that are currently in use by the Virtual Machine(s).</td>
  </tr>
</table>
