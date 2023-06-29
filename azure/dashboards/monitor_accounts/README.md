---
title: Azure Microsoft.Monitor/accounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Monitor/accounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Monitor/accounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Monitor/accounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_activetimeseries_average, azure_activetimeseries_count, azure_activetimeseries_maximum, azure_activetimeseries_minimum, azure_activetimeseries_total</td>
    <td>Count</td>
    <td>The number of unique time series recently ingested into the account over the previous 12 hours</td>
  </tr>
  <tr>
    <td>azure_activetimeserieslimit_average, azure_activetimeserieslimit_count, azure_activetimeserieslimit_maximum, azure_activetimeserieslimit_minimum, azure_activetimeserieslimit_total</td>
    <td>Count</td>
    <td>The limit on the number of unique time series which can be actively ingested into the account</td>
  </tr>
  <tr>
    <td>azure_activetimeseriespercentutilization_average, azure_activetimeseriespercentutilization_count, azure_activetimeseriespercentutilization_maximum, azure_activetimeseriespercentutilization_minimum, azure_activetimeseriespercentutilization_total</td>
    <td>Percent</td>
    <td>The percentage of current active time series account limit being utilized</td>
  </tr>
  <tr>
    <td>azure_eventsperminuteingested_average, azure_eventsperminuteingested_count, azure_eventsperminuteingested_maximum, azure_eventsperminuteingested_minimum, azure_eventsperminuteingested_total</td>
    <td>Count</td>
    <td>The number of events per minute recently received</td>
  </tr>
  <tr>
    <td>azure_eventsperminuteingestedlimit_average, azure_eventsperminuteingestedlimit_count, azure_eventsperminuteingestedlimit_maximum, azure_eventsperminuteingestedlimit_minimum, azure_eventsperminuteingestedlimit_total</td>
    <td>Count</td>
    <td>The maximum number of events per minute which can be received before events become throttled</td>
  </tr>
  <tr>
    <td>azure_eventsperminuteingestedpercentutilization_average, azure_eventsperminuteingestedpercentutilization_count, azure_eventsperminuteingestedpercentutilization_maximum, azure_eventsperminuteingestedpercentutilization_minimum, azure_eventsperminuteingestedpercentutilization_total</td>
    <td>Percent</td>
    <td>The percentage of the current metric ingestion rate limit being utilized</td>
  </tr>
  <tr>
    <td>azure_simplesamplesstored_average, azure_simplesamplesstored_count, azure_simplesamplesstored_maximum, azure_simplesamplesstored_minimum, azure_simplesamplesstored_total</td>
    <td>Count</td>
    <td>The total number of samples stored for simple sampling types (like sum, count). For Prometheus this is equivalent to the number of samples scraped and ingested.</td>
  </tr>
</table>
