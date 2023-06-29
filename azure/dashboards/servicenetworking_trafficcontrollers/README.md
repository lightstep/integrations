---
title: Azure Microsoft.ServiceNetworking/trafficControllers metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ServiceNetworking/trafficControllers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ServiceNetworking/trafficControllers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ServiceNetworking/trafficControllers, **PUT DESCRIPTION HERE**. 

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
    <td>azure_backendconnectiontimeouts_average, azure_backendconnectiontimeouts_count, azure_backendconnectiontimeouts_maximum, azure_backendconnectiontimeouts_minimum, azure_backendconnectiontimeouts_total</td>
    <td>Count</td>
    <td>Count of requests that timed out waiting for a response from the backend target (includes all retry requests initiated from Traffic Controller to the backend target)</td>
  </tr>
  <tr>
    <td>azure_backendhealthytargets_average, azure_backendhealthytargets_count, azure_backendhealthytargets_maximum, azure_backendhealthytargets_minimum, azure_backendhealthytargets_total</td>
    <td>Count</td>
    <td>Count of healthy backend targets</td>
  </tr>
  <tr>
    <td>azure_backendhttpresponsestatus_average, azure_backendhttpresponsestatus_count, azure_backendhttpresponsestatus_maximum, azure_backendhttpresponsestatus_minimum, azure_backendhttpresponsestatus_total</td>
    <td>Count</td>
    <td>HTTP response status returned by the backend target to Traffic Controller</td>
  </tr>
  <tr>
    <td>azure_clientconnectionidletimeouts_average, azure_clientconnectionidletimeouts_count, azure_clientconnectionidletimeouts_maximum, azure_clientconnectionidletimeouts_minimum, azure_clientconnectionidletimeouts_total</td>
    <td>Count</td>
    <td>Count of connections closed, between client and Traffic Controller frontend, due to exceeding idle timeout</td>
  </tr>
  <tr>
    <td>azure_connectiontimeouts_average, azure_connectiontimeouts_count, azure_connectiontimeouts_maximum, azure_connectiontimeouts_minimum, azure_connectiontimeouts_total</td>
    <td>Count</td>
    <td>Count of connections closed due to timeout between clients and Traffic Controller</td>
  </tr>
  <tr>
    <td>azure_httpresponsestatus_average, azure_httpresponsestatus_count, azure_httpresponsestatus_maximum, azure_httpresponsestatus_minimum, azure_httpresponsestatus_total</td>
    <td>Count</td>
    <td>HTTP response status returned by Traffic Controller</td>
  </tr>
  <tr>
    <td>azure_totalrequests_average, azure_totalrequests_count, azure_totalrequests_maximum, azure_totalrequests_minimum, azure_totalrequests_total</td>
    <td>Count</td>
    <td>Count of requests Traffic Controller has served</td>
  </tr>
</table>
