---
title: Azure microsoft.network/p2svpngateways metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.network/p2svpngateways metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.network/p2svpngateways
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.network/p2svpngateways, **PUT DESCRIPTION HERE**. 

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
    <td>azure_p2sbandwidth_average, azure_p2sbandwidth_count, azure_p2sbandwidth_maximum, azure_p2sbandwidth_minimum, azure_p2sbandwidth_total</td>
    <td>BytesPerSecond</td>
    <td>Point-to-site bandwidth of a gateway in bytes per second</td>
  </tr>
  <tr>
    <td>azure_p2sconnectioncount_average, azure_p2sconnectioncount_count, azure_p2sconnectioncount_maximum, azure_p2sconnectioncount_minimum, azure_p2sconnectioncount_total</td>
    <td>Count</td>
    <td>Point-to-site connection count of a gateway</td>
  </tr>
  <tr>
    <td>azure_uservpnroutecount_average, azure_uservpnroutecount_count, azure_uservpnroutecount_maximum, azure_uservpnroutecount_minimum, azure_uservpnroutecount_total</td>
    <td>Count</td>
    <td>Count of P2S User Vpn routes learned by gateway</td>
  </tr>
</table>
