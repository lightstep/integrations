---
title: Azure Microsoft.StorageCache/amlFilesystems metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.StorageCache/amlFilesystems metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.StorageCache/amlFilesystems
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.StorageCache/amlFilesystems, **PUT DESCRIPTION HERE**. 

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
    <td>azure_clientreadops_average, azure_clientreadops_count, azure_clientreadops_maximum, azure_clientreadops_minimum, azure_clientreadops_total</td>
    <td>Count</td>
    <td>Number of client read ops performed.</td>
  </tr>
  <tr>
    <td>azure_clientreadthroughput_average, azure_clientreadthroughput_count, azure_clientreadthroughput_maximum, azure_clientreadthroughput_minimum, azure_clientreadthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Client read data transfer rate.</td>
  </tr>
  <tr>
    <td>azure_clientwriteops_average, azure_clientwriteops_count, azure_clientwriteops_maximum, azure_clientwriteops_minimum, azure_clientwriteops_total</td>
    <td>Count</td>
    <td>Number of client write ops performed.</td>
  </tr>
  <tr>
    <td>azure_clientwritethroughput_average, azure_clientwritethroughput_count, azure_clientwritethroughput_maximum, azure_clientwritethroughput_minimum, azure_clientwritethroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Client write data transfer rate.</td>
  </tr>
  <tr>
    <td>azure_mdtbytesavailable_average, azure_mdtbytesavailable_count, azure_mdtbytesavailable_maximum, azure_mdtbytesavailable_minimum, azure_mdtbytesavailable_total</td>
    <td>Bytes</td>
    <td>Number of bytes marked as available on the MDT.</td>
  </tr>
  <tr>
    <td>azure_mdtbytestotal_average, azure_mdtbytestotal_count, azure_mdtbytestotal_maximum, azure_mdtbytestotal_minimum, azure_mdtbytestotal_total</td>
    <td>Bytes</td>
    <td>Total number of bytes supported on the MDT.</td>
  </tr>
  <tr>
    <td>azure_mdtbytesused_average, azure_mdtbytesused_count, azure_mdtbytesused_maximum, azure_mdtbytesused_minimum, azure_mdtbytesused_total</td>
    <td>Bytes</td>
    <td>Number of bytes available for use minus the number of bytes marked as free on the MDT.</td>
  </tr>
  <tr>
    <td>azure_mdtclientlatency_average, azure_mdtclientlatency_count, azure_mdtclientlatency_maximum, azure_mdtclientlatency_minimum, azure_mdtclientlatency_total</td>
    <td>MilliSeconds</td>
    <td>Client latency for all operations to MDTs.</td>
  </tr>
  <tr>
    <td>azure_mdtclientops_average, azure_mdtclientops_count, azure_mdtclientops_maximum, azure_mdtclientops_minimum, azure_mdtclientops_total</td>
    <td>Count</td>
    <td>Number of client MDT metadata ops performed.</td>
  </tr>
  <tr>
    <td>azure_mdtconnectedclients_average, azure_mdtconnectedclients_count, azure_mdtconnectedclients_maximum, azure_mdtconnectedclients_minimum, azure_mdtconnectedclients_total</td>
    <td>Count</td>
    <td>Number of client connections (exports) to the MDT</td>
  </tr>
  <tr>
    <td>azure_mdtfilesfree_average, azure_mdtfilesfree_count, azure_mdtfilesfree_maximum, azure_mdtfilesfree_minimum, azure_mdtfilesfree_total</td>
    <td>Count</td>
    <td>Count of free files (inodes) on the MDT.</td>
  </tr>
  <tr>
    <td>azure_mdtfilestotal_average, azure_mdtfilestotal_count, azure_mdtfilestotal_maximum, azure_mdtfilestotal_minimum, azure_mdtfilestotal_total</td>
    <td>Count</td>
    <td>Total number of files supported on the MDT.</td>
  </tr>
  <tr>
    <td>azure_mdtfilesused_average, azure_mdtfilesused_count, azure_mdtfilesused_maximum, azure_mdtfilesused_minimum, azure_mdtfilesused_total</td>
    <td>Count</td>
    <td>Number of total supported files minus the number of free files on the MDT.</td>
  </tr>
  <tr>
    <td>azure_ostbytesavailable_average, azure_ostbytesavailable_count, azure_ostbytesavailable_maximum, azure_ostbytesavailable_minimum, azure_ostbytesavailable_total</td>
    <td>Bytes</td>
    <td>Number of bytes marked as available on the OST.</td>
  </tr>
  <tr>
    <td>azure_ostbytestotal_average, azure_ostbytestotal_count, azure_ostbytestotal_maximum, azure_ostbytestotal_minimum, azure_ostbytestotal_total</td>
    <td>Bytes</td>
    <td>Total number of bytes supported on the OST.</td>
  </tr>
  <tr>
    <td>azure_ostbytesused_average, azure_ostbytesused_count, azure_ostbytesused_maximum, azure_ostbytesused_minimum, azure_ostbytesused_total</td>
    <td>Bytes</td>
    <td>Number of bytes available for use minus the number of bytes marked as free on the OST.</td>
  </tr>
  <tr>
    <td>azure_ostclientlatency_average, azure_ostclientlatency_count, azure_ostclientlatency_maximum, azure_ostclientlatency_minimum, azure_ostclientlatency_total</td>
    <td>MilliSeconds</td>
    <td>Client latency for all operations to OSTs.</td>
  </tr>
  <tr>
    <td>azure_ostclientops_average, azure_ostclientops_count, azure_ostclientops_maximum, azure_ostclientops_minimum, azure_ostclientops_total</td>
    <td>Count</td>
    <td>Number of client OST metadata ops performed.</td>
  </tr>
  <tr>
    <td>azure_ostconnectedclients_average, azure_ostconnectedclients_count, azure_ostconnectedclients_maximum, azure_ostconnectedclients_minimum, azure_ostconnectedclients_total</td>
    <td>Count</td>
    <td>Number of client connections (exports) to the OST</td>
  </tr>
  <tr>
    <td>azure_ostfilesfree_average, azure_ostfilesfree_count, azure_ostfilesfree_maximum, azure_ostfilesfree_minimum, azure_ostfilesfree_total</td>
    <td>Count</td>
    <td>Count of free files (inodes) on the OST.</td>
  </tr>
  <tr>
    <td>azure_ostfilestotal_average, azure_ostfilestotal_count, azure_ostfilestotal_maximum, azure_ostfilestotal_minimum, azure_ostfilestotal_total</td>
    <td>Count</td>
    <td>Total number of files supported on the OST.</td>
  </tr>
  <tr>
    <td>azure_ostfilesused_average, azure_ostfilesused_count, azure_ostfilesused_maximum, azure_ostfilesused_minimum, azure_ostfilesused_total</td>
    <td>Count</td>
    <td>Number of total supported files minus the number of free files on the OST.</td>
  </tr>
</table>
