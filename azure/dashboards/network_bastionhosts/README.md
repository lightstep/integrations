---
title: Azure microsoft.network/bastionHosts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.network/bastionHosts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.network/bastionHosts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.network/bastionHosts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_pingmesh_average, azure_pingmesh_count, azure_pingmesh_maximum, azure_pingmesh_minimum, azure_pingmesh_total</td>
    <td>Count</td>
    <td>Communication status shows 1 if all communication is good and 0 if its bad.</td>
  </tr>
  <tr>
    <td>azure_sessions_average, azure_sessions_count, azure_sessions_maximum, azure_sessions_minimum, azure_sessions_total</td>
    <td>Count</td>
    <td>Sessions Count for the Bastion. View in sum and per instance.</td>
  </tr>
  <tr>
    <td>azure_total_average, azure_total_count, azure_total_maximum, azure_total_minimum, azure_total_total</td>
    <td>Count</td>
    <td>Total memory stats.</td>
  </tr>
  <tr>
    <td>azure_usage_user_average, azure_usage_user_count, azure_usage_user_maximum, azure_usage_user_minimum, azure_usage_user_total</td>
    <td>Count</td>
    <td>CPU Usage stats.</td>
  </tr>
  <tr>
    <td>azure_used_average, azure_used_count, azure_used_maximum, azure_used_minimum, azure_used_total</td>
    <td>Count</td>
    <td>Memory Usage stats.</td>
  </tr>
</table>
