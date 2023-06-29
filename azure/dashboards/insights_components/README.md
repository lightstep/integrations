---
title: Azure microsoft.insights/components metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.insights/components metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.insights/components
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.insights/components, **PUT DESCRIPTION HERE**. 

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
    <td>azure_availabilityresults/availabilitypercentage_average, azure_availabilityresults/availabilitypercentage_count, azure_availabilityresults/availabilitypercentage_maximum, azure_availabilityresults/availabilitypercentage_minimum, azure_availabilityresults/availabilitypercentage_total</td>
    <td>Percent</td>
    <td>Percentage of successfully completed availability tests</td>
  </tr>
  <tr>
    <td>azure_availabilityresults/count_average, azure_availabilityresults/count_count, azure_availabilityresults/count_maximum, azure_availabilityresults/count_minimum, azure_availabilityresults/count_total</td>
    <td>Count</td>
    <td>Count of availability tests</td>
  </tr>
  <tr>
    <td>azure_availabilityresults/duration_average, azure_availabilityresults/duration_count, azure_availabilityresults/duration_maximum, azure_availabilityresults/duration_minimum, azure_availabilityresults/duration_total</td>
    <td>MilliSeconds</td>
    <td>Availability test duration</td>
  </tr>
  <tr>
    <td>azure_browsertimings/networkduration_average, azure_browsertimings/networkduration_count, azure_browsertimings/networkduration_maximum, azure_browsertimings/networkduration_minimum, azure_browsertimings/networkduration_total</td>
    <td>MilliSeconds</td>
    <td>Time between user request and network connection. Includes DNS lookup and transport connection.</td>
  </tr>
  <tr>
    <td>azure_browsertimings/processingduration_average, azure_browsertimings/processingduration_count, azure_browsertimings/processingduration_maximum, azure_browsertimings/processingduration_minimum, azure_browsertimings/processingduration_total</td>
    <td>MilliSeconds</td>
    <td>Time between receiving the last byte of a document until the DOM is loaded. Async requests may still be processing.</td>
  </tr>
  <tr>
    <td>azure_browsertimings/receiveduration_average, azure_browsertimings/receiveduration_count, azure_browsertimings/receiveduration_maximum, azure_browsertimings/receiveduration_minimum, azure_browsertimings/receiveduration_total</td>
    <td>MilliSeconds</td>
    <td>Time between the first and last bytes, or until disconnection.</td>
  </tr>
  <tr>
    <td>azure_browsertimings/sendduration_average, azure_browsertimings/sendduration_count, azure_browsertimings/sendduration_maximum, azure_browsertimings/sendduration_minimum, azure_browsertimings/sendduration_total</td>
    <td>MilliSeconds</td>
    <td>Time between network connection and receiving the first byte.</td>
  </tr>
  <tr>
    <td>azure_browsertimings/totalduration_average, azure_browsertimings/totalduration_count, azure_browsertimings/totalduration_maximum, azure_browsertimings/totalduration_minimum, azure_browsertimings/totalduration_total</td>
    <td>MilliSeconds</td>
    <td>Time from user request until DOM, stylesheets, scripts and images are loaded.</td>
  </tr>
  <tr>
    <td>azure_dependencies/count_average, azure_dependencies/count_count, azure_dependencies/count_maximum, azure_dependencies/count_minimum, azure_dependencies/count_total</td>
    <td>Count</td>
    <td>Count of calls made by the application to external resources.</td>
  </tr>
  <tr>
    <td>azure_dependencies/duration_average, azure_dependencies/duration_count, azure_dependencies/duration_maximum, azure_dependencies/duration_minimum, azure_dependencies/duration_total</td>
    <td>MilliSeconds</td>
    <td>Duration of calls made by the application to external resources.</td>
  </tr>
  <tr>
    <td>azure_dependencies/failed_average, azure_dependencies/failed_count, azure_dependencies/failed_maximum, azure_dependencies/failed_minimum, azure_dependencies/failed_total</td>
    <td>Count</td>
    <td>Count of failed dependency calls made by the application to external resources.</td>
  </tr>
  <tr>
    <td>azure_exceptions/browser_average, azure_exceptions/browser_count, azure_exceptions/browser_maximum, azure_exceptions/browser_minimum, azure_exceptions/browser_total</td>
    <td>Count</td>
    <td>Count of uncaught exceptions thrown in the browser.</td>
  </tr>
  <tr>
    <td>azure_exceptions/count_average, azure_exceptions/count_count, azure_exceptions/count_maximum, azure_exceptions/count_minimum, azure_exceptions/count_total</td>
    <td>Count</td>
    <td>Combined count of all uncaught exceptions.</td>
  </tr>
  <tr>
    <td>azure_exceptions/server_average, azure_exceptions/server_count, azure_exceptions/server_maximum, azure_exceptions/server_minimum, azure_exceptions/server_total</td>
    <td>Count</td>
    <td>Count of uncaught exceptions thrown in the server application.</td>
  </tr>
  <tr>
    <td>azure_pageviews/count_average, azure_pageviews/count_count, azure_pageviews/count_maximum, azure_pageviews/count_minimum, azure_pageviews/count_total</td>
    <td>Count</td>
    <td>Count of page views.</td>
  </tr>
  <tr>
    <td>azure_pageviews/duration_average, azure_pageviews/duration_count, azure_pageviews/duration_maximum, azure_pageviews/duration_minimum, azure_pageviews/duration_total</td>
    <td>MilliSeconds</td>
    <td>Page view load time</td>
  </tr>
  <tr>
    <td>azure_performancecounters/exceptionspersecond_average, azure_performancecounters/exceptionspersecond_count, azure_performancecounters/exceptionspersecond_maximum, azure_performancecounters/exceptionspersecond_minimum, azure_performancecounters/exceptionspersecond_total</td>
    <td>CountPerSecond</td>
    <td>Count of handled and unhandled exceptions reported to windows, including .NET exceptions and unmanaged exceptions that are converted into .NET exceptions.</td>
  </tr>
  <tr>
    <td>azure_performancecounters/memoryavailablebytes_average, azure_performancecounters/memoryavailablebytes_count, azure_performancecounters/memoryavailablebytes_maximum, azure_performancecounters/memoryavailablebytes_minimum, azure_performancecounters/memoryavailablebytes_total</td>
    <td>Bytes</td>
    <td>Physical memory immediately available for allocation to a process or for system use.</td>
  </tr>
  <tr>
    <td>azure_performancecounters/processcpupercentage_average, azure_performancecounters/processcpupercentage_count, azure_performancecounters/processcpupercentage_maximum, azure_performancecounters/processcpupercentage_minimum, azure_performancecounters/processcpupercentage_total</td>
    <td>Percent</td>
    <td>The percentage of elapsed time that all process threads used the processor to execute instructions. This can vary between 0 to 100. This metric indicates the performance of w3wp process alone.</td>
  </tr>
  <tr>
    <td>azure_performancecounters/processiobytespersecond_average, azure_performancecounters/processiobytespersecond_count, azure_performancecounters/processiobytespersecond_maximum, azure_performancecounters/processiobytespersecond_minimum, azure_performancecounters/processiobytespersecond_total</td>
    <td>BytesPerSecond</td>
    <td>Total bytes per second read and written to files, network and devices.</td>
  </tr>
  <tr>
    <td>azure_performancecounters/processorcpupercentage_average, azure_performancecounters/processorcpupercentage_count, azure_performancecounters/processorcpupercentage_maximum, azure_performancecounters/processorcpupercentage_minimum, azure_performancecounters/processorcpupercentage_total</td>
    <td>Percent</td>
    <td>The percentage of time that the processor spends in non-idle threads.</td>
  </tr>
  <tr>
    <td>azure_performancecounters/processprivatebytes_average, azure_performancecounters/processprivatebytes_count, azure_performancecounters/processprivatebytes_maximum, azure_performancecounters/processprivatebytes_minimum, azure_performancecounters/processprivatebytes_total</td>
    <td>Bytes</td>
    <td>Memory exclusively assigned to the monitored application's processes.</td>
  </tr>
  <tr>
    <td>azure_performancecounters/requestexecutiontime_average, azure_performancecounters/requestexecutiontime_count, azure_performancecounters/requestexecutiontime_maximum, azure_performancecounters/requestexecutiontime_minimum, azure_performancecounters/requestexecutiontime_total</td>
    <td>MilliSeconds</td>
    <td>Execution time of the most recent request.</td>
  </tr>
  <tr>
    <td>azure_performancecounters/requestsinqueue_average, azure_performancecounters/requestsinqueue_count, azure_performancecounters/requestsinqueue_maximum, azure_performancecounters/requestsinqueue_minimum, azure_performancecounters/requestsinqueue_total</td>
    <td>Count</td>
    <td>Length of the application request queue.</td>
  </tr>
  <tr>
    <td>azure_performancecounters/requestspersecond_average, azure_performancecounters/requestspersecond_count, azure_performancecounters/requestspersecond_maximum, azure_performancecounters/requestspersecond_minimum, azure_performancecounters/requestspersecond_total</td>
    <td>CountPerSecond</td>
    <td>Rate of all requests to the application per second from ASP.NET.</td>
  </tr>
  <tr>
    <td>azure_requests/count_average, azure_requests/count_count, azure_requests/count_maximum, azure_requests/count_minimum, azure_requests/count_total</td>
    <td>Count</td>
    <td>Count of HTTP requests completed.</td>
  </tr>
  <tr>
    <td>azure_requests/duration_average, azure_requests/duration_count, azure_requests/duration_maximum, azure_requests/duration_minimum, azure_requests/duration_total</td>
    <td>MilliSeconds</td>
    <td>Time between receiving an HTTP request and finishing sending the response.</td>
  </tr>
  <tr>
    <td>azure_requests/failed_average, azure_requests/failed_count, azure_requests/failed_maximum, azure_requests/failed_minimum, azure_requests/failed_total</td>
    <td>Count</td>
    <td>Count of HTTP requests marked as failed. In most cases these are requests with a response code >= 400 and not equal to 401.</td>
  </tr>
  <tr>
    <td>azure_requests/rate_average, azure_requests/rate_count, azure_requests/rate_maximum, azure_requests/rate_minimum, azure_requests/rate_total</td>
    <td>CountPerSecond</td>
    <td>Rate of server requests per second</td>
  </tr>
  <tr>
    <td>azure_traces/count_average, azure_traces/count_count, azure_traces/count_maximum, azure_traces/count_minimum, azure_traces/count_total</td>
    <td>Count</td>
    <td>Trace document count</td>
  </tr>
</table>
