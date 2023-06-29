---
title: Azure Microsoft.Network/loadBalancers metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/loadBalancers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/loadBalancers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/loadBalancers, **PUT DESCRIPTION HERE**. 

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
    <td>azure_allocatedsnatports_average, azure_allocatedsnatports_count, azure_allocatedsnatports_maximum, azure_allocatedsnatports_minimum, azure_allocatedsnatports_total</td>
    <td>Count</td>
    <td>Total number of SNAT ports allocated within time period</td>
  </tr>
  <tr>
    <td>azure_bytecount_average, azure_bytecount_count, azure_bytecount_maximum, azure_bytecount_minimum, azure_bytecount_total</td>
    <td>Bytes</td>
    <td>Total number of Bytes transmitted within time period</td>
  </tr>
  <tr>
    <td>azure_dipavailability_average, azure_dipavailability_count, azure_dipavailability_maximum, azure_dipavailability_minimum, azure_dipavailability_total</td>
    <td>Count</td>
    <td>Average Load Balancer health probe status per time duration</td>
  </tr>
  <tr>
    <td>azure_globalbackendavailability_average, azure_globalbackendavailability_count, azure_globalbackendavailability_maximum, azure_globalbackendavailability_minimum, azure_globalbackendavailability_total</td>
    <td>Count</td>
    <td>Azure Cross-region Load Balancer backend health and status per time duration</td>
  </tr>
  <tr>
    <td>azure_packetcount_average, azure_packetcount_count, azure_packetcount_maximum, azure_packetcount_minimum, azure_packetcount_total</td>
    <td>Count</td>
    <td>Total number of Packets transmitted within time period</td>
  </tr>
  <tr>
    <td>azure_snatconnectioncount_average, azure_snatconnectioncount_count, azure_snatconnectioncount_maximum, azure_snatconnectioncount_minimum, azure_snatconnectioncount_total</td>
    <td>Count</td>
    <td>Total number of new SNAT connections created within time period</td>
  </tr>
  <tr>
    <td>azure_syncount_average, azure_syncount_count, azure_syncount_maximum, azure_syncount_minimum, azure_syncount_total</td>
    <td>Count</td>
    <td>Total number of SYN Packets transmitted within time period</td>
  </tr>
  <tr>
    <td>azure_usedsnatports_average, azure_usedsnatports_count, azure_usedsnatports_maximum, azure_usedsnatports_minimum, azure_usedsnatports_total</td>
    <td>Count</td>
    <td>Total number of SNAT ports used within time period</td>
  </tr>
  <tr>
    <td>azure_vipavailability_average, azure_vipavailability_count, azure_vipavailability_maximum, azure_vipavailability_minimum, azure_vipavailability_total</td>
    <td>Count</td>
    <td>Average Load Balancer data path availability per time duration</td>
  </tr>
</table>
