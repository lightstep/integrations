---
title: Azure Microsoft.MachineLearningServices/workspaces/onlineEndpoints metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.MachineLearningServices/workspaces/onlineEndpoints metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.MachineLearningServices/workspaces/onlineEndpoints
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.MachineLearningServices/workspaces/onlineEndpoints, **PUT DESCRIPTION HERE**. 

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
    <td>azure_connectionsactive_average, azure_connectionsactive_count, azure_connectionsactive_maximum, azure_connectionsactive_minimum, azure_connectionsactive_total</td>
    <td>Count</td>
    <td>The total number of concurrent TCP connections active from clients.</td>
  </tr>
  <tr>
    <td>azure_datacollectionerrorsperminute_average, azure_datacollectionerrorsperminute_count, azure_datacollectionerrorsperminute_maximum, azure_datacollectionerrorsperminute_minimum, azure_datacollectionerrorsperminute_total</td>
    <td>Count</td>
    <td>The number of data collection events dropped per minute.</td>
  </tr>
  <tr>
    <td>azure_datacollectioneventsperminute_average, azure_datacollectioneventsperminute_count, azure_datacollectioneventsperminute_maximum, azure_datacollectioneventsperminute_minimum, azure_datacollectioneventsperminute_total</td>
    <td>Count</td>
    <td>The number of data collection events processed per minute.</td>
  </tr>
  <tr>
    <td>azure_networkbytes_average, azure_networkbytes_count, azure_networkbytes_maximum, azure_networkbytes_minimum, azure_networkbytes_total</td>
    <td>BytesPerSecond</td>
    <td>The bytes per second served for the endpoint.</td>
  </tr>
  <tr>
    <td>azure_newconnectionspersecond_average, azure_newconnectionspersecond_count, azure_newconnectionspersecond_maximum, azure_newconnectionspersecond_minimum, azure_newconnectionspersecond_total</td>
    <td>CountPerSecond</td>
    <td>The average number of new TCP connections per second established from clients.</td>
  </tr>
  <tr>
    <td>azure_requestlatency_average, azure_requestlatency_count, azure_requestlatency_maximum, azure_requestlatency_minimum, azure_requestlatency_total</td>
    <td>Milliseconds</td>
    <td>The average complete interval of time taken for a request to be responded in milliseconds</td>
  </tr>
  <tr>
    <td>azure_requestlatency_p50_average, azure_requestlatency_p50_count, azure_requestlatency_p50_maximum, azure_requestlatency_p50_minimum, azure_requestlatency_p50_total</td>
    <td>Milliseconds</td>
    <td>The average P50 request latency aggregated by all request latency values collected over the selected time period</td>
  </tr>
  <tr>
    <td>azure_requestlatency_p90_average, azure_requestlatency_p90_count, azure_requestlatency_p90_maximum, azure_requestlatency_p90_minimum, azure_requestlatency_p90_total</td>
    <td>Milliseconds</td>
    <td>The average P90 request latency aggregated by all request latency values collected over the selected time period</td>
  </tr>
  <tr>
    <td>azure_requestlatency_p95_average, azure_requestlatency_p95_count, azure_requestlatency_p95_maximum, azure_requestlatency_p95_minimum, azure_requestlatency_p95_total</td>
    <td>Milliseconds</td>
    <td>The average P95 request latency aggregated by all request latency values collected over the selected time period</td>
  </tr>
  <tr>
    <td>azure_requestlatency_p99_average, azure_requestlatency_p99_count, azure_requestlatency_p99_maximum, azure_requestlatency_p99_minimum, azure_requestlatency_p99_total</td>
    <td>Milliseconds</td>
    <td>The average P99 request latency aggregated by all request latency values collected over the selected time period</td>
  </tr>
  <tr>
    <td>azure_requestsperminute_average, azure_requestsperminute_count, azure_requestsperminute_maximum, azure_requestsperminute_minimum, azure_requestsperminute_total</td>
    <td>Count</td>
    <td>The number of requests sent to online endpoint within a minute</td>
  </tr>
</table>
