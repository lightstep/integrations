---
title: Azure microsoft.bing/accounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.bing/accounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.bing/accounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.bing/accounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_blockedcalls_average, azure_blockedcalls_count, azure_blockedcalls_maximum, azure_blockedcalls_minimum, azure_blockedcalls_total</td>
    <td>Count</td>
    <td>Number of calls that exceeded the rate or quota limit</td>
  </tr>
  <tr>
    <td>azure_clienterrors_average, azure_clienterrors_count, azure_clienterrors_maximum, azure_clienterrors_minimum, azure_clienterrors_total</td>
    <td>Count</td>
    <td>Number of calls with any client error (HTTP status code 4xx)</td>
  </tr>
  <tr>
    <td>azure_datain_average, azure_datain_count, azure_datain_maximum, azure_datain_minimum, azure_datain_total</td>
    <td>Bytes</td>
    <td>Incoming request Content-Length in bytes</td>
  </tr>
  <tr>
    <td>azure_dataout_average, azure_dataout_count, azure_dataout_maximum, azure_dataout_minimum, azure_dataout_total</td>
    <td>Bytes</td>
    <td>Outgoing response Content-Length in bytes</td>
  </tr>
  <tr>
    <td>azure_latency_average, azure_latency_count, azure_latency_maximum, azure_latency_minimum, azure_latency_total</td>
    <td>Milliseconds</td>
    <td>Latency in milliseconds</td>
  </tr>
  <tr>
    <td>azure_servererrors_average, azure_servererrors_count, azure_servererrors_maximum, azure_servererrors_minimum, azure_servererrors_total</td>
    <td>Count</td>
    <td>Number of calls with any server error (HTTP status code 5xx)</td>
  </tr>
  <tr>
    <td>azure_successfulcalls_average, azure_successfulcalls_count, azure_successfulcalls_maximum, azure_successfulcalls_minimum, azure_successfulcalls_total</td>
    <td>Count</td>
    <td>Number of successful calls (HTTP status code 2xx)</td>
  </tr>
  <tr>
    <td>azure_totalcalls_average, azure_totalcalls_count, azure_totalcalls_maximum, azure_totalcalls_minimum, azure_totalcalls_total</td>
    <td>Count</td>
    <td>Total number of calls</td>
  </tr>
  <tr>
    <td>azure_totalerrors_average, azure_totalerrors_count, azure_totalerrors_maximum, azure_totalerrors_minimum, azure_totalerrors_total</td>
    <td>Count</td>
    <td>Number of calls with any error (HTTP status code 4xx or 5xx)</td>
  </tr>
</table>
