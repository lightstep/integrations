---
title: Azure Microsoft.NetworkAnalytics/DataConnectors metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.NetworkAnalytics/DataConnectors metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.NetworkAnalytics/DataConnectors
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.NetworkAnalytics/DataConnectors, **PUT DESCRIPTION HERE**. 

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
    <td>azure_dataingested_average, azure_dataingested_count, azure_dataingested_maximum, azure_dataingested_minimum, azure_dataingested_total</td>
    <td>Bytes</td>
    <td>The volume of data ingested by the pipeline (bytes).</td>
  </tr>
  <tr>
    <td>azure_malformeddata_average, azure_malformeddata_count, azure_malformeddata_maximum, azure_malformeddata_minimum, azure_malformeddata_total</td>
    <td>Count</td>
    <td>The number of files unable to be processed by the pipeline.</td>
  </tr>
  <tr>
    <td>azure_malformedrecords_average, azure_malformedrecords_count, azure_malformedrecords_maximum, azure_malformedrecords_minimum, azure_malformedrecords_total</td>
    <td>Count</td>
    <td>The number of records unable to be processed by the pipeline.</td>
  </tr>
  <tr>
    <td>azure_processedfilecount_average, azure_processedfilecount_count, azure_processedfilecount_maximum, azure_processedfilecount_minimum, azure_processedfilecount_total</td>
    <td>Count</td>
    <td>The number of files processed by the data connector.</td>
  </tr>
  <tr>
    <td>azure_running_average, azure_running_count, azure_running_maximum, azure_running_minimum, azure_running_total</td>
    <td>Unspecified</td>
    <td>Values greater than 0 indicate that the pipeline is ready to process data.</td>
  </tr>
</table>
