---
title: Azure Microsoft.Media/videoanalyzers metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Media/videoanalyzers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Media/videoanalyzers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Media/videoanalyzers, **PUT DESCRIPTION HERE**. 

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
    <td>azure_ingressbytes_average, azure_ingressbytes_count, azure_ingressbytes_maximum, azure_ingressbytes_minimum, azure_ingressbytes_total</td>
    <td>Bytes</td>
    <td>The number of bytes ingressed by the pipeline node.</td>
  </tr>
  <tr>
    <td>azure_pipelines_average, azure_pipelines_count, azure_pipelines_maximum, azure_pipelines_minimum, azure_pipelines_total</td>
    <td>Count</td>
    <td>The number of pipelines of each kind and state</td>
  </tr>
</table>
