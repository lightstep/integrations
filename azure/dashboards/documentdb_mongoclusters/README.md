---
title: Azure Microsoft.DocumentDB/mongoClusters metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DocumentDB/mongoClusters metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DocumentDB/mongoClusters
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DocumentDB/mongoClusters, **PUT DESCRIPTION HERE**. 

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
    <td>azure_committedmemorypercent_average, azure_committedmemorypercent_count, azure_committedmemorypercent_maximum, azure_committedmemorypercent_minimum, azure_committedmemorypercent_total</td>
    <td>Percent</td>
    <td>Percentage of Commit Memory Limit allocated by applications on node</td>
  </tr>
  <tr>
    <td>azure_cpupercent_average, azure_cpupercent_count, azure_cpupercent_maximum, azure_cpupercent_minimum, azure_cpupercent_total</td>
    <td>Percent</td>
    <td>Percent CPU utilization on node</td>
  </tr>
  <tr>
    <td>azure_iops_average, azure_iops_count, azure_iops_maximum, azure_iops_minimum, azure_iops_total</td>
    <td>Count</td>
    <td>Disk IO operations per second on node</td>
  </tr>
  <tr>
    <td>azure_memorypercent_average, azure_memorypercent_count, azure_memorypercent_maximum, azure_memorypercent_minimum, azure_memorypercent_total</td>
    <td>Percent</td>
    <td>Percent memory utilization on node</td>
  </tr>
  <tr>
    <td>azure_storagepercent_average, azure_storagepercent_count, azure_storagepercent_maximum, azure_storagepercent_minimum, azure_storagepercent_total</td>
    <td>Percent</td>
    <td>Percent of available storage used on node</td>
  </tr>
  <tr>
    <td>azure_storageused_average, azure_storageused_count, azure_storageused_maximum, azure_storageused_minimum, azure_storageused_total</td>
    <td>Bytes</td>
    <td>Quantity of available storage used on node</td>
  </tr>
</table>
