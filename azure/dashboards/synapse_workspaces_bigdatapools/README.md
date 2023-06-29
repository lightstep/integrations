---
title: Azure Microsoft.Synapse/workspaces/bigDataPools metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Synapse/workspaces/bigDataPools metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Synapse/workspaces/bigDataPools
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Synapse/workspaces/bigDataPools, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bigdatapoolallocatedcores_average, azure_bigdatapoolallocatedcores_count, azure_bigdatapoolallocatedcores_maximum, azure_bigdatapoolallocatedcores_minimum, azure_bigdatapoolallocatedcores_total</td>
    <td>Count</td>
    <td>Allocated vCores for an Apache Spark Pool</td>
  </tr>
  <tr>
    <td>azure_bigdatapoolallocatedmemory_average, azure_bigdatapoolallocatedmemory_count, azure_bigdatapoolallocatedmemory_maximum, azure_bigdatapoolallocatedmemory_minimum, azure_bigdatapoolallocatedmemory_total</td>
    <td>Count</td>
    <td>Allocated Memory for Apach Spark Pool (GB)</td>
  </tr>
  <tr>
    <td>azure_bigdatapoolapplicationsactive_average, azure_bigdatapoolapplicationsactive_count, azure_bigdatapoolapplicationsactive_maximum, azure_bigdatapoolapplicationsactive_minimum, azure_bigdatapoolapplicationsactive_total</td>
    <td>Count</td>
    <td>Total Active Apache Spark Pool Applications</td>
  </tr>
  <tr>
    <td>azure_bigdatapoolapplicationsended_average, azure_bigdatapoolapplicationsended_count, azure_bigdatapoolapplicationsended_maximum, azure_bigdatapoolapplicationsended_minimum, azure_bigdatapoolapplicationsended_total</td>
    <td>Count</td>
    <td>Count of Apache Spark pool applications ended</td>
  </tr>
</table>
