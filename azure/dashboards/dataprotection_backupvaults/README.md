---
title: Azure Microsoft.DataProtection/BackupVaults metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DataProtection/BackupVaults metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DataProtection/BackupVaults
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DataProtection/BackupVaults, **PUT DESCRIPTION HERE**. 

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
    <td>azure_backuphealthevent_average, azure_backuphealthevent_count, azure_backuphealthevent_maximum, azure_backuphealthevent_minimum, azure_backuphealthevent_total</td>
    <td>Count</td>
    <td>The count of health events pertaining to backup job health</td>
  </tr>
  <tr>
    <td>azure_restorehealthevent_average, azure_restorehealthevent_count, azure_restorehealthevent_maximum, azure_restorehealthevent_minimum, azure_restorehealthevent_total</td>
    <td>Count</td>
    <td>The count of health events pertaining to restore job health</td>
  </tr>
</table>
