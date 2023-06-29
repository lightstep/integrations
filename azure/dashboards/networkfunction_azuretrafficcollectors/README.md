---
title: Azure Microsoft.NetworkFunction/azureTrafficCollectors metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.NetworkFunction/azureTrafficCollectors metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.NetworkFunction/azureTrafficCollectors
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.NetworkFunction/azureTrafficCollectors, **PUT DESCRIPTION HERE**. 

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
    <td>azure_count_average, azure_count_count, azure_count_maximum, azure_count_minimum, azure_count_total</td>
    <td>Count</td>
    <td>Flow Records Processed by ATC.</td>
  </tr>
  <tr>
    <td>azure_usage_active_average, azure_usage_active_count, azure_usage_active_maximum, azure_usage_active_minimum, azure_usage_active_total</td>
    <td>Percent</td>
    <td>CPU Usage Percentage.</td>
  </tr>
  <tr>
    <td>azure_used_percent_average, azure_used_percent_count, azure_used_percent_maximum, azure_used_percent_minimum, azure_used_percent_total</td>
    <td>Percent</td>
    <td>Memory Usage Percentage.</td>
  </tr>
</table>
