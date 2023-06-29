---
title: Azure Microsoft.Synapse/workspaces/scopePools metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Synapse/workspaces/scopePools metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Synapse/workspaces/scopePools
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Synapse/workspaces/scopePools, **PUT DESCRIPTION HERE**. 

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
    <td>azure_scopepooljobpnmetric_average, azure_scopepooljobpnmetric_count, azure_scopepooljobpnmetric_maximum, azure_scopepooljobpnmetric_minimum, azure_scopepooljobpnmetric_total</td>
    <td>Milliseconds</td>
    <td>PN (process node) duration (Milliseconds) used by each SCOPE job</td>
  </tr>
  <tr>
    <td>azure_scopepooljobqueueddurationmetric_average, azure_scopepooljobqueueddurationmetric_count, azure_scopepooljobqueueddurationmetric_maximum, azure_scopepooljobqueueddurationmetric_minimum, azure_scopepooljobqueueddurationmetric_total</td>
    <td>Milliseconds</td>
    <td>Queued duration (Milliseconds) used by each SCOPE job</td>
  </tr>
  <tr>
    <td>azure_scopepooljobrunningdurationmetric_average, azure_scopepooljobrunningdurationmetric_count, azure_scopepooljobrunningdurationmetric_maximum, azure_scopepooljobrunningdurationmetric_minimum, azure_scopepooljobrunningdurationmetric_total</td>
    <td>Milliseconds</td>
    <td>Running duration (Milliseconds) used by each SCOPE job</td>
  </tr>
</table>
