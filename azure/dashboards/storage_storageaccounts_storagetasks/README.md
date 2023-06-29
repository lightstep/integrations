---
title: Azure Microsoft.Storage/storageAccounts/storageTasks metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Storage/storageAccounts/storageTasks metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Storage/storageAccounts/storageTasks
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Storage/storageAccounts/storageTasks, **PUT DESCRIPTION HERE**. 

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
    <td>azure_objectsoperatedcount_average, azure_objectsoperatedcount_count, azure_objectsoperatedcount_maximum, azure_objectsoperatedcount_minimum, azure_objectsoperatedcount_total</td>
    <td>Count</td>
    <td>The number of objects operated in storage task</td>
  </tr>
  <tr>
    <td>azure_objectsoperationfailedcount_average, azure_objectsoperationfailedcount_count, azure_objectsoperationfailedcount_maximum, azure_objectsoperationfailedcount_minimum, azure_objectsoperationfailedcount_total</td>
    <td>Count</td>
    <td>The number of objects failed in storage task</td>
  </tr>
  <tr>
    <td>azure_objectstargetedcount_average, azure_objectstargetedcount_count, azure_objectstargetedcount_maximum, azure_objectstargetedcount_minimum, azure_objectstargetedcount_total</td>
    <td>Count</td>
    <td>The number of objects targeted in storage task</td>
  </tr>
</table>
