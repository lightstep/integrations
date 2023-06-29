---
title: Azure microsoft.hybridnetwork/networkfunctions metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.hybridnetwork/networkfunctions metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.hybridnetwork/networkfunctions
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.hybridnetwork/networkfunctions, **PUT DESCRIPTION HERE**. 

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
    <td>azure_hypervvirtualprocessorutilization_average, azure_hypervvirtualprocessorutilization_count, azure_hypervvirtualprocessorutilization_maximum, azure_hypervvirtualprocessorutilization_minimum, azure_hypervvirtualprocessorutilization_total</td>
    <td>Percent</td>
    <td>Total average percentage of virtual CPU utilization at one minute interval. The total number of virtual CPU is based on user configured value in SKU definition. Further filter can be applied based on RoleName defined in SKU.</td>
  </tr>
</table>
