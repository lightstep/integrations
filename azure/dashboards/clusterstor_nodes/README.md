---
title: Azure Microsoft.ClusterStor/nodes metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ClusterStor/nodes metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ClusterStor/nodes
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ClusterStor/nodes, **PUT DESCRIPTION HERE**. 

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
    <td>azure_totalcapacityavailable_average, azure_totalcapacityavailable_count, azure_totalcapacityavailable_maximum, azure_totalcapacityavailable_minimum, azure_totalcapacityavailable_total</td>
    <td>Bytes</td>
    <td>The total capacity available in lustre file system</td>
  </tr>
  <tr>
    <td>azure_totalcapacityused_average, azure_totalcapacityused_count, azure_totalcapacityused_maximum, azure_totalcapacityused_minimum, azure_totalcapacityused_total</td>
    <td>Bytes</td>
    <td>The total capacity used in lustre file system</td>
  </tr>
  <tr>
    <td>azure_totalread_average, azure_totalread_count, azure_totalread_maximum, azure_totalread_minimum, azure_totalread_total</td>
    <td>BytesPerSecond</td>
    <td>The total lustre file system read per second</td>
  </tr>
  <tr>
    <td>azure_totalwrite_average, azure_totalwrite_count, azure_totalwrite_maximum, azure_totalwrite_minimum, azure_totalwrite_total</td>
    <td>BytesPerSecond</td>
    <td>The total lustre file system write per second</td>
  </tr>
</table>
