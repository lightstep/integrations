---
title: Azure microsoft.avs/privateClouds metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.avs/privateClouds metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.avs/privateClouds
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.avs/privateClouds, **PUT DESCRIPTION HERE**. 

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
    <td>azure_capacitylatest_average, azure_capacitylatest_count, azure_capacitylatest_maximum, azure_capacitylatest_minimum, azure_capacitylatest_total</td>
    <td>Bytes</td>
    <td>The total capacity of disk in the datastore</td>
  </tr>
  <tr>
    <td>azure_diskusedpercentage_average, azure_diskusedpercentage_count, azure_diskusedpercentage_maximum, azure_diskusedpercentage_minimum, azure_diskusedpercentage_total</td>
    <td>Percent</td>
    <td>Percent of available disk used in Datastore</td>
  </tr>
  <tr>
    <td>azure_effectivecpuaverage_average, azure_effectivecpuaverage_count, azure_effectivecpuaverage_maximum, azure_effectivecpuaverage_minimum, azure_effectivecpuaverage_total</td>
    <td>Percent</td>
    <td>Percentage of Used CPU resources in Cluster</td>
  </tr>
  <tr>
    <td>azure_effectivememaverage_average, azure_effectivememaverage_count, azure_effectivememaverage_maximum, azure_effectivememaverage_minimum, azure_effectivememaverage_total</td>
    <td>Bytes</td>
    <td>Total available amount of machine memory in cluster</td>
  </tr>
  <tr>
    <td>azure_overheadaverage_average, azure_overheadaverage_count, azure_overheadaverage_maximum, azure_overheadaverage_minimum, azure_overheadaverage_total</td>
    <td>Bytes</td>
    <td>Host physical memory consumed by the virtualization infrastructure</td>
  </tr>
  <tr>
    <td>azure_totalmbaverage_average, azure_totalmbaverage_count, azure_totalmbaverage_maximum, azure_totalmbaverage_minimum, azure_totalmbaverage_total</td>
    <td>Bytes</td>
    <td>Total memory in cluster</td>
  </tr>
  <tr>
    <td>azure_usageaverage_average, azure_usageaverage_count, azure_usageaverage_maximum, azure_usageaverage_minimum, azure_usageaverage_total</td>
    <td>Percent</td>
    <td>Memory usage as percentage of total configured or available memory</td>
  </tr>
  <tr>
    <td>azure_usedlatest_average, azure_usedlatest_count, azure_usedlatest_maximum, azure_usedlatest_minimum, azure_usedlatest_total</td>
    <td>Bytes</td>
    <td>The total amount of disk used in the datastore</td>
  </tr>
</table>
