---
title: Azure Microsoft.Network/networkInterfaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/networkInterfaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/networkInterfaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/networkInterfaces.

See [all available Azure integrations](/docs/azure-metrics).
{: .tip}

To verify metrics are reporting, search for the metrics on the [Metric details](/docs/manage-metric-details) page.
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
    <td>azure_bytesreceivedrate_average, azure_bytesreceivedrate_count, azure_bytesreceivedrate_maximum, azure_bytesreceivedrate_minimum, azure_bytesreceivedrate_total</td>
    <td>Bytes</td>
    <td>Number of bytes the Network Interface received</td>
  </tr>
  <tr>
    <td>azure_bytessentrate_average, azure_bytessentrate_count, azure_bytessentrate_maximum, azure_bytessentrate_minimum, azure_bytessentrate_total</td>
    <td>Bytes</td>
    <td>Number of bytes the Network Interface sent</td>
  </tr>
  <tr>
    <td>azure_packetsreceivedrate_average, azure_packetsreceivedrate_count, azure_packetsreceivedrate_maximum, azure_packetsreceivedrate_minimum, azure_packetsreceivedrate_total</td>
    <td>Count</td>
    <td>Number of packets the Network Interface received</td>
  </tr>
  <tr>
    <td>azure_packetssentrate_average, azure_packetssentrate_count, azure_packetssentrate_maximum, azure_packetssentrate_minimum, azure_packetssentrate_total</td>
    <td>Count</td>
    <td>Number of packets the Network Interface sent</td>
  </tr>
</table>
