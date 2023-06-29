---
title: Azure Microsoft.Network/privateLinkServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/privateLinkServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/privateLinkServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/privateLinkServices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_plsbytesin_average, azure_plsbytesin_count, azure_plsbytesin_maximum, azure_plsbytesin_minimum, azure_plsbytesin_total</td>
    <td>Count</td>
    <td>Total number of Bytes Out</td>
  </tr>
  <tr>
    <td>azure_plsbytesout_average, azure_plsbytesout_count, azure_plsbytesout_maximum, azure_plsbytesout_minimum, azure_plsbytesout_total</td>
    <td>Count</td>
    <td>Total number of Bytes Out</td>
  </tr>
  <tr>
    <td>azure_plsnatportsusage_average, azure_plsnatportsusage_count, azure_plsnatportsusage_maximum, azure_plsnatportsusage_minimum, azure_plsnatportsusage_total</td>
    <td>Percent</td>
    <td>Nat Ports Usage</td>
  </tr>
</table>
