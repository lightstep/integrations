---
title: Azure Microsoft.StorageMover/storageMovers metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.StorageMover/storageMovers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.StorageMover/storageMovers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.StorageMover/storageMovers, **PUT DESCRIPTION HERE**. 

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
    <td>azure_jobrunscanthroughputitems_average, azure_jobrunscanthroughputitems_count, azure_jobrunscanthroughputitems_maximum, azure_jobrunscanthroughputitems_minimum, azure_jobrunscanthroughputitems_total</td>
    <td>CountPerSecond</td>
    <td>Job Run scan throughput in items/sec</td>
  </tr>
  <tr>
    <td>azure_jobruntransferthroughputbytes_average, azure_jobruntransferthroughputbytes_count, azure_jobruntransferthroughputbytes_maximum, azure_jobruntransferthroughputbytes_minimum, azure_jobruntransferthroughputbytes_total</td>
    <td>BytesPerSecond</td>
    <td>Job Run transfer throughput in bytes/sec</td>
  </tr>
  <tr>
    <td>azure_jobruntransferthroughputitems_average, azure_jobruntransferthroughputitems_count, azure_jobruntransferthroughputitems_maximum, azure_jobruntransferthroughputitems_minimum, azure_jobruntransferthroughputitems_total</td>
    <td>CountPerSecond</td>
    <td>Job Run transfer throughput in items/sec</td>
  </tr>
</table>
