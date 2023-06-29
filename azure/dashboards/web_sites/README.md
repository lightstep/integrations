---
title: Azure Microsoft.Web/sites metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Web/sites metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Web/sites
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Web/sites, **PUT DESCRIPTION HERE**. 

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
    <td>azure_appconnections_average, azure_appconnections_count, azure_appconnections_maximum, azure_appconnections_minimum, azure_appconnections_total</td>
    <td>Count</td>
    <td>The number of bound sockets existing in the sandbox (w3wp.exe and its child processes). A bound socket is created by calling bind()/connect() APIs and remains until said socket is closed with CloseHandle()/closesocket(). For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_averagememoryworkingset_average, azure_averagememoryworkingset_count, azure_averagememoryworkingset_maximum, azure_averagememoryworkingset_minimum, azure_averagememoryworkingset_total</td>
    <td>Bytes</td>
    <td>The average amount of memory used by the app, in megabytes (MiB). For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_averageresponsetime_average, azure_averageresponsetime_count, azure_averageresponsetime_maximum, azure_averageresponsetime_minimum, azure_averageresponsetime_total</td>
    <td>Seconds</td>
    <td>The average time taken for the app to serve requests, in seconds. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_bytesreceived_average, azure_bytesreceived_count, azure_bytesreceived_maximum, azure_bytesreceived_minimum, azure_bytesreceived_total</td>
    <td>Bytes</td>
    <td>The amount of incoming bandwidth consumed by the app, in MiB. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_bytessent_average, azure_bytessent_count, azure_bytessent_maximum, azure_bytessent_minimum, azure_bytessent_total</td>
    <td>Bytes</td>
    <td>The amount of outgoing bandwidth consumed by the app, in MiB. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_cputime_average, azure_cputime_count, azure_cputime_maximum, azure_cputime_minimum, azure_cputime_total</td>
    <td>Seconds</td>
    <td>The amount of CPU consumed by the app, in seconds. For more information about this metric. Please see https://aka.ms/website-monitor-cpu-time-vs-cpu-percentage (CPU time vs CPU percentage). For WebApps only.</td>
  </tr>
  <tr>
    <td>azure_currentassemblies_average, azure_currentassemblies_count, azure_currentassemblies_maximum, azure_currentassemblies_minimum, azure_currentassemblies_total</td>
    <td>Count</td>
    <td>The current number of Assemblies loaded across all AppDomains in this application. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_filesystemusage_average, azure_filesystemusage_count, azure_filesystemusage_maximum, azure_filesystemusage_minimum, azure_filesystemusage_total</td>
    <td>Bytes</td>
    <td>Percentage of filesystem quota consumed by the app. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_functionexecutioncount_average, azure_functionexecutioncount_count, azure_functionexecutioncount_maximum, azure_functionexecutioncount_minimum, azure_functionexecutioncount_total</td>
    <td>Count</td>
    <td>Function Execution Count. For FunctionApps only.</td>
  </tr>
  <tr>
    <td>azure_functionexecutionunits_average, azure_functionexecutionunits_count, azure_functionexecutionunits_maximum, azure_functionexecutionunits_minimum, azure_functionexecutionunits_total</td>
    <td>Count</td>
    <td>Function Execution Units. For FunctionApps only.</td>
  </tr>
  <tr>
    <td>azure_gen0collections_average, azure_gen0collections_count, azure_gen0collections_maximum, azure_gen0collections_minimum, azure_gen0collections_total</td>
    <td>Count</td>
    <td>The number of times the generation 0 objects are garbage collected since the start of the app process. Higher generation GCs include all lower generation GCs. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_gen1collections_average, azure_gen1collections_count, azure_gen1collections_maximum, azure_gen1collections_minimum, azure_gen1collections_total</td>
    <td>Count</td>
    <td>The number of times the generation 1 objects are garbage collected since the start of the app process. Higher generation GCs include all lower generation GCs. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_gen2collections_average, azure_gen2collections_count, azure_gen2collections_maximum, azure_gen2collections_minimum, azure_gen2collections_total</td>
    <td>Count</td>
    <td>The number of times the generation 2 objects are garbage collected since the start of the app process. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_handles_average, azure_handles_count, azure_handles_maximum, azure_handles_minimum, azure_handles_total</td>
    <td>Count</td>
    <td>The total number of handles currently open by the app process. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_healthcheckstatus_average, azure_healthcheckstatus_count, azure_healthcheckstatus_maximum, azure_healthcheckstatus_minimum, azure_healthcheckstatus_total</td>
    <td>Count</td>
    <td>Health check status. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http101_average, azure_http101_count, azure_http101_maximum, azure_http101_minimum, azure_http101_total</td>
    <td>Count</td>
    <td>The count of requests resulting in an HTTP status code 101. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http2xx_average, azure_http2xx_count, azure_http2xx_maximum, azure_http2xx_minimum, azure_http2xx_total</td>
    <td>Count</td>
    <td>The count of requests resulting in an HTTP status code >= 200 but < 300. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http3xx_average, azure_http3xx_count, azure_http3xx_maximum, azure_http3xx_minimum, azure_http3xx_total</td>
    <td>Count</td>
    <td>The count of requests resulting in an HTTP status code >= 300 but < 400. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http401_average, azure_http401_count, azure_http401_maximum, azure_http401_minimum, azure_http401_total</td>
    <td>Count</td>
    <td>The count of requests resulting in HTTP 401 status code. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http403_average, azure_http403_count, azure_http403_maximum, azure_http403_minimum, azure_http403_total</td>
    <td>Count</td>
    <td>The count of requests resulting in HTTP 403 status code. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http404_average, azure_http404_count, azure_http404_maximum, azure_http404_minimum, azure_http404_total</td>
    <td>Count</td>
    <td>The count of requests resulting in HTTP 404 status code. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http406_average, azure_http406_count, azure_http406_maximum, azure_http406_minimum, azure_http406_total</td>
    <td>Count</td>
    <td>The count of requests resulting in HTTP 406 status code. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http4xx_average, azure_http4xx_count, azure_http4xx_maximum, azure_http4xx_minimum, azure_http4xx_total</td>
    <td>Count</td>
    <td>The count of requests resulting in an HTTP status code >= 400 but < 500. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_http5xx_average, azure_http5xx_count, azure_http5xx_maximum, azure_http5xx_minimum, azure_http5xx_total</td>
    <td>Count</td>
    <td>The count of requests resulting in an HTTP status code >= 500 but < 600. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_httpresponsetime_average, azure_httpresponsetime_count, azure_httpresponsetime_maximum, azure_httpresponsetime_minimum, azure_httpresponsetime_total</td>
    <td>Seconds</td>
    <td>The time taken for the app to serve requests, in seconds. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_iootherbytespersecond_average, azure_iootherbytespersecond_count, azure_iootherbytespersecond_maximum, azure_iootherbytespersecond_minimum, azure_iootherbytespersecond_total</td>
    <td>BytesPerSecond</td>
    <td>The rate at which the app process is issuing bytes to I/O operations that don't involve data, such as control operations. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_iootheroperationspersecond_average, azure_iootheroperationspersecond_count, azure_iootheroperationspersecond_maximum, azure_iootheroperationspersecond_minimum, azure_iootheroperationspersecond_total</td>
    <td>BytesPerSecond</td>
    <td>The rate at which the app process is issuing I/O operations that aren't read or write operations. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_ioreadbytespersecond_average, azure_ioreadbytespersecond_count, azure_ioreadbytespersecond_maximum, azure_ioreadbytespersecond_minimum, azure_ioreadbytespersecond_total</td>
    <td>BytesPerSecond</td>
    <td>The rate at which the app process is reading bytes from I/O operations. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_ioreadoperationspersecond_average, azure_ioreadoperationspersecond_count, azure_ioreadoperationspersecond_maximum, azure_ioreadoperationspersecond_minimum, azure_ioreadoperationspersecond_total</td>
    <td>BytesPerSecond</td>
    <td>The rate at which the app process is issuing read I/O operations. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_iowritebytespersecond_average, azure_iowritebytespersecond_count, azure_iowritebytespersecond_maximum, azure_iowritebytespersecond_minimum, azure_iowritebytespersecond_total</td>
    <td>BytesPerSecond</td>
    <td>The rate at which the app process is writing bytes to I/O operations. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_iowriteoperationspersecond_average, azure_iowriteoperationspersecond_count, azure_iowriteoperationspersecond_maximum, azure_iowriteoperationspersecond_minimum, azure_iowriteoperationspersecond_total</td>
    <td>BytesPerSecond</td>
    <td>The rate at which the app process is issuing write I/O operations. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_memoryworkingset_average, azure_memoryworkingset_count, azure_memoryworkingset_maximum, azure_memoryworkingset_minimum, azure_memoryworkingset_total</td>
    <td>Bytes</td>
    <td>The current amount of memory used by the app, in MiB. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_privatebytes_average, azure_privatebytes_count, azure_privatebytes_maximum, azure_privatebytes_minimum, azure_privatebytes_total</td>
    <td>Bytes</td>
    <td>Private Bytes is the current size, in bytes, of memory that the app process has allocated that can't be shared with other processes. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_requests_average, azure_requests_count, azure_requests_maximum, azure_requests_minimum, azure_requests_total</td>
    <td>Count</td>
    <td>The total number of requests regardless of their resulting HTTP status code. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_requestsinapplicationqueue_average, azure_requestsinapplicationqueue_count, azure_requestsinapplicationqueue_maximum, azure_requestsinapplicationqueue_minimum, azure_requestsinapplicationqueue_total</td>
    <td>Count</td>
    <td>The number of requests in the application request queue. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_threads_average, azure_threads_count, azure_threads_maximum, azure_threads_minimum, azure_threads_total</td>
    <td>Count</td>
    <td>The number of threads currently active in the app process. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_totalappdomains_average, azure_totalappdomains_count, azure_totalappdomains_maximum, azure_totalappdomains_minimum, azure_totalappdomains_total</td>
    <td>Count</td>
    <td>The current number of AppDomains loaded in this application. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_totalappdomainsunloaded_average, azure_totalappdomainsunloaded_count, azure_totalappdomainsunloaded_maximum, azure_totalappdomainsunloaded_minimum, azure_totalappdomainsunloaded_total</td>
    <td>Count</td>
    <td>The total number of AppDomains unloaded since the start of the application. For WebApps and FunctionApps.</td>
  </tr>
  <tr>
    <td>azure_workflowactionscompleted_average, azure_workflowactionscompleted_count, azure_workflowactionscompleted_maximum, azure_workflowactionscompleted_minimum, azure_workflowactionscompleted_total</td>
    <td>Count</td>
    <td>Workflow Action Completed Count. For LogicApps only.</td>
  </tr>
  <tr>
    <td>azure_workflowjobexecutiondelay_average, azure_workflowjobexecutiondelay_count, azure_workflowjobexecutiondelay_maximum, azure_workflowjobexecutiondelay_minimum, azure_workflowjobexecutiondelay_total</td>
    <td>Seconds</td>
    <td>Workflow Job Execution Delay. For LogicApps only.</td>
  </tr>
  <tr>
    <td>azure_workflowjobexecutionduration_average, azure_workflowjobexecutionduration_count, azure_workflowjobexecutionduration_maximum, azure_workflowjobexecutionduration_minimum, azure_workflowjobexecutionduration_total</td>
    <td>Seconds</td>
    <td>Workflow Job Execution Duration. For LogicApps only.</td>
  </tr>
  <tr>
    <td>azure_workflowrunscompleted_average, azure_workflowrunscompleted_count, azure_workflowrunscompleted_maximum, azure_workflowrunscompleted_minimum, azure_workflowrunscompleted_total</td>
    <td>Count</td>
    <td>Workflow Runs Completed Count. For LogicApps only.</td>
  </tr>
  <tr>
    <td>azure_workflowrunsdispatched_average, azure_workflowrunsdispatched_count, azure_workflowrunsdispatched_maximum, azure_workflowrunsdispatched_minimum, azure_workflowrunsdispatched_total</td>
    <td>Count</td>
    <td>Workflow Runs Dispatched Count. For LogicApps only.</td>
  </tr>
  <tr>
    <td>azure_workflowrunsstarted_average, azure_workflowrunsstarted_count, azure_workflowrunsstarted_maximum, azure_workflowrunsstarted_minimum, azure_workflowrunsstarted_total</td>
    <td>Count</td>
    <td>Workflow Runs Started Count. For LogicApps only.</td>
  </tr>
  <tr>
    <td>azure_workflowtriggerscompleted_average, azure_workflowtriggerscompleted_count, azure_workflowtriggerscompleted_maximum, azure_workflowtriggerscompleted_minimum, azure_workflowtriggerscompleted_total</td>
    <td>Count</td>
    <td>Workflow Triggers Completed Count. For LogicApps only.</td>
  </tr>
</table>
