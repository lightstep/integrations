---
title: Azure microsoft.resources/subscriptions metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.resources/subscriptions metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.resources/subscriptions
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.resources/subscriptions, **PUT DESCRIPTION HERE**. 

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
    <td>azure_latency_average, azure_latency_count, azure_latency_maximum, azure_latency_minimum, azure_latency_total</td>
    <td>Seconds</td>
    <td>Latency data for all requests to Azure Resource Manager</td>
  </tr>
  <tr>
    <td>azure_traffic_average, azure_traffic_count, azure_traffic_maximum, azure_traffic_minimum, azure_traffic_total</td>
    <td>Count</td>
    <td>Traffic data for all requests to Azure Resource Manager</td>
  </tr>
</table>
