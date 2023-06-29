---
title: Azure Microsoft.NetApp/netAppAccounts/capacityPools metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.NetApp/netAppAccounts/capacityPools metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.NetApp/netAppAccounts/capacityPools
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.NetApp/netAppAccounts/capacityPools, **PUT DESCRIPTION HERE**. 

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
    <td>azure_volumepoolallocatedsize_average, azure_volumepoolallocatedsize_count, azure_volumepoolallocatedsize_maximum, azure_volumepoolallocatedsize_minimum, azure_volumepoolallocatedsize_total</td>
    <td>Bytes</td>
    <td>Provisioned size of this pool</td>
  </tr>
  <tr>
    <td>azure_volumepoolallocatedtovolumethroughput_average, azure_volumepoolallocatedtovolumethroughput_count, azure_volumepoolallocatedtovolumethroughput_maximum, azure_volumepoolallocatedtovolumethroughput_minimum, azure_volumepoolallocatedtovolumethroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Sum of the throughput of all the volumes belonging to the pool</td>
  </tr>
  <tr>
    <td>azure_volumepoolallocatedused_average, azure_volumepoolallocatedused_count, azure_volumepoolallocatedused_maximum, azure_volumepoolallocatedused_minimum, azure_volumepoolallocatedused_total</td>
    <td>Bytes</td>
    <td>Allocated used size of the pool</td>
  </tr>
  <tr>
    <td>azure_volumepoolprovisionedthroughput_average, azure_volumepoolprovisionedthroughput_count, azure_volumepoolprovisionedthroughput_maximum, azure_volumepoolprovisionedthroughput_minimum, azure_volumepoolprovisionedthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Provisioned throughput of this pool</td>
  </tr>
  <tr>
    <td>azure_volumepooltotallogicalsize_average, azure_volumepooltotallogicalsize_count, azure_volumepooltotallogicalsize_maximum, azure_volumepooltotallogicalsize_minimum, azure_volumepooltotallogicalsize_total</td>
    <td>Bytes</td>
    <td>Sum of the logical size of all the volumes belonging to the pool</td>
  </tr>
  <tr>
    <td>azure_volumepooltotalsnapshotsize_average, azure_volumepooltotalsnapshotsize_count, azure_volumepooltotalsnapshotsize_maximum, azure_volumepooltotalsnapshotsize_minimum, azure_volumepooltotalsnapshotsize_total</td>
    <td>Bytes</td>
    <td>Sum of snapshot size of all volumes in this pool</td>
  </tr>
</table>
