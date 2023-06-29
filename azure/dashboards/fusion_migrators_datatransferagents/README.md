---
title: Azure Wandisco.Fusion/migrators/dataTransferAgents metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Wandisco.Fusion/migrators/dataTransferAgents metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Wandisco.Fusion/migrators/dataTransferAgents
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Wandisco.Fusion/migrators/dataTransferAgents, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bytespersecond_average, azure_bytespersecond_count, azure_bytespersecond_maximum, azure_bytespersecond_minimum, azure_bytespersecond_total</td>
    <td>BytesPerSecond</td>
    <td>Throughput speed of Bytes/second being utilised for a DTA.</td>
  </tr>
  <tr>
    <td>azure_dtacpuload_average, azure_dtacpuload_count, azure_dtacpuload_maximum, azure_dtacpuload_minimum, azure_dtacpuload_total</td>
    <td>Percent</td>
    <td>CPU consumption by the DTA process.</td>
  </tr>
  <tr>
    <td>azure_filemigrationcount_average, azure_filemigrationcount_count, azure_filemigrationcount_maximum, azure_filemigrationcount_minimum, azure_filemigrationcount_total</td>
    <td>Count</td>
    <td>This provides a running total of how many files have been migrated.</td>
  </tr>
  <tr>
    <td>azure_migrateddatainbytes_average, azure_migrateddatainbytes_count, azure_migrateddatainbytes_maximum, azure_migrateddatainbytes_minimum, azure_migrateddatainbytes_total</td>
    <td>Bytes</td>
    <td>This provides a view of the successfully migrated Bytes for a given DTA</td>
  </tr>
  <tr>
    <td>azure_numberoffailedpaths_average, azure_numberoffailedpaths_count, azure_numberoffailedpaths_maximum, azure_numberoffailedpaths_minimum, azure_numberoffailedpaths_total</td>
    <td>Count</td>
    <td>A count of which paths have failed to migrate.</td>
  </tr>
  <tr>
    <td>azure_systemcpuload_average, azure_systemcpuload_count, azure_systemcpuload_maximum, azure_systemcpuload_minimum, azure_systemcpuload_total</td>
    <td>Percent</td>
    <td>Total CPU consumption.</td>
  </tr>
</table>
