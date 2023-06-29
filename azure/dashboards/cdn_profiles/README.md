---
title: Azure Microsoft.Cdn/profiles metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Cdn/profiles metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Cdn/profiles
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Cdn/profiles, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bytehitratio_average, azure_bytehitratio_count, azure_bytehitratio_maximum, azure_bytehitratio_minimum, azure_bytehitratio_total</td>
    <td>Percent</td>
    <td>This is the ratio of the total bytes served from the cache compared to the total response bytes</td>
  </tr>
  <tr>
    <td>azure_originhealthpercentage_average, azure_originhealthpercentage_count, azure_originhealthpercentage_maximum, azure_originhealthpercentage_minimum, azure_originhealthpercentage_total</td>
    <td>Percent</td>
    <td>The percentage of successful health probes from AFDX to backends.</td>
  </tr>
  <tr>
    <td>azure_originlatency_average, azure_originlatency_count, azure_originlatency_maximum, azure_originlatency_minimum, azure_originlatency_total</td>
    <td>MilliSeconds</td>
    <td>The time calculated from when the request was sent by AFDX edge to the backend until AFDX received the last response byte from the backend.</td>
  </tr>
  <tr>
    <td>azure_originrequestcount_average, azure_originrequestcount_count, azure_originrequestcount_maximum, azure_originrequestcount_minimum, azure_originrequestcount_total</td>
    <td>Count</td>
    <td>The number of requests sent from AFDX to origin.</td>
  </tr>
  <tr>
    <td>azure_percentage4xx_average, azure_percentage4xx_count, azure_percentage4xx_maximum, azure_percentage4xx_minimum, azure_percentage4xx_total</td>
    <td>Percent</td>
    <td>The percentage of all the client requests for which the response status code is 4XX</td>
  </tr>
  <tr>
    <td>azure_percentage5xx_average, azure_percentage5xx_count, azure_percentage5xx_maximum, azure_percentage5xx_minimum, azure_percentage5xx_total</td>
    <td>Percent</td>
    <td>The percentage of all the client requests for which the response status code is 5XX</td>
  </tr>
  <tr>
    <td>azure_requestcount_average, azure_requestcount_count, azure_requestcount_maximum, azure_requestcount_minimum, azure_requestcount_total</td>
    <td>Count</td>
    <td>The number of client requests served by the HTTP/S proxy</td>
  </tr>
  <tr>
    <td>azure_requestsize_average, azure_requestsize_count, azure_requestsize_maximum, azure_requestsize_minimum, azure_requestsize_total</td>
    <td>Bytes</td>
    <td>The number of bytes sent as requests from clients to AFDX.</td>
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
