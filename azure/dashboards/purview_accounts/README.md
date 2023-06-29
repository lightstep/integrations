---
title: Azure microsoft.purview/accounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.purview/accounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.purview/accounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.purview/accounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_datamapcapacityunits_average, azure_datamapcapacityunits_count, azure_datamapcapacityunits_maximum, azure_datamapcapacityunits_minimum, azure_datamapcapacityunits_total</td>
    <td>Count</td>
    <td>Indicates Data Map Capacity Units.</td>
  </tr>
  <tr>
    <td>azure_datamapstoragesize_average, azure_datamapstoragesize_count, azure_datamapstoragesize_maximum, azure_datamapstoragesize_minimum, azure_datamapstoragesize_total</td>
    <td>Bytes</td>
    <td>Indicates the data map storage size.</td>
  </tr>
  <tr>
    <td>azure_scancancelled_average, azure_scancancelled_count, azure_scancancelled_maximum, azure_scancancelled_minimum, azure_scancancelled_total</td>
    <td>Count</td>
    <td>Indicates the number of scans cancelled.</td>
  </tr>
  <tr>
    <td>azure_scancompleted_average, azure_scancompleted_count, azure_scancompleted_maximum, azure_scancompleted_minimum, azure_scancompleted_total</td>
    <td>Count</td>
    <td>Indicates the number of scans completed successfully.</td>
  </tr>
  <tr>
    <td>azure_scanfailed_average, azure_scanfailed_count, azure_scanfailed_maximum, azure_scanfailed_minimum, azure_scanfailed_total</td>
    <td>Count</td>
    <td>Indicates the number of scans failed.</td>
  </tr>
  <tr>
    <td>azure_scantimetaken_average, azure_scantimetaken_count, azure_scantimetaken_maximum, azure_scantimetaken_minimum, azure_scantimetaken_total</td>
    <td>Seconds</td>
    <td>Indicates the total scan time in seconds.</td>
  </tr>
</table>
