---
title: Azure Microsoft.Storage/storageAccounts/objectReplicationPolicies metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Storage/storageAccounts/objectReplicationPolicies metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Storage/storageAccounts/objectReplicationPolicies
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Storage/storageAccounts/objectReplicationPolicies, **PUT DESCRIPTION HERE**. 

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
    <td>azure_pendingbytesforreplication_average, azure_pendingbytesforreplication_count, azure_pendingbytesforreplication_maximum, azure_pendingbytesforreplication_minimum, azure_pendingbytesforreplication_total</td>
    <td>Bytes</td>
    <td>The size in bytes of the blob object pending for replication, please note, this metric is in preview and is subject to change before becoming generally available</td>
  </tr>
  <tr>
    <td>azure_pendingoperationsforreplication_average, azure_pendingoperationsforreplication_count, azure_pendingoperationsforreplication_maximum, azure_pendingoperationsforreplication_minimum, azure_pendingoperationsforreplication_total</td>
    <td>Count</td>
    <td>The count of pending operations for replication, please note, this metric is in preview and is subject to change before becoming generally available</td>
  </tr>
</table>
