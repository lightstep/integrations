---
title: Azure Microsoft.StorageSync/storageSyncServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.StorageSync/storageSyncServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.StorageSync/storageSyncServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.StorageSync/storageSyncServices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_serversyncsessionresult_average, azure_serversyncsessionresult_count, azure_serversyncsessionresult_maximum, azure_serversyncsessionresult_minimum, azure_serversyncsessionresult_total</td>
    <td>Count</td>
    <td>Metric that logs a value of 1 each time the Server Endpoint successfully completes a Sync Session with the Cloud Endpoint</td>
  </tr>
  <tr>
    <td>azure_storagesyncbatchtransferredfilebytes_average, azure_storagesyncbatchtransferredfilebytes_count, azure_storagesyncbatchtransferredfilebytes_maximum, azure_storagesyncbatchtransferredfilebytes_minimum, azure_storagesyncbatchtransferredfilebytes_total</td>
    <td>Bytes</td>
    <td>Total file size transferred for Sync Sessions</td>
  </tr>
  <tr>
    <td>azure_storagesynccomputedcachehitrate_average, azure_storagesynccomputedcachehitrate_count, azure_storagesynccomputedcachehitrate_maximum, azure_storagesynccomputedcachehitrate_minimum, azure_storagesynccomputedcachehitrate_total</td>
    <td>Percent</td>
    <td>Percentage of bytes that were served from the cache</td>
  </tr>
  <tr>
    <td>azure_storagesyncdatasizebyaccesspattern_average, azure_storagesyncdatasizebyaccesspattern_count, azure_storagesyncdatasizebyaccesspattern_maximum, azure_storagesyncdatasizebyaccesspattern_minimum, azure_storagesyncdatasizebyaccesspattern_total</td>
    <td>Bytes</td>
    <td>Size of data by last access time</td>
  </tr>
  <tr>
    <td>azure_storagesyncincrementaltiereddatasizebytes_average, azure_storagesyncincrementaltiereddatasizebytes_count, azure_storagesyncincrementaltiereddatasizebytes_maximum, azure_storagesyncincrementaltiereddatasizebytes_minimum, azure_storagesyncincrementaltiereddatasizebytes_total</td>
    <td>Bytes</td>
    <td>Size of data tiered during last maintenance job</td>
  </tr>
  <tr>
    <td>azure_storagesyncrecallcomputedsuccessrate_average, azure_storagesyncrecallcomputedsuccessrate_count, azure_storagesyncrecallcomputedsuccessrate_maximum, azure_storagesyncrecallcomputedsuccessrate_minimum, azure_storagesyncrecallcomputedsuccessrate_total</td>
    <td>Percent</td>
    <td>Percentage of all recalls that were successful</td>
  </tr>
  <tr>
    <td>azure_storagesyncrecallednetworkbytesbyapplication_average, azure_storagesyncrecallednetworkbytesbyapplication_count, azure_storagesyncrecallednetworkbytesbyapplication_maximum, azure_storagesyncrecallednetworkbytesbyapplication_minimum, azure_storagesyncrecallednetworkbytesbyapplication_total</td>
    <td>Bytes</td>
    <td>Size of data recalled by application</td>
  </tr>
  <tr>
    <td>azure_storagesyncrecalledtotalnetworkbytes_average, azure_storagesyncrecalledtotalnetworkbytes_count, azure_storagesyncrecalledtotalnetworkbytes_maximum, azure_storagesyncrecalledtotalnetworkbytes_minimum, azure_storagesyncrecalledtotalnetworkbytes_total</td>
    <td>Bytes</td>
    <td>Size of data recalled</td>
  </tr>
  <tr>
    <td>azure_storagesyncrecallthroughputbytespersecond_average, azure_storagesyncrecallthroughputbytespersecond_count, azure_storagesyncrecallthroughputbytespersecond_maximum, azure_storagesyncrecallthroughputbytespersecond_minimum, azure_storagesyncrecallthroughputbytespersecond_total</td>
    <td>BytesPerSecond</td>
    <td>Size of data recall throughput</td>
  </tr>
  <tr>
    <td>azure_storagesyncserverheartbeat_average, azure_storagesyncserverheartbeat_count, azure_storagesyncserverheartbeat_maximum, azure_storagesyncserverheartbeat_minimum, azure_storagesyncserverheartbeat_total</td>
    <td>Count</td>
    <td>Metric that logs a value of 1 each time the resigtered server successfully records a heartbeat with the Cloud Endpoint</td>
  </tr>
  <tr>
    <td>azure_storagesyncsyncsessionappliedfilescount_average, azure_storagesyncsyncsessionappliedfilescount_count, azure_storagesyncsyncsessionappliedfilescount_maximum, azure_storagesyncsyncsessionappliedfilescount_minimum, azure_storagesyncsyncsessionappliedfilescount_total</td>
    <td>Count</td>
    <td>Count of Files synced</td>
  </tr>
  <tr>
    <td>azure_storagesyncsyncsessionperitemerrorscount_average, azure_storagesyncsyncsessionperitemerrorscount_count, azure_storagesyncsyncsessionperitemerrorscount_maximum, azure_storagesyncsyncsessionperitemerrorscount_minimum, azure_storagesyncsyncsessionperitemerrorscount_total</td>
    <td>Count</td>
    <td>Count of files failed to sync</td>
  </tr>
  <tr>
    <td>azure_storagesynctiereddatasizebytes_average, azure_storagesynctiereddatasizebytes_count, azure_storagesynctiereddatasizebytes_maximum, azure_storagesynctiereddatasizebytes_minimum, azure_storagesynctiereddatasizebytes_total</td>
    <td>Bytes</td>
    <td>Size of data tiered to Azure file share</td>
  </tr>
  <tr>
    <td>azure_storagesynctieringcachesizebytes_average, azure_storagesynctieringcachesizebytes_count, azure_storagesynctieringcachesizebytes_maximum, azure_storagesynctieringcachesizebytes_minimum, azure_storagesynctieringcachesizebytes_total</td>
    <td>Bytes</td>
    <td>Size of data cached on the server</td>
  </tr>
</table>
