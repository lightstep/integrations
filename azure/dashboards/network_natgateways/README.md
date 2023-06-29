---
title: Azure Microsoft.Network/natGateways metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/natGateways metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/natGateways
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/natGateways, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bytecount_average, azure_bytecount_count, azure_bytecount_maximum, azure_bytecount_minimum, azure_bytecount_total</td>
    <td>Bytes</td>
    <td>Total number of Bytes transmitted within time period</td>
  </tr>
  <tr>
    <td>azure_datapathavailability_average, azure_datapathavailability_count, azure_datapathavailability_maximum, azure_datapathavailability_minimum, azure_datapathavailability_total</td>
    <td>Count</td>
    <td>NAT Gateway Datapath Availability</td>
  </tr>
  <tr>
    <td>azure_packetcount_average, azure_packetcount_count, azure_packetcount_maximum, azure_packetcount_minimum, azure_packetcount_total</td>
    <td>Count</td>
    <td>Total number of Packets transmitted within time period</td>
  </tr>
  <tr>
    <td>azure_packetdropcount_average, azure_packetdropcount_count, azure_packetdropcount_maximum, azure_packetdropcount_minimum, azure_packetdropcount_total</td>
    <td>Count</td>
    <td>Count of dropped packets</td>
  </tr>
  <tr>
    <td>azure_snatconnectioncount_average, azure_snatconnectioncount_count, azure_snatconnectioncount_maximum, azure_snatconnectioncount_minimum, azure_snatconnectioncount_total</td>
    <td>Count</td>
    <td>Total concurrent active connections</td>
  </tr>
  <tr>
    <td>azure_totalconnectioncount_average, azure_totalconnectioncount_count, azure_totalconnectioncount_maximum, azure_totalconnectioncount_minimum, azure_totalconnectioncount_total</td>
    <td>Count</td>
    <td>Total number of active SNAT connections</td>
  </tr>
</table>
