---
title: Azure Microsoft.Network/frontdoors metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/frontdoors metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/frontdoors
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/frontdoors, **PUT DESCRIPTION HERE**. 

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
    <td>azure_backendhealthpercentage_average, azure_backendhealthpercentage_count, azure_backendhealthpercentage_maximum, azure_backendhealthpercentage_minimum, azure_backendhealthpercentage_total</td>
    <td>Percent</td>
    <td>The percentage of successful health probes from the HTTP/S proxy to backends</td>
  </tr>
  <tr>
    <td>azure_backendrequestcount_average, azure_backendrequestcount_count, azure_backendrequestcount_maximum, azure_backendrequestcount_minimum, azure_backendrequestcount_total</td>
    <td>Count</td>
    <td>The number of requests sent from the HTTP/S proxy to backends</td>
  </tr>
  <tr>
    <td>azure_backendrequestlatency_average, azure_backendrequestlatency_count, azure_backendrequestlatency_maximum, azure_backendrequestlatency_minimum, azure_backendrequestlatency_total</td>
    <td>MilliSeconds</td>
    <td>The time calculated from when the request was sent by the HTTP/S proxy to the backend until the HTTP/S proxy received the last response byte from the backend</td>
  </tr>
  <tr>
    <td>azure_billableresponsesize_average, azure_billableresponsesize_count, azure_billableresponsesize_maximum, azure_billableresponsesize_minimum, azure_billableresponsesize_total</td>
    <td>Bytes</td>
    <td>The number of billable bytes (minimum 2KB per request) sent as responses from HTTP/S proxy to clients.</td>
  </tr>
  <tr>
    <td>azure_requestcount_average, azure_requestcount_count, azure_requestcount_maximum, azure_requestcount_minimum, azure_requestcount_total</td>
    <td>Count</td>
    <td>The number of client requests served by the HTTP/S proxy</td>
  </tr>
  <tr>
    <td>azure_requestsize_average, azure_requestsize_count, azure_requestsize_maximum, azure_requestsize_minimum, azure_requestsize_total</td>
    <td>Bytes</td>
    <td>The number of bytes sent as requests from clients to the HTTP/S proxy</td>
  </tr>
  <tr>
    <td>azure_responsesize_average, azure_responsesize_count, azure_responsesize_maximum, azure_responsesize_minimum, azure_responsesize_total</td>
    <td>Bytes</td>
    <td>The number of bytes sent as responses from HTTP/S proxy to clients</td>
  </tr>
  <tr>
    <td>azure_totallatency_average, azure_totallatency_count, azure_totallatency_maximum, azure_totallatency_minimum, azure_totallatency_total</td>
    <td>MilliSeconds</td>
    <td>The time calculated from when the client request was received by the HTTP/S proxy until the client acknowledged the last response byte from the HTTP/S proxy</td>
  </tr>
  <tr>
    <td>azure_webapplicationfirewallrequestcount_average, azure_webapplicationfirewallrequestcount_count, azure_webapplicationfirewallrequestcount_maximum, azure_webapplicationfirewallrequestcount_minimum, azure_webapplicationfirewallrequestcount_total</td>
    <td>Count</td>
    <td>The number of client requests processed by the Web Application Firewall</td>
  </tr>
</table>
