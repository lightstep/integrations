---
title: Azure Microsoft.PowerBIDedicated/capacities metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.PowerBIDedicated/capacities metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.PowerBIDedicated/capacities
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.PowerBIDedicated/capacities, **PUT DESCRIPTION HERE**. 

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
    <td>azure_cpu_metric_average, azure_cpu_metric_count, azure_cpu_metric_maximum, azure_cpu_metric_minimum, azure_cpu_metric_total</td>
    <td>Percent</td>
    <td>CPU Utilization. Supported only for Power BI Embedded Generation 2 resources.</td>
  </tr>
  <tr>
    <td>azure_overload_metric_average, azure_overload_metric_count, azure_overload_metric_maximum, azure_overload_metric_minimum, azure_overload_metric_total</td>
    <td>Count</td>
    <td>Resource Overload, 1 if resource is overloaded, otherwise 0. Supported only for Power BI Embedded Generation 2 resources.</td>
  </tr>
</table>
