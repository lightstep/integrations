---
title: Azure Microsoft.Web/hostingenvironments/workerpools metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Web/hostingenvironments/workerpools metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Web/hostingenvironments/workerpools
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Web/hostingenvironments/workerpools, **PUT DESCRIPTION HERE**. 

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
    <td>azure_cpupercentage_average, azure_cpupercentage_count, azure_cpupercentage_maximum, azure_cpupercentage_minimum, azure_cpupercentage_total</td>
    <td>Percent</td>
    <td>The average CPU used across all instances of the worker pool.</td>
  </tr>
  <tr>
    <td>azure_memorypercentage_average, azure_memorypercentage_count, azure_memorypercentage_maximum, azure_memorypercentage_minimum, azure_memorypercentage_total</td>
    <td>Percent</td>
    <td>The average memory used across all instances of the worker pool.</td>
  </tr>
  <tr>
    <td>azure_workersavailable_average, azure_workersavailable_count, azure_workersavailable_maximum, azure_workersavailable_minimum, azure_workersavailable_total</td>
    <td>Count</td>
    <td>Available Workers</td>
  </tr>
  <tr>
    <td>azure_workerstotal_average, azure_workerstotal_count, azure_workerstotal_maximum, azure_workerstotal_minimum, azure_workerstotal_total</td>
    <td>Count</td>
    <td>Total Workers</td>
  </tr>
  <tr>
    <td>azure_workersused_average, azure_workersused_count, azure_workersused_maximum, azure_workersused_minimum, azure_workersused_total</td>
    <td>Count</td>
    <td>Used Workers</td>
  </tr>
</table>
