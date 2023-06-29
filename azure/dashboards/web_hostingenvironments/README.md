---
title: Azure Microsoft.Web/hostingEnvironments metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Web/hostingEnvironments metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Web/hostingEnvironments
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Web/hostingEnvironments, **PUT DESCRIPTION HERE**. 

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
    <td>azure_activerequests_average, azure_activerequests_count, azure_activerequests_maximum, azure_activerequests_minimum, azure_activerequests_total</td>
    <td>Count</td>
    <td>Number of requests being actively handled by the App Service Environment at any given time</td>
  </tr>
  <tr>
    <td>azure_averageresponsetime_average, azure_averageresponsetime_count, azure_averageresponsetime_maximum, azure_averageresponsetime_minimum, azure_averageresponsetime_total</td>
    <td>Seconds</td>
    <td>Average time taken for the ASE to serve requests</td>
  </tr>
  <tr>
    <td>azure_bytesreceived_average, azure_bytesreceived_count, azure_bytesreceived_maximum, azure_bytesreceived_minimum, azure_bytesreceived_total</td>
    <td>Bytes</td>
    <td>Incoming bandwidth used across all front end instances</td>
  </tr>
  <tr>
    <td>azure_bytessent_average, azure_bytessent_count, azure_bytessent_maximum, azure_bytessent_minimum, azure_bytessent_total</td>
    <td>Bytes</td>
    <td>Outgoing bandwidth used across all front end instances</td>
  </tr>
  <tr>
    <td>azure_cpupercentage_average, azure_cpupercentage_count, azure_cpupercentage_maximum, azure_cpupercentage_minimum, azure_cpupercentage_total</td>
    <td>Percent</td>
    <td>CPU used across all front end instances</td>
  </tr>
  <tr>
    <td>azure_diskqueuelength_average, azure_diskqueuelength_count, azure_diskqueuelength_maximum, azure_diskqueuelength_minimum, azure_diskqueuelength_total</td>
    <td>Count</td>
    <td>Number of both read and write requests that were queued on storage</td>
  </tr>
  <tr>
    <td>azure_http101_average, azure_http101_count, azure_http101_maximum, azure_http101_minimum, azure_http101_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP 101 status code</td>
  </tr>
  <tr>
    <td>azure_http2xx_average, azure_http2xx_count, azure_http2xx_maximum, azure_http2xx_minimum, azure_http2xx_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP status code ≥ 200 but < 300</td>
  </tr>
  <tr>
    <td>azure_http3xx_average, azure_http3xx_count, azure_http3xx_maximum, azure_http3xx_minimum, azure_http3xx_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP status code ≥ 300 but < 400</td>
  </tr>
  <tr>
    <td>azure_http401_average, azure_http401_count, azure_http401_maximum, azure_http401_minimum, azure_http401_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP 401 status code</td>
  </tr>
  <tr>
    <td>azure_http403_average, azure_http403_count, azure_http403_maximum, azure_http403_minimum, azure_http403_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP 403 status code</td>
  </tr>
  <tr>
    <td>azure_http404_average, azure_http404_count, azure_http404_maximum, azure_http404_minimum, azure_http404_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP 404 status code</td>
  </tr>
  <tr>
    <td>azure_http406_average, azure_http406_count, azure_http406_maximum, azure_http406_minimum, azure_http406_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP 406 status code</td>
  </tr>
  <tr>
    <td>azure_http4xx_average, azure_http4xx_count, azure_http4xx_maximum, azure_http4xx_minimum, azure_http4xx_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP status code ≥ 400 but < 500</td>
  </tr>
  <tr>
    <td>azure_http5xx_average, azure_http5xx_count, azure_http5xx_maximum, azure_http5xx_minimum, azure_http5xx_total</td>
    <td>Count</td>
    <td>Number of requests resulting in an HTTP status code ≥ 500 but < 600</td>
  </tr>
  <tr>
    <td>azure_httpqueuelength_average, azure_httpqueuelength_count, azure_httpqueuelength_maximum, azure_httpqueuelength_minimum, azure_httpqueuelength_total</td>
    <td>Count</td>
    <td>Number of HTTP requests that had to sit on the queue before being fulfilled</td>
  </tr>
  <tr>
    <td>azure_httpresponsetime_average, azure_httpresponsetime_count, azure_httpresponsetime_maximum, azure_httpresponsetime_minimum, azure_httpresponsetime_total</td>
    <td>Seconds</td>
    <td>Time taken for the ASE to serve requests</td>
  </tr>
  <tr>
    <td>azure_largeappserviceplaninstances_average, azure_largeappserviceplaninstances_count, azure_largeappserviceplaninstances_maximum, azure_largeappserviceplaninstances_minimum, azure_largeappserviceplaninstances_total</td>
    <td>Count</td>
    <td>Number of large App Service Plan worker instances</td>
  </tr>
  <tr>
    <td>azure_mediumappserviceplaninstances_average, azure_mediumappserviceplaninstances_count, azure_mediumappserviceplaninstances_maximum, azure_mediumappserviceplaninstances_minimum, azure_mediumappserviceplaninstances_total</td>
    <td>Count</td>
    <td>Number of medium App Service Plan worker instances</td>
  </tr>
  <tr>
    <td>azure_memorypercentage_average, azure_memorypercentage_count, azure_memorypercentage_maximum, azure_memorypercentage_minimum, azure_memorypercentage_total</td>
    <td>Percent</td>
    <td>Memory used across all front end instances</td>
  </tr>
  <tr>
    <td>azure_requests_average, azure_requests_count, azure_requests_maximum, azure_requests_minimum, azure_requests_total</td>
    <td>Count</td>
    <td>Number of web requests served</td>
  </tr>
  <tr>
    <td>azure_smallappserviceplaninstances_average, azure_smallappserviceplaninstances_count, azure_smallappserviceplaninstances_maximum, azure_smallappserviceplaninstances_minimum, azure_smallappserviceplaninstances_total</td>
    <td>Count</td>
    <td>Number of small App Service Plan worker instances</td>
  </tr>
  <tr>
    <td>azure_totalfrontends_average, azure_totalfrontends_count, azure_totalfrontends_maximum, azure_totalfrontends_minimum, azure_totalfrontends_total</td>
    <td>Count</td>
    <td>Number of front end instances</td>
  </tr>
</table>
