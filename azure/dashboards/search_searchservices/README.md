---
title: Azure Microsoft.Search/searchServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Search/searchServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Search/searchServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Search/searchServices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_documentsprocessedcount_average, azure_documentsprocessedcount_count, azure_documentsprocessedcount_maximum, azure_documentsprocessedcount_minimum, azure_documentsprocessedcount_total</td>
    <td>Count</td>
    <td>Number of documents processed</td>
  </tr>
  <tr>
    <td>azure_searchlatency_average, azure_searchlatency_count, azure_searchlatency_maximum, azure_searchlatency_minimum, azure_searchlatency_total</td>
    <td>Seconds</td>
    <td>Average search latency for the search service</td>
  </tr>
  <tr>
    <td>azure_searchqueriespersecond_average, azure_searchqueriespersecond_count, azure_searchqueriespersecond_maximum, azure_searchqueriespersecond_minimum, azure_searchqueriespersecond_total</td>
    <td>CountPerSecond</td>
    <td>Search queries per second for the search service</td>
  </tr>
  <tr>
    <td>azure_skillexecutioncount_average, azure_skillexecutioncount_count, azure_skillexecutioncount_maximum, azure_skillexecutioncount_minimum, azure_skillexecutioncount_total</td>
    <td>Count</td>
    <td>Number of skill executions</td>
  </tr>
  <tr>
    <td>azure_throttledsearchqueriespercentage_average, azure_throttledsearchqueriespercentage_count, azure_throttledsearchqueriespercentage_maximum, azure_throttledsearchqueriespercentage_minimum, azure_throttledsearchqueriespercentage_total</td>
    <td>Percent</td>
    <td>Percentage of search queries that were throttled for the search service</td>
  </tr>
</table>
