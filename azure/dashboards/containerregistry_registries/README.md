---
title: Azure Microsoft.ContainerRegistry/registries metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ContainerRegistry/registries metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ContainerRegistry/registries
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ContainerRegistry/registries, **PUT DESCRIPTION HERE**. 

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
    <td>azure_agentpoolcputime_average, azure_agentpoolcputime_count, azure_agentpoolcputime_maximum, azure_agentpoolcputime_minimum, azure_agentpoolcputime_total</td>
    <td>Seconds</td>
    <td>AgentPool CPU Time in seconds</td>
  </tr>
  <tr>
    <td>azure_runduration_average, azure_runduration_count, azure_runduration_maximum, azure_runduration_minimum, azure_runduration_total</td>
    <td>MilliSeconds</td>
    <td>Run Duration in milliseconds</td>
  </tr>
  <tr>
    <td>azure_storageused_average, azure_storageused_count, azure_storageused_maximum, azure_storageused_minimum, azure_storageused_total</td>
    <td>Bytes</td>
    <td>The amount of storage used by the container registry. For a registry account, it's the sum of capacity used by all the repositories within a registry. It's sum of capacity used by shared layers, manifest files, and replica copies in each of its repositories.</td>
  </tr>
  <tr>
    <td>azure_successfulpullcount_average, azure_successfulpullcount_count, azure_successfulpullcount_maximum, azure_successfulpullcount_minimum, azure_successfulpullcount_total</td>
    <td>Count</td>
    <td>Number of successful image pulls</td>
  </tr>
  <tr>
    <td>azure_successfulpushcount_average, azure_successfulpushcount_count, azure_successfulpushcount_maximum, azure_successfulpushcount_minimum, azure_successfulpushcount_total</td>
    <td>Count</td>
    <td>Number of successful image pushes</td>
  </tr>
  <tr>
    <td>azure_totalpullcount_average, azure_totalpullcount_count, azure_totalpullcount_maximum, azure_totalpullcount_minimum, azure_totalpullcount_total</td>
    <td>Count</td>
    <td>Number of image pulls in total</td>
  </tr>
  <tr>
    <td>azure_totalpushcount_average, azure_totalpushcount_count, azure_totalpushcount_maximum, azure_totalpushcount_minimum, azure_totalpushcount_total</td>
    <td>Count</td>
    <td>Number of image pushes in total</td>
  </tr>
</table>
