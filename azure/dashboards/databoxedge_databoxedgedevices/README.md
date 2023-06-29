---
title: Azure Microsoft.DataBoxEdge/dataBoxEdgeDevices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DataBoxEdge/dataBoxEdgeDevices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DataBoxEdge/dataBoxEdgeDevices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DataBoxEdge/dataBoxEdgeDevices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_availablecapacity_average, azure_availablecapacity_count, azure_availablecapacity_maximum, azure_availablecapacity_minimum, azure_availablecapacity_total</td>
    <td>Bytes</td>
    <td>The available capacity in bytes during the reporting period.</td>
  </tr>
  <tr>
    <td>azure_bytesuploadedtocloud_average, azure_bytesuploadedtocloud_count, azure_bytesuploadedtocloud_maximum, azure_bytesuploadedtocloud_minimum, azure_bytesuploadedtocloud_total</td>
    <td>Bytes</td>
    <td>The total number of bytes that is uploaded to Azure from a device during the reporting period.</td>
  </tr>
  <tr>
    <td>azure_bytesuploadedtocloudpershare_average, azure_bytesuploadedtocloudpershare_count, azure_bytesuploadedtocloudpershare_maximum, azure_bytesuploadedtocloudpershare_minimum, azure_bytesuploadedtocloudpershare_total</td>
    <td>Bytes</td>
    <td>The total number of bytes that is uploaded to Azure from a share during the reporting period.</td>
  </tr>
  <tr>
    <td>azure_cloudreadthroughput_average, azure_cloudreadthroughput_count, azure_cloudreadthroughput_maximum, azure_cloudreadthroughput_minimum, azure_cloudreadthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The cloud download throughput to Azure during the reporting period.</td>
  </tr>
  <tr>
    <td>azure_cloudreadthroughputpershare_average, azure_cloudreadthroughputpershare_count, azure_cloudreadthroughputpershare_maximum, azure_cloudreadthroughputpershare_minimum, azure_cloudreadthroughputpershare_total</td>
    <td>BytesPerSecond</td>
    <td>The download throughput to Azure from a share during the reporting period.</td>
  </tr>
  <tr>
    <td>azure_clouduploadthroughput_average, azure_clouduploadthroughput_count, azure_clouduploadthroughput_maximum, azure_clouduploadthroughput_minimum, azure_clouduploadthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The cloud upload throughput  to Azure during the reporting period.</td>
  </tr>
  <tr>
    <td>azure_clouduploadthroughputpershare_average, azure_clouduploadthroughputpershare_count, azure_clouduploadthroughputpershare_maximum, azure_clouduploadthroughputpershare_minimum, azure_clouduploadthroughputpershare_total</td>
    <td>BytesPerSecond</td>
    <td>The upload throughput to Azure from a share during the reporting period.</td>
  </tr>
  <tr>
    <td>azure_hypervmemoryutilization_average, azure_hypervmemoryutilization_count, azure_hypervmemoryutilization_maximum, azure_hypervmemoryutilization_minimum, azure_hypervmemoryutilization_total</td>
    <td>Percent</td>
    <td>Amount of RAM in Use</td>
  </tr>
  <tr>
    <td>azure_hypervvirtualprocessorutilization_average, azure_hypervvirtualprocessorutilization_count, azure_hypervvirtualprocessorutilization_maximum, azure_hypervvirtualprocessorutilization_minimum, azure_hypervvirtualprocessorutilization_total</td>
    <td>Percent</td>
    <td>Percent CPU Usage</td>
  </tr>
  <tr>
    <td>azure_nicreadthroughput_average, azure_nicreadthroughput_count, azure_nicreadthroughput_maximum, azure_nicreadthroughput_minimum, azure_nicreadthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The read throughput of the network interface on the device in the reporting period for all volumes in the gateway.</td>
  </tr>
  <tr>
    <td>azure_nicwritethroughput_average, azure_nicwritethroughput_count, azure_nicwritethroughput_maximum, azure_nicwritethroughput_minimum, azure_nicwritethroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The write throughput of the network interface on the device in the reporting period for all volumes in the gateway.</td>
  </tr>
  <tr>
    <td>azure_totalcapacity_average, azure_totalcapacity_count, azure_totalcapacity_maximum, azure_totalcapacity_minimum, azure_totalcapacity_total</td>
    <td>Bytes</td>
    <td>The total capacity of the device in bytes during the reporting period.</td>
  </tr>
</table>
