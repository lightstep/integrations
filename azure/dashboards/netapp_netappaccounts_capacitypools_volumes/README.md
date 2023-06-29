---
title: Azure Microsoft.NetApp/netAppAccounts/capacityPools/volumes metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.NetApp/netAppAccounts/capacityPools/volumes metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.NetApp/netAppAccounts/capacityPools/volumes
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.NetApp/netAppAccounts/capacityPools/volumes, **PUT DESCRIPTION HERE**. 

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
    <td>azure_averagereadlatency_average, azure_averagereadlatency_count, azure_averagereadlatency_maximum, azure_averagereadlatency_minimum, azure_averagereadlatency_total</td>
    <td>MilliSeconds</td>
    <td>Average read latency in milliseconds per operation</td>
  </tr>
  <tr>
    <td>azure_averagewritelatency_average, azure_averagewritelatency_count, azure_averagewritelatency_maximum, azure_averagewritelatency_minimum, azure_averagewritelatency_total</td>
    <td>MilliSeconds</td>
    <td>Average write latency in milliseconds per operation</td>
  </tr>
  <tr>
    <td>azure_cbsvolumebackupactive_average, azure_cbsvolumebackupactive_count, azure_cbsvolumebackupactive_maximum, azure_cbsvolumebackupactive_minimum, azure_cbsvolumebackupactive_total</td>
    <td>Count</td>
    <td>Is the backup policy suspended for the volume? 0 if yes, 1 if no.</td>
  </tr>
  <tr>
    <td>azure_cbsvolumelogicalbackupbytes_average, azure_cbsvolumelogicalbackupbytes_count, azure_cbsvolumelogicalbackupbytes_maximum, azure_cbsvolumelogicalbackupbytes_minimum, azure_cbsvolumelogicalbackupbytes_total</td>
    <td>Bytes</td>
    <td>Total bytes backed up for this Volume.</td>
  </tr>
  <tr>
    <td>azure_cbsvolumeoperationbackuptransferredbytes_average, azure_cbsvolumeoperationbackuptransferredbytes_count, azure_cbsvolumeoperationbackuptransferredbytes_maximum, azure_cbsvolumeoperationbackuptransferredbytes_minimum, azure_cbsvolumeoperationbackuptransferredbytes_total</td>
    <td>Bytes</td>
    <td>Total bytes transferred for last backup operation.</td>
  </tr>
  <tr>
    <td>azure_cbsvolumeoperationcomplete_average, azure_cbsvolumeoperationcomplete_count, azure_cbsvolumeoperationcomplete_maximum, azure_cbsvolumeoperationcomplete_minimum, azure_cbsvolumeoperationcomplete_total</td>
    <td>Count</td>
    <td>Did the last volume backup or restore operation complete successfully? 1 if yes, 0 if no.</td>
  </tr>
  <tr>
    <td>azure_cbsvolumeoperationrestoretransferredbytes_average, azure_cbsvolumeoperationrestoretransferredbytes_count, azure_cbsvolumeoperationrestoretransferredbytes_maximum, azure_cbsvolumeoperationrestoretransferredbytes_minimum, azure_cbsvolumeoperationrestoretransferredbytes_total</td>
    <td>Bytes</td>
    <td>Total bytes transferred for last backup restore operation.</td>
  </tr>
  <tr>
    <td>azure_cbsvolumeoperationtransferredbytes_average, azure_cbsvolumeoperationtransferredbytes_count, azure_cbsvolumeoperationtransferredbytes_maximum, azure_cbsvolumeoperationtransferredbytes_minimum, azure_cbsvolumeoperationtransferredbytes_total</td>
    <td>Bytes</td>
    <td>Total bytes transferred for last backup or restore operation.</td>
  </tr>
  <tr>
    <td>azure_cbsvolumeprotected_average, azure_cbsvolumeprotected_count, azure_cbsvolumeprotected_maximum, azure_cbsvolumeprotected_minimum, azure_cbsvolumeprotected_total</td>
    <td>Count</td>
    <td>Is backup enabled for the volume? 1 if yes, 0 if no.</td>
  </tr>
  <tr>
    <td>azure_otherthroughput_average, azure_otherthroughput_count, azure_otherthroughput_maximum, azure_otherthroughput_minimum, azure_otherthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Other throughput (that is not read or write) in bytes per second</td>
  </tr>
  <tr>
    <td>azure_readiops_average, azure_readiops_count, azure_readiops_maximum, azure_readiops_minimum, azure_readiops_total</td>
    <td>CountPerSecond</td>
    <td>Read In/out operations per second</td>
  </tr>
  <tr>
    <td>azure_readthroughput_average, azure_readthroughput_count, azure_readthroughput_maximum, azure_readthroughput_minimum, azure_readthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Read throughput in bytes per second</td>
  </tr>
  <tr>
    <td>azure_totalthroughput_average, azure_totalthroughput_count, azure_totalthroughput_maximum, azure_totalthroughput_minimum, azure_totalthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Sum of all throughput in bytes per second</td>
  </tr>
  <tr>
    <td>azure_volumeallocatedsize_average, azure_volumeallocatedsize_count, azure_volumeallocatedsize_maximum, azure_volumeallocatedsize_minimum, azure_volumeallocatedsize_total</td>
    <td>Bytes</td>
    <td>The provisioned size of a volume</td>
  </tr>
  <tr>
    <td>azure_volumeconsumedsizepercentage_average, azure_volumeconsumedsizepercentage_count, azure_volumeconsumedsizepercentage_maximum, azure_volumeconsumedsizepercentage_minimum, azure_volumeconsumedsizepercentage_total</td>
    <td>Percent</td>
    <td>The percentage of the volume consumed including snapshots.</td>
  </tr>
  <tr>
    <td>azure_volumecooltierdatareadsize_average, azure_volumecooltierdatareadsize_count, azure_volumecooltierdatareadsize_maximum, azure_volumecooltierdatareadsize_minimum, azure_volumecooltierdatareadsize_total</td>
    <td>Bytes</td>
    <td>Data read in using GET per volume</td>
  </tr>
  <tr>
    <td>azure_volumecooltierdatawritesize_average, azure_volumecooltierdatawritesize_count, azure_volumecooltierdatawritesize_maximum, azure_volumecooltierdatawritesize_minimum, azure_volumecooltierdatawritesize_total</td>
    <td>Bytes</td>
    <td>Data tiered out using PUT per volume</td>
  </tr>
  <tr>
    <td>azure_volumecooltiersize_average, azure_volumecooltiersize_count, azure_volumecooltiersize_maximum, azure_volumecooltiersize_minimum, azure_volumecooltiersize_total</td>
    <td>Bytes</td>
    <td>Volume Footprint for Cool Tier</td>
  </tr>
  <tr>
    <td>azure_volumelogicalsize_average, azure_volumelogicalsize_count, azure_volumelogicalsize_maximum, azure_volumelogicalsize_minimum, azure_volumelogicalsize_total</td>
    <td>Bytes</td>
    <td>Logical size of the volume (used bytes)</td>
  </tr>
  <tr>
    <td>azure_volumesnapshotsize_average, azure_volumesnapshotsize_count, azure_volumesnapshotsize_maximum, azure_volumesnapshotsize_minimum, azure_volumesnapshotsize_total</td>
    <td>Bytes</td>
    <td>Size of all snapshots in volume</td>
  </tr>
  <tr>
    <td>azure_writeiops_average, azure_writeiops_count, azure_writeiops_maximum, azure_writeiops_minimum, azure_writeiops_total</td>
    <td>CountPerSecond</td>
    <td>Write In/out operations per second</td>
  </tr>
  <tr>
    <td>azure_writethroughput_average, azure_writethroughput_count, azure_writethroughput_maximum, azure_writethroughput_minimum, azure_writethroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Write throughput in bytes per second</td>
  </tr>
  <tr>
    <td>azure_xregionreplicationhealthy_average, azure_xregionreplicationhealthy_count, azure_xregionreplicationhealthy_maximum, azure_xregionreplicationhealthy_minimum, azure_xregionreplicationhealthy_total</td>
    <td>Count</td>
    <td>Condition of the relationship, 1 or 0.</td>
  </tr>
  <tr>
    <td>azure_xregionreplicationlagtime_average, azure_xregionreplicationlagtime_count, azure_xregionreplicationlagtime_maximum, azure_xregionreplicationlagtime_minimum, azure_xregionreplicationlagtime_total</td>
    <td>Seconds</td>
    <td>The amount of time in seconds by which the data on the mirror lags behind the source.</td>
  </tr>
  <tr>
    <td>azure_xregionreplicationlasttransferduration_average, azure_xregionreplicationlasttransferduration_count, azure_xregionreplicationlasttransferduration_maximum, azure_xregionreplicationlasttransferduration_minimum, azure_xregionreplicationlasttransferduration_total</td>
    <td>Seconds</td>
    <td>The amount of time in seconds it took for the last transfer to complete.</td>
  </tr>
  <tr>
    <td>azure_xregionreplicationlasttransfersize_average, azure_xregionreplicationlasttransfersize_count, azure_xregionreplicationlasttransfersize_maximum, azure_xregionreplicationlasttransfersize_minimum, azure_xregionreplicationlasttransfersize_total</td>
    <td>Bytes</td>
    <td>The total number of bytes transferred as part of the last transfer.</td>
  </tr>
  <tr>
    <td>azure_xregionreplicationrelationshipprogress_average, azure_xregionreplicationrelationshipprogress_count, azure_xregionreplicationrelationshipprogress_maximum, azure_xregionreplicationrelationshipprogress_minimum, azure_xregionreplicationrelationshipprogress_total</td>
    <td>Bytes</td>
    <td>Total amount of data transferred for the current transfer operation.</td>
  </tr>
  <tr>
    <td>azure_xregionreplicationrelationshiptransferring_average, azure_xregionreplicationrelationshiptransferring_count, azure_xregionreplicationrelationshiptransferring_maximum, azure_xregionreplicationrelationshiptransferring_minimum, azure_xregionreplicationrelationshiptransferring_total</td>
    <td>Count</td>
    <td>Whether the status of the Volume Replication is 'transferring'.</td>
  </tr>
  <tr>
    <td>azure_xregionreplicationtotaltransferbytes_average, azure_xregionreplicationtotaltransferbytes_count, azure_xregionreplicationtotaltransferbytes_maximum, azure_xregionreplicationtotaltransferbytes_minimum, azure_xregionreplicationtotaltransferbytes_total</td>
    <td>Bytes</td>
    <td>Cumulative bytes transferred for the relationship.</td>
  </tr>
</table>
