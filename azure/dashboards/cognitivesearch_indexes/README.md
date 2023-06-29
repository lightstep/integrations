---
title: Azure Microsoft.CognitiveSearch/indexes metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.CognitiveSearch/indexes metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.CognitiveSearch/indexes
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.CognitiveSearch/indexes, **PUT DESCRIPTION HERE**. 

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
    <td>azure_indexreadvcoreallocationcurrent_average, azure_indexreadvcoreallocationcurrent_count, azure_indexreadvcoreallocationcurrent_maximum, azure_indexreadvcoreallocationcurrent_minimum, azure_indexreadvcoreallocationcurrent_total</td>
    <td>Cores</td>
    <td>The currently allocated vCore capacity for querying an index</td>
  </tr>
  <tr>
    <td>azure_indexreadvcoreallocationmaximum_average, azure_indexreadvcoreallocationmaximum_count, azure_indexreadvcoreallocationmaximum_maximum, azure_indexreadvcoreallocationmaximum_minimum, azure_indexreadvcoreallocationmaximum_total</td>
    <td>Cores</td>
    <td>The upper bound of vCore usage for querying an index</td>
  </tr>
  <tr>
    <td>azure_indexreadvcoreallocationminimum_average, azure_indexreadvcoreallocationminimum_count, azure_indexreadvcoreallocationminimum_maximum, azure_indexreadvcoreallocationminimum_minimum, azure_indexreadvcoreallocationminimum_total</td>
    <td>Cores</td>
    <td>The lower bound of vCore capacity for querying an index</td>
  </tr>
  <tr>
    <td>azure_indexwritevcoreallocationcurrent_average, azure_indexwritevcoreallocationcurrent_count, azure_indexwritevcoreallocationcurrent_maximum, azure_indexwritevcoreallocationcurrent_minimum, azure_indexwritevcoreallocationcurrent_total</td>
    <td>Cores</td>
    <td>The currently allocated vCore consumption for indexing documents</td>
  </tr>
  <tr>
    <td>azure_indexwritevcoreallocationmaximum_average, azure_indexwritevcoreallocationmaximum_count, azure_indexwritevcoreallocationmaximum_maximum, azure_indexwritevcoreallocationmaximum_minimum, azure_indexwritevcoreallocationmaximum_total</td>
    <td>Cores</td>
    <td>The upper bound of vCore usage for indexing documents</td>
  </tr>
  <tr>
    <td>azure_indexwritevcoreallocationminimum_average, azure_indexwritevcoreallocationminimum_count, azure_indexwritevcoreallocationminimum_maximum, azure_indexwritevcoreallocationminimum_minimum, azure_indexwritevcoreallocationminimum_total</td>
    <td>Cores</td>
    <td>The lower bound of vCore usage for indexing documents</td>
  </tr>
</table>
