---
title: Azure Microsoft.BotService/botServices/channels metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.BotService/botServices/channels metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.BotService/botServices/channels
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.BotService/botServices/channels, **PUT DESCRIPTION HERE**. 

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
    <td>azure_requestlatency_average, azure_requestlatency_count, azure_requestlatency_maximum, azure_requestlatency_minimum, azure_requestlatency_total</td>
    <td>Milliseconds</td>
    <td>How long it takes to get request response</td>
  </tr>
  <tr>
    <td>azure_requeststraffic_average, azure_requeststraffic_count, azure_requeststraffic_maximum, azure_requeststraffic_minimum, azure_requeststraffic_total</td>
    <td>Count</td>
    <td>Number of requests within a given period of time</td>
  </tr>
</table>
