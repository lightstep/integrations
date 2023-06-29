---
title: Azure Microsoft.Media/mediaservices/streamingEndpoints metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Media/mediaservices/streamingEndpoints metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Media/mediaservices/streamingEndpoints
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Media/mediaservices/streamingEndpoints, **PUT DESCRIPTION HERE**. 

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
    <td>azure_cpu_average, azure_cpu_count, azure_cpu_maximum, azure_cpu_minimum, azure_cpu_total</td>
    <td>Percent</td>
    <td>CPU usage for premium streaming endpoints. This data is not available for standard streaming endpoints.</td>
  </tr>
  <tr>
    <td>azure_egress_average, azure_egress_count, azure_egress_maximum, azure_egress_minimum, azure_egress_total</td>
    <td>Bytes</td>
    <td>The amount of Egress data, in bytes.</td>
  </tr>
  <tr>
    <td>azure_egressbandwidth_average, azure_egressbandwidth_count, azure_egressbandwidth_maximum, azure_egressbandwidth_minimum, azure_egressbandwidth_total</td>
    <td>BitsPerSecond</td>
    <td>Egress bandwidth in bits per second.</td>
  </tr>
  <tr>
    <td>azure_requests_average, azure_requests_count, azure_requests_maximum, azure_requests_minimum, azure_requests_total</td>
    <td>Count</td>
    <td>Requests to a Streaming Endpoint.</td>
  </tr>
  <tr>
    <td>azure_successe2elatency_average, azure_successe2elatency_count, azure_successe2elatency_maximum, azure_successe2elatency_minimum, azure_successe2elatency_total</td>
    <td>MilliSeconds</td>
    <td>The average latency for successful requests in milliseconds.</td>
  </tr>
</table>
