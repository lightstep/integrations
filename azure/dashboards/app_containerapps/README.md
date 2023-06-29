---
title: Azure Microsoft.App/containerapps metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.App/containerapps metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.App/containerapps
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.App/containerapps, **PUT DESCRIPTION HERE**. 

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
    <td>azure_coresquotaused_average, azure_coresquotaused_count, azure_coresquotaused_maximum, azure_coresquotaused_minimum, azure_coresquotaused_total</td>
    <td>Count</td>
    <td>Number of reserved cores for container app revisions</td>
  </tr>
  <tr>
    <td>azure_replicas_average, azure_replicas_count, azure_replicas_maximum, azure_replicas_minimum, azure_replicas_total</td>
    <td>Count</td>
    <td>Number of replicas count of container app</td>
  </tr>
  <tr>
    <td>azure_requests_average, azure_requests_count, azure_requests_maximum, azure_requests_minimum, azure_requests_total</td>
    <td>Count</td>
    <td>Requests processed</td>
  </tr>
  <tr>
    <td>azure_restartcount_average, azure_restartcount_count, azure_restartcount_maximum, azure_restartcount_minimum, azure_restartcount_total</td>
    <td>Count</td>
    <td>Restart count of container app replicas</td>
  </tr>
  <tr>
    <td>azure_rxbytes_average, azure_rxbytes_count, azure_rxbytes_maximum, azure_rxbytes_minimum, azure_rxbytes_total</td>
    <td>Bytes</td>
    <td>Network received bytes</td>
  </tr>
  <tr>
    <td>azure_totalcoresquotaused_average, azure_totalcoresquotaused_count, azure_totalcoresquotaused_maximum, azure_totalcoresquotaused_minimum, azure_totalcoresquotaused_total</td>
    <td>Count</td>
    <td>Number of total reserved cores for the container app</td>
  </tr>
  <tr>
    <td>azure_txbytes_average, azure_txbytes_count, azure_txbytes_maximum, azure_txbytes_minimum, azure_txbytes_total</td>
    <td>Bytes</td>
    <td>Network transmitted bytes</td>
  </tr>
  <tr>
    <td>azure_usagenanocores_average, azure_usagenanocores_count, azure_usagenanocores_maximum, azure_usagenanocores_minimum, azure_usagenanocores_total</td>
    <td>NanoCores</td>
    <td>CPU consumed by the container app, in nano cores. 1,000,000,000 nano cores = 1 core</td>
  </tr>
  <tr>
    <td>azure_workingsetbytes_average, azure_workingsetbytes_count, azure_workingsetbytes_maximum, azure_workingsetbytes_minimum, azure_workingsetbytes_total</td>
    <td>Bytes</td>
    <td>Container App working set memory used in bytes.</td>
  </tr>
</table>
