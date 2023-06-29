---
title: Azure Microsoft.Network/expressRoutePorts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/expressRoutePorts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/expressRoutePorts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/expressRoutePorts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_adminstate_average, azure_adminstate_count, azure_adminstate_maximum, azure_adminstate_minimum, azure_adminstate_total</td>
    <td>Count</td>
    <td>Admin state of the port</td>
  </tr>
  <tr>
    <td>azure_fastpathroutescountfordirectport_average, azure_fastpathroutescountfordirectport_count, azure_fastpathroutescountfordirectport_maximum, azure_fastpathroutescountfordirectport_minimum, azure_fastpathroutescountfordirectport_total</td>
    <td>Count</td>
    <td>Count of fastpath routes configured on port</td>
  </tr>
  <tr>
    <td>azure_lineprotocol_average, azure_lineprotocol_count, azure_lineprotocol_maximum, azure_lineprotocol_minimum, azure_lineprotocol_total</td>
    <td>Count</td>
    <td>Line protocol status of the port</td>
  </tr>
  <tr>
    <td>azure_portbitsinpersecond_average, azure_portbitsinpersecond_count, azure_portbitsinpersecond_maximum, azure_portbitsinpersecond_minimum, azure_portbitsinpersecond_total</td>
    <td>BitsPerSecond</td>
    <td>Bits ingressing Azure per second</td>
  </tr>
  <tr>
    <td>azure_portbitsoutpersecond_average, azure_portbitsoutpersecond_count, azure_portbitsoutpersecond_maximum, azure_portbitsoutpersecond_minimum, azure_portbitsoutpersecond_total</td>
    <td>BitsPerSecond</td>
    <td>Bits egressing Azure per second</td>
  </tr>
  <tr>
    <td>azure_rxlightlevel_average, azure_rxlightlevel_count, azure_rxlightlevel_maximum, azure_rxlightlevel_minimum, azure_rxlightlevel_total</td>
    <td>Count</td>
    <td>Rx Light level in dBm</td>
  </tr>
  <tr>
    <td>azure_txlightlevel_average, azure_txlightlevel_count, azure_txlightlevel_maximum, azure_txlightlevel_minimum, azure_txlightlevel_total</td>
    <td>Count</td>
    <td>Tx light level in dBm</td>
  </tr>
</table>
