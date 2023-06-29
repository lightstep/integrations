---
title: Azure Microsoft.Network/virtualHubs metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/virtualHubs metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/virtualHubs
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/virtualHubs, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bgppeerstatus_average, azure_bgppeerstatus_count, azure_bgppeerstatus_maximum, azure_bgppeerstatus_minimum, azure_bgppeerstatus_total</td>
    <td>Count</td>
    <td>1 - Connected, 0 - Not connected</td>
  </tr>
  <tr>
    <td>azure_countofroutesadvertisedtopeer_average, azure_countofroutesadvertisedtopeer_count, azure_countofroutesadvertisedtopeer_maximum, azure_countofroutesadvertisedtopeer_minimum, azure_countofroutesadvertisedtopeer_total</td>
    <td>Count</td>
    <td>Total number of routes advertised to peer</td>
  </tr>
  <tr>
    <td>azure_countofrouteslearnedfrompeer_average, azure_countofrouteslearnedfrompeer_count, azure_countofrouteslearnedfrompeer_maximum, azure_countofrouteslearnedfrompeer_minimum, azure_countofrouteslearnedfrompeer_total</td>
    <td>Count</td>
    <td>Total number of routes learned from peer</td>
  </tr>
  <tr>
    <td>azure_virtualhubdataprocessed_average, azure_virtualhubdataprocessed_count, azure_virtualhubdataprocessed_maximum, azure_virtualhubdataprocessed_minimum, azure_virtualhubdataprocessed_total</td>
    <td>Bytes</td>
    <td>Data Processed by the Virtual Hub Router</td>
  </tr>
</table>
