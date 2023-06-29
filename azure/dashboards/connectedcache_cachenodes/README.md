---
title: Azure Microsoft.ConnectedCache/CacheNodes metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ConnectedCache/CacheNodes metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ConnectedCache/CacheNodes
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ConnectedCache/CacheNodes, **PUT DESCRIPTION HERE**. 

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
    <td>azure_egressbps_average, azure_egressbps_count, azure_egressbps_maximum, azure_egressbps_minimum, azure_egressbps_total</td>
    <td>BitsPerSecond</td>
    <td>Egress Throughput</td>
  </tr>
  <tr>
    <td>azure_hitratio_average, azure_hitratio_count, azure_hitratio_maximum, azure_hitratio_minimum, azure_hitratio_total</td>
    <td>Percent</td>
    <td>Cache Efficiency</td>
  </tr>
  <tr>
    <td>azure_hits_average, azure_hits_count, azure_hits_maximum, azure_hits_minimum, azure_hits_total</td>
    <td>Count</td>
    <td>Count of hits</td>
  </tr>
  <tr>
    <td>azure_hitsbps_average, azure_hitsbps_count, azure_hitsbps_maximum, azure_hitsbps_minimum, azure_hitsbps_total</td>
    <td>BitsPerSecond</td>
    <td>Hit Throughput</td>
  </tr>
  <tr>
    <td>azure_misses_average, azure_misses_count, azure_misses_maximum, azure_misses_minimum, azure_misses_total</td>
    <td>Count</td>
    <td>Count of misses</td>
  </tr>
  <tr>
    <td>azure_missesbps_average, azure_missesbps_count, azure_missesbps_maximum, azure_missesbps_minimum, azure_missesbps_total</td>
    <td>BitsPerSecond</td>
    <td>Miss Throughput</td>
  </tr>
</table>
