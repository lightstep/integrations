---
title: Azure Microsoft.DataLakeStore/accounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DataLakeStore/accounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DataLakeStore/accounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DataLakeStore/accounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_dataread_average, azure_dataread_count, azure_dataread_maximum, azure_dataread_minimum, azure_dataread_total</td>
    <td>Bytes</td>
    <td>Total amount of data read from the account.</td>
  </tr>
  <tr>
    <td>azure_datawritten_average, azure_datawritten_count, azure_datawritten_maximum, azure_datawritten_minimum, azure_datawritten_total</td>
    <td>Bytes</td>
    <td>Total amount of data written to the account.</td>
  </tr>
  <tr>
    <td>azure_readrequests_average, azure_readrequests_count, azure_readrequests_maximum, azure_readrequests_minimum, azure_readrequests_total</td>
    <td>Count</td>
    <td>Count of data read requests to the account.</td>
  </tr>
  <tr>
    <td>azure_totalstorage_average, azure_totalstorage_count, azure_totalstorage_maximum, azure_totalstorage_minimum, azure_totalstorage_total</td>
    <td>Bytes</td>
    <td>Total amount of data stored in the account.</td>
  </tr>
  <tr>
    <td>azure_writerequests_average, azure_writerequests_count, azure_writerequests_maximum, azure_writerequests_minimum, azure_writerequests_total</td>
    <td>Count</td>
    <td>Count of data write requests to the account.</td>
  </tr>
</table>
