---
title: Azure Microsoft.Network/connections metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/connections metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/connections
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/connections, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bitsinpersecond_average, azure_bitsinpersecond_count, azure_bitsinpersecond_maximum, azure_bitsinpersecond_minimum, azure_bitsinpersecond_total</td>
    <td>BitsPerSecond</td>
    <td>Bits ingressing Azure per second</td>
  </tr>
  <tr>
    <td>azure_bitsoutpersecond_average, azure_bitsoutpersecond_count, azure_bitsoutpersecond_maximum, azure_bitsoutpersecond_minimum, azure_bitsoutpersecond_total</td>
    <td>BitsPerSecond</td>
    <td>Bits egressing Azure per second</td>
  </tr>
</table>
