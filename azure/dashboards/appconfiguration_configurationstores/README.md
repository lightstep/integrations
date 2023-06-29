---
title: Azure Microsoft.AppConfiguration/configurationStores metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.AppConfiguration/configurationStores metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.AppConfiguration/configurationStores
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.AppConfiguration/configurationStores, **PUT DESCRIPTION HERE**. 

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
    <td>azure_dailystorageusage_average, azure_dailystorageusage_count, azure_dailystorageusage_maximum, azure_dailystorageusage_minimum, azure_dailystorageusage_total</td>
    <td>Percent</td>
    <td>Total storage usage of the store in percentage. Updated at minimum every 24 hours.</td>
  </tr>
  <tr>
    <td>azure_httpincomingrequestcount_average, azure_httpincomingrequestcount_count, azure_httpincomingrequestcount_maximum, azure_httpincomingrequestcount_minimum, azure_httpincomingrequestcount_total</td>
    <td>Count</td>
    <td>Total number of incoming http requests.</td>
  </tr>
  <tr>
    <td>azure_httpincomingrequestduration_average, azure_httpincomingrequestduration_count, azure_httpincomingrequestduration_maximum, azure_httpincomingrequestduration_minimum, azure_httpincomingrequestduration_total</td>
    <td>Count</td>
    <td>Latency on an http request.</td>
  </tr>
  <tr>
    <td>azure_throttledhttprequestcount_average, azure_throttledhttprequestcount_count, azure_throttledhttprequestcount_maximum, azure_throttledhttprequestcount_minimum, azure_throttledhttprequestcount_total</td>
    <td>Count</td>
    <td>Throttled http requests.</td>
  </tr>
</table>
