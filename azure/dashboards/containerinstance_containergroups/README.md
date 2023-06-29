---
title: Azure Microsoft.ContainerInstance/containerGroups metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ContainerInstance/containerGroups metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ContainerInstance/containerGroups
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ContainerInstance/containerGroups, **PUT DESCRIPTION HERE**. 

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
    <td>azure_cpuusage_average, azure_cpuusage_count, azure_cpuusage_maximum, azure_cpuusage_minimum, azure_cpuusage_total</td>
    <td>Count</td>
    <td>CPU usage on all cores in millicores.</td>
  </tr>
  <tr>
    <td>azure_memoryusage_average, azure_memoryusage_count, azure_memoryusage_maximum, azure_memoryusage_minimum, azure_memoryusage_total</td>
    <td>Bytes</td>
    <td>Total memory usage in byte.</td>
  </tr>
  <tr>
    <td>azure_networkbytesreceivedpersecond_average, azure_networkbytesreceivedpersecond_count, azure_networkbytesreceivedpersecond_maximum, azure_networkbytesreceivedpersecond_minimum, azure_networkbytesreceivedpersecond_total</td>
    <td>Bytes</td>
    <td>The network bytes received per second.</td>
  </tr>
  <tr>
    <td>azure_networkbytestransmittedpersecond_average, azure_networkbytestransmittedpersecond_count, azure_networkbytestransmittedpersecond_maximum, azure_networkbytestransmittedpersecond_minimum, azure_networkbytestransmittedpersecond_total</td>
    <td>Bytes</td>
    <td>The network bytes transmitted per second.</td>
  </tr>
</table>
