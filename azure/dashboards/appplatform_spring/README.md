---
title: Azure Microsoft.AppPlatform/Spring metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.AppPlatform/Spring metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.AppPlatform/Spring
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.AppPlatform/Spring, **PUT DESCRIPTION HERE**. 

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
    <td>azure_active-timer-count_average, azure_active-timer-count_count, azure_active-timer-count_maximum, azure_active-timer-count_minimum, azure_active-timer-count_total</td>
    <td>Count</td>
    <td>Number of timers that are currently active</td>
  </tr>
  <tr>
    <td>azure_alloc-rate_average, azure_alloc-rate_count, azure_alloc-rate_maximum, azure_alloc-rate_minimum, azure_alloc-rate_total</td>
    <td>Bytes</td>
    <td>Number of bytes allocated in the managed heap</td>
  </tr>
  <tr>
    <td>azure_appcpuusage_average, azure_appcpuusage_count, azure_appcpuusage_maximum, azure_appcpuusage_minimum, azure_appcpuusage_total</td>
    <td>Percent</td>
    <td>The recent CPU usage for the app. This metric is being deprecated. Please use "App CPU Usage" with metric id "PodCpuUsage".</td>
  </tr>
  <tr>
    <td>azure_assembly-count_average, azure_assembly-count_count, azure_assembly-count_maximum, azure_assembly-count_minimum, azure_assembly-count_total</td>
    <td>Count</td>
    <td>Number of Assemblies Loaded</td>
  </tr>
  <tr>
    <td>azure_cpu-usage_average, azure_cpu-usage_count, azure_cpu-usage_maximum, azure_cpu-usage_minimum, azure_cpu-usage_total</td>
    <td>Percent</td>
    <td>% time the process has utilized the CPU</td>
  </tr>
  <tr>
    <td>azure_current-requests_average, azure_current-requests_count, azure_current-requests_maximum, azure_current-requests_minimum, azure_current-requests_total</td>
    <td>Count</td>
    <td>Total number of requests in processing in the lifetime of the process</td>
  </tr>
  <tr>
    <td>azure_exception-count_average, azure_exception-count_count, azure_exception-count_maximum, azure_exception-count_minimum, azure_exception-count_total</td>
    <td>Count</td>
    <td>Number of Exceptions</td>
  </tr>
  <tr>
    <td>azure_failed-requests_average, azure_failed-requests_count, azure_failed-requests_maximum, azure_failed-requests_minimum, azure_failed-requests_total</td>
    <td>Count</td>
    <td>Total number of failed requests in the lifetime of the process</td>
  </tr>
  <tr>
    <td>azure_gatewayhttpserverrequestsmillisecondsmax_average, azure_gatewayhttpserverrequestsmillisecondsmax_count, azure_gatewayhttpserverrequestsmillisecondsmax_maximum, azure_gatewayhttpserverrequestsmillisecondsmax_minimum, azure_gatewayhttpserverrequestsmillisecondsmax_total</td>
    <td>Milliseconds</td>
    <td>The max time of requests</td>
  </tr>
  <tr>
    <td>azure_gatewayhttpserverrequestsmillisecondssum_average, azure_gatewayhttpserverrequestsmillisecondssum_count, azure_gatewayhttpserverrequestsmillisecondssum_maximum, azure_gatewayhttpserverrequestsmillisecondssum_minimum, azure_gatewayhttpserverrequestsmillisecondssum_total</td>
    <td>Milliseconds</td>
    <td>The total time of requests</td>
  </tr>
  <tr>
    <td>azure_gatewayhttpserverrequestssecondscount_average, azure_gatewayhttpserverrequestssecondscount_count, azure_gatewayhttpserverrequestssecondscount_maximum, azure_gatewayhttpserverrequestssecondscount_minimum, azure_gatewayhttpserverrequestssecondscount_total</td>
    <td>Count</td>
    <td>The number of requests</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmgclivedatasizebytes_average, azure_gatewayjvmgclivedatasizebytes_count, azure_gatewayjvmgclivedatasizebytes_maximum, azure_gatewayjvmgclivedatasizebytes_minimum, azure_gatewayjvmgclivedatasizebytes_total</td>
    <td>Bytes</td>
    <td>Size of old generation memory pool after a full GC</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmgcmaxdatasizebytes_average, azure_gatewayjvmgcmaxdatasizebytes_count, azure_gatewayjvmgcmaxdatasizebytes_maximum, azure_gatewayjvmgcmaxdatasizebytes_minimum, azure_gatewayjvmgcmaxdatasizebytes_total</td>
    <td>Bytes</td>
    <td>Max size of old generation memory pool</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmgcmemoryallocatedbytestotal_average, azure_gatewayjvmgcmemoryallocatedbytestotal_count, azure_gatewayjvmgcmemoryallocatedbytestotal_maximum, azure_gatewayjvmgcmemoryallocatedbytestotal_minimum, azure_gatewayjvmgcmemoryallocatedbytestotal_total</td>
    <td>Bytes</td>
    <td>Incremented for an increase in the size of the young generation memory pool after one GC to before the next</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmgcmemorypromotedbytestotal_average, azure_gatewayjvmgcmemorypromotedbytestotal_count, azure_gatewayjvmgcmemorypromotedbytestotal_maximum, azure_gatewayjvmgcmemorypromotedbytestotal_minimum, azure_gatewayjvmgcmemorypromotedbytestotal_total</td>
    <td>Bytes</td>
    <td>Count of positive increases in the size of the old generation memory pool before GC to after GC</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmgcpausesecondscount_average, azure_gatewayjvmgcpausesecondscount_count, azure_gatewayjvmgcpausesecondscount_maximum, azure_gatewayjvmgcpausesecondscount_minimum, azure_gatewayjvmgcpausesecondscount_total</td>
    <td>Count</td>
    <td>GC Pause Count</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmgcpausesecondsmax_average, azure_gatewayjvmgcpausesecondsmax_count, azure_gatewayjvmgcpausesecondsmax_maximum, azure_gatewayjvmgcpausesecondsmax_minimum, azure_gatewayjvmgcpausesecondsmax_total</td>
    <td>Seconds</td>
    <td>GC Pause Max Time</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmgcpausesecondssum_average, azure_gatewayjvmgcpausesecondssum_count, azure_gatewayjvmgcpausesecondssum_maximum, azure_gatewayjvmgcpausesecondssum_minimum, azure_gatewayjvmgcpausesecondssum_total</td>
    <td>Seconds</td>
    <td>GC Pause Total Time</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmmemorycommittedbytes_average, azure_gatewayjvmmemorycommittedbytes_count, azure_gatewayjvmmemorycommittedbytes_maximum, azure_gatewayjvmmemorycommittedbytes_minimum, azure_gatewayjvmmemorycommittedbytes_total</td>
    <td>Bytes</td>
    <td>Memory assigned to JVM in bytes</td>
  </tr>
  <tr>
    <td>azure_gatewayjvmmemoryusedbytes_average, azure_gatewayjvmmemoryusedbytes_count, azure_gatewayjvmmemoryusedbytes_maximum, azure_gatewayjvmmemoryusedbytes_minimum, azure_gatewayjvmmemoryusedbytes_total</td>
    <td>Bytes</td>
    <td>Memory Used in bytes</td>
  </tr>
  <tr>
    <td>azure_gatewayprocesscpuusage_average, azure_gatewayprocesscpuusage_count, azure_gatewayprocesscpuusage_maximum, azure_gatewayprocesscpuusage_minimum, azure_gatewayprocesscpuusage_total</td>
    <td>Percent</td>
    <td>The recent CPU usage for the JVM process</td>
  </tr>
  <tr>
    <td>azure_gatewayratelimitthrottledcount_average, azure_gatewayratelimitthrottledcount_count, azure_gatewayratelimitthrottledcount_maximum, azure_gatewayratelimitthrottledcount_minimum, azure_gatewayratelimitthrottledcount_total</td>
    <td>Count</td>
    <td>The count of the throttled requests</td>
  </tr>
  <tr>
    <td>azure_gatewaysystemcpuusage_average, azure_gatewaysystemcpuusage_count, azure_gatewaysystemcpuusage_maximum, azure_gatewaysystemcpuusage_minimum, azure_gatewaysystemcpuusage_total</td>
    <td>Percent</td>
    <td>The recent CPU usage for the whole system</td>
  </tr>
  <tr>
    <td>azure_gc-heap-size_average, azure_gc-heap-size_count, azure_gc-heap-size_maximum, azure_gc-heap-size_minimum, azure_gc-heap-size_total</td>
    <td>Count</td>
    <td>Total heap size reported by the GC (MB)</td>
  </tr>
  <tr>
    <td>azure_gen-0-gc-count_average, azure_gen-0-gc-count_count, azure_gen-0-gc-count_maximum, azure_gen-0-gc-count_minimum, azure_gen-0-gc-count_total</td>
    <td>Count</td>
    <td>Number of Gen 0 GCs</td>
  </tr>
  <tr>
    <td>azure_gen-0-size_average, azure_gen-0-size_count, azure_gen-0-size_maximum, azure_gen-0-size_minimum, azure_gen-0-size_total</td>
    <td>Bytes</td>
    <td>Gen 0 Heap Size</td>
  </tr>
  <tr>
    <td>azure_gen-1-gc-count_average, azure_gen-1-gc-count_count, azure_gen-1-gc-count_maximum, azure_gen-1-gc-count_minimum, azure_gen-1-gc-count_total</td>
    <td>Count</td>
    <td>Number of Gen 1 GCs</td>
  </tr>
  <tr>
    <td>azure_gen-1-size_average, azure_gen-1-size_count, azure_gen-1-size_maximum, azure_gen-1-size_minimum, azure_gen-1-size_total</td>
    <td>Bytes</td>
    <td>Gen 1 Heap Size</td>
  </tr>
  <tr>
    <td>azure_gen-2-gc-count_average, azure_gen-2-gc-count_count, azure_gen-2-gc-count_maximum, azure_gen-2-gc-count_minimum, azure_gen-2-gc-count_total</td>
    <td>Count</td>
    <td>Number of Gen 2 GCs</td>
  </tr>
  <tr>
    <td>azure_gen-2-size_average, azure_gen-2-size_count, azure_gen-2-size_maximum, azure_gen-2-size_minimum, azure_gen-2-size_total</td>
    <td>Bytes</td>
    <td>Gen 2 Heap Size</td>
  </tr>
  <tr>
    <td>azure_ingressbytesreceived_average, azure_ingressbytesreceived_count, azure_ingressbytesreceived_maximum, azure_ingressbytesreceived_minimum, azure_ingressbytesreceived_total</td>
    <td>Bytes</td>
    <td>Count of bytes received by Azure Spring Apps from the clients</td>
  </tr>
  <tr>
    <td>azure_ingressbytesreceivedrate_average, azure_ingressbytesreceivedrate_count, azure_ingressbytesreceivedrate_maximum, azure_ingressbytesreceivedrate_minimum, azure_ingressbytesreceivedrate_total</td>
    <td>BytesPerSecond</td>
    <td>Bytes received per second by Azure Spring Apps from the clients</td>
  </tr>
  <tr>
    <td>azure_ingressbytessent_average, azure_ingressbytessent_count, azure_ingressbytessent_maximum, azure_ingressbytessent_minimum, azure_ingressbytessent_total</td>
    <td>Bytes</td>
    <td>Count of bytes sent by Azure Spring Apps to the clients</td>
  </tr>
  <tr>
    <td>azure_ingressbytessentrate_average, azure_ingressbytessentrate_count, azure_ingressbytessentrate_maximum, azure_ingressbytessentrate_minimum, azure_ingressbytessentrate_total</td>
    <td>BytesPerSecond</td>
    <td>Bytes sent per second by Azure Spring Apps to the clients</td>
  </tr>
  <tr>
    <td>azure_ingressfailedrequests_average, azure_ingressfailedrequests_count, azure_ingressfailedrequests_maximum, azure_ingressfailedrequests_minimum, azure_ingressfailedrequests_total</td>
    <td>Count</td>
    <td>Count of failed requests by Azure Spring Apps from the clients</td>
  </tr>
  <tr>
    <td>azure_ingressrequests_average, azure_ingressrequests_count, azure_ingressrequests_maximum, azure_ingressrequests_minimum, azure_ingressrequests_total</td>
    <td>Count</td>
    <td>Count of requests by Azure Spring Apps from the clients</td>
  </tr>
  <tr>
    <td>azure_ingressresponsestatus_average, azure_ingressresponsestatus_count, azure_ingressresponsestatus_maximum, azure_ingressresponsestatus_minimum, azure_ingressresponsestatus_total</td>
    <td>Count</td>
    <td>HTTP response status returned by Azure Spring Apps. The response status code distribution can be further categorized to show responses in 2xx, 3xx, 4xx, and 5xx categories</td>
  </tr>
  <tr>
    <td>azure_ingressresponsetime_average, azure_ingressresponsetime_count, azure_ingressresponsetime_maximum, azure_ingressresponsetime_minimum, azure_ingressresponsetime_total</td>
    <td>Seconds</td>
    <td>Http response time return by Azure Spring Apps</td>
  </tr>
  <tr>
    <td>azure_jvm.gc.live.data.size_average, azure_jvm.gc.live.data.size_count, azure_jvm.gc.live.data.size_maximum, azure_jvm.gc.live.data.size_minimum, azure_jvm.gc.live.data.size_total</td>
    <td>Bytes</td>
    <td>Size of old generation memory pool after a full GC</td>
  </tr>
  <tr>
    <td>azure_jvm.gc.max.data.size_average, azure_jvm.gc.max.data.size_count, azure_jvm.gc.max.data.size_maximum, azure_jvm.gc.max.data.size_minimum, azure_jvm.gc.max.data.size_total</td>
    <td>Bytes</td>
    <td>Max size of old generation memory pool</td>
  </tr>
  <tr>
    <td>azure_jvm.gc.memory.allocated_average, azure_jvm.gc.memory.allocated_count, azure_jvm.gc.memory.allocated_maximum, azure_jvm.gc.memory.allocated_minimum, azure_jvm.gc.memory.allocated_total</td>
    <td>Bytes</td>
    <td>Incremented for an increase in the size of the young generation memory pool after one GC to before the next</td>
  </tr>
  <tr>
    <td>azure_jvm.gc.memory.promoted_average, azure_jvm.gc.memory.promoted_count, azure_jvm.gc.memory.promoted_maximum, azure_jvm.gc.memory.promoted_minimum, azure_jvm.gc.memory.promoted_total</td>
    <td>Bytes</td>
    <td>Count of positive increases in the size of the old generation memory pool before GC to after GC</td>
  </tr>
  <tr>
    <td>azure_jvm.gc.pause.total.count_average, azure_jvm.gc.pause.total.count_count, azure_jvm.gc.pause.total.count_maximum, azure_jvm.gc.pause.total.count_minimum, azure_jvm.gc.pause.total.count_total</td>
    <td>Count</td>
    <td>GC Pause Count</td>
  </tr>
  <tr>
    <td>azure_jvm.gc.pause.total.time_average, azure_jvm.gc.pause.total.time_count, azure_jvm.gc.pause.total.time_maximum, azure_jvm.gc.pause.total.time_minimum, azure_jvm.gc.pause.total.time_total</td>
    <td>Milliseconds</td>
    <td>GC Pause Total Time</td>
  </tr>
  <tr>
    <td>azure_jvm.memory.committed_average, azure_jvm.memory.committed_count, azure_jvm.memory.committed_maximum, azure_jvm.memory.committed_minimum, azure_jvm.memory.committed_total</td>
    <td>Bytes</td>
    <td>Memory assigned to JVM in bytes</td>
  </tr>
  <tr>
    <td>azure_jvm.memory.max_average, azure_jvm.memory.max_count, azure_jvm.memory.max_maximum, azure_jvm.memory.max_minimum, azure_jvm.memory.max_total</td>
    <td>Bytes</td>
    <td>The maximum amount of memory in bytes that can be used for memory management</td>
  </tr>
  <tr>
    <td>azure_jvm.memory.used_average, azure_jvm.memory.used_count, azure_jvm.memory.used_maximum, azure_jvm.memory.used_minimum, azure_jvm.memory.used_total</td>
    <td>Bytes</td>
    <td>App Memory Used in bytes</td>
  </tr>
  <tr>
    <td>azure_loh-size_average, azure_loh-size_count, azure_loh-size_maximum, azure_loh-size_minimum, azure_loh-size_total</td>
    <td>Bytes</td>
    <td>LOH Heap Size</td>
  </tr>
  <tr>
    <td>azure_monitor-lock-contention-count_average, azure_monitor-lock-contention-count_count, azure_monitor-lock-contention-count_maximum, azure_monitor-lock-contention-count_minimum, azure_monitor-lock-contention-count_total</td>
    <td>Count</td>
    <td>Number of times there were contention when trying to take the monitor lock</td>
  </tr>
  <tr>
    <td>azure_podcpuusage_average, azure_podcpuusage_count, azure_podcpuusage_maximum, azure_podcpuusage_minimum, azure_podcpuusage_total</td>
    <td>Percent</td>
    <td>The recent CPU usage for the app</td>
  </tr>
  <tr>
    <td>azure_podmemoryusage_average, azure_podmemoryusage_count, azure_podmemoryusage_maximum, azure_podmemoryusage_minimum, azure_podmemoryusage_total</td>
    <td>Percent</td>
    <td>The recent Memory usage for the app</td>
  </tr>
  <tr>
    <td>azure_podnetworkin_average, azure_podnetworkin_count, azure_podnetworkin_maximum, azure_podnetworkin_minimum, azure_podnetworkin_total</td>
    <td>Bytes</td>
    <td>Cumulative count of bytes received in the app</td>
  </tr>
  <tr>
    <td>azure_podnetworkout_average, azure_podnetworkout_count, azure_podnetworkout_maximum, azure_podnetworkout_minimum, azure_podnetworkout_total</td>
    <td>Bytes</td>
    <td>Cumulative count of bytes sent from the app</td>
  </tr>
  <tr>
    <td>azure_process.cpu.usage_average, azure_process.cpu.usage_count, azure_process.cpu.usage_maximum, azure_process.cpu.usage_minimum, azure_process.cpu.usage_total</td>
    <td>Percent</td>
    <td>The recent CPU usage for the JVM process</td>
  </tr>
  <tr>
    <td>azure_requests_average, azure_requests_count, azure_requests_maximum, azure_requests_minimum, azure_requests_total</td>
    <td>Count</td>
    <td>Requests processed</td>
  </tr>
  <tr>
    <td>azure_requests-per-second_average, azure_requests-per-second_count, azure_requests-per-second_maximum, azure_requests-per-second_minimum, azure_requests-per-second_total</td>
    <td>Count</td>
    <td>Request rate</td>
  </tr>
  <tr>
    <td>azure_restartcount_average, azure_restartcount_count, azure_restartcount_maximum, azure_restartcount_minimum, azure_restartcount_total</td>
    <td>Count</td>
    <td>Restart count of Spring App</td>
  </tr>
  <tr>
    <td>azure_rxbytes_average, azure_rxbytes_count, azure_rxbytes_maximum, azure_rxbytes_minimum, azure_rxbytes_total</td>
    <td>Bytes</td>
    <td>Network received bytes</td>
  </tr>
  <tr>
    <td>azure_system.cpu.usage_average, azure_system.cpu.usage_count, azure_system.cpu.usage_maximum, azure_system.cpu.usage_minimum, azure_system.cpu.usage_total</td>
    <td>Percent</td>
    <td>The recent CPU usage for the whole system</td>
  </tr>
  <tr>
    <td>azure_threadpool-completed-items-count_average, azure_threadpool-completed-items-count_count, azure_threadpool-completed-items-count_maximum, azure_threadpool-completed-items-count_minimum, azure_threadpool-completed-items-count_total</td>
    <td>Count</td>
    <td>ThreadPool Completed Work Items Count</td>
  </tr>
  <tr>
    <td>azure_threadpool-queue-length_average, azure_threadpool-queue-length_count, azure_threadpool-queue-length_maximum, azure_threadpool-queue-length_minimum, azure_threadpool-queue-length_total</td>
    <td>Count</td>
    <td>ThreadPool Work Items Queue Length</td>
  </tr>
  <tr>
    <td>azure_threadpool-thread-count_average, azure_threadpool-thread-count_count, azure_threadpool-thread-count_maximum, azure_threadpool-thread-count_minimum, azure_threadpool-thread-count_total</td>
    <td>Count</td>
    <td>Number of ThreadPool Threads</td>
  </tr>
  <tr>
    <td>azure_time-in-gc_average, azure_time-in-gc_count, azure_time-in-gc_maximum, azure_time-in-gc_minimum, azure_time-in-gc_total</td>
    <td>Percent</td>
    <td>% time in GC since the last GC</td>
  </tr>
  <tr>
    <td>azure_tomcat.global.error_average, azure_tomcat.global.error_count, azure_tomcat.global.error_maximum, azure_tomcat.global.error_minimum, azure_tomcat.global.error_total</td>
    <td>Count</td>
    <td>Tomcat Global Error</td>
  </tr>
  <tr>
    <td>azure_tomcat.global.received_average, azure_tomcat.global.received_count, azure_tomcat.global.received_maximum, azure_tomcat.global.received_minimum, azure_tomcat.global.received_total</td>
    <td>Bytes</td>
    <td>Tomcat Total Received Bytes</td>
  </tr>
  <tr>
    <td>azure_tomcat.global.request.avg.time_average, azure_tomcat.global.request.avg.time_count, azure_tomcat.global.request.avg.time_maximum, azure_tomcat.global.request.avg.time_minimum, azure_tomcat.global.request.avg.time_total</td>
    <td>Milliseconds</td>
    <td>Tomcat Request Average Time</td>
  </tr>
  <tr>
    <td>azure_tomcat.global.request.max_average, azure_tomcat.global.request.max_count, azure_tomcat.global.request.max_maximum, azure_tomcat.global.request.max_minimum, azure_tomcat.global.request.max_total</td>
    <td>Milliseconds</td>
    <td>Tomcat Request Max Time</td>
  </tr>
  <tr>
    <td>azure_tomcat.global.request.total.count_average, azure_tomcat.global.request.total.count_count, azure_tomcat.global.request.total.count_maximum, azure_tomcat.global.request.total.count_minimum, azure_tomcat.global.request.total.count_total</td>
    <td>Count</td>
    <td>Tomcat Request Total Count</td>
  </tr>
  <tr>
    <td>azure_tomcat.global.request.total.time_average, azure_tomcat.global.request.total.time_count, azure_tomcat.global.request.total.time_maximum, azure_tomcat.global.request.total.time_minimum, azure_tomcat.global.request.total.time_total</td>
    <td>Milliseconds</td>
    <td>Tomcat Request Total Time</td>
  </tr>
  <tr>
    <td>azure_tomcat.global.sent_average, azure_tomcat.global.sent_count, azure_tomcat.global.sent_maximum, azure_tomcat.global.sent_minimum, azure_tomcat.global.sent_total</td>
    <td>Bytes</td>
    <td>Tomcat Total Sent Bytes</td>
  </tr>
  <tr>
    <td>azure_tomcat.sessions.active.current_average, azure_tomcat.sessions.active.current_count, azure_tomcat.sessions.active.current_maximum, azure_tomcat.sessions.active.current_minimum, azure_tomcat.sessions.active.current_total</td>
    <td>Count</td>
    <td>Tomcat Session Active Count</td>
  </tr>
  <tr>
    <td>azure_tomcat.sessions.active.max_average, azure_tomcat.sessions.active.max_count, azure_tomcat.sessions.active.max_maximum, azure_tomcat.sessions.active.max_minimum, azure_tomcat.sessions.active.max_total</td>
    <td>Count</td>
    <td>Tomcat Session Max Active Count</td>
  </tr>
  <tr>
    <td>azure_tomcat.sessions.alive.max_average, azure_tomcat.sessions.alive.max_count, azure_tomcat.sessions.alive.max_maximum, azure_tomcat.sessions.alive.max_minimum, azure_tomcat.sessions.alive.max_total</td>
    <td>Milliseconds</td>
    <td>Tomcat Session Max Alive Time</td>
  </tr>
  <tr>
    <td>azure_tomcat.sessions.created_average, azure_tomcat.sessions.created_count, azure_tomcat.sessions.created_maximum, azure_tomcat.sessions.created_minimum, azure_tomcat.sessions.created_total</td>
    <td>Count</td>
    <td>Tomcat Session Created Count</td>
  </tr>
  <tr>
    <td>azure_tomcat.sessions.expired_average, azure_tomcat.sessions.expired_count, azure_tomcat.sessions.expired_maximum, azure_tomcat.sessions.expired_minimum, azure_tomcat.sessions.expired_total</td>
    <td>Count</td>
    <td>Tomcat Session Expired Count</td>
  </tr>
  <tr>
    <td>azure_tomcat.sessions.rejected_average, azure_tomcat.sessions.rejected_count, azure_tomcat.sessions.rejected_maximum, azure_tomcat.sessions.rejected_minimum, azure_tomcat.sessions.rejected_total</td>
    <td>Count</td>
    <td>Tomcat Session Rejected Count</td>
  </tr>
  <tr>
    <td>azure_tomcat.threads.config.max_average, azure_tomcat.threads.config.max_count, azure_tomcat.threads.config.max_maximum, azure_tomcat.threads.config.max_minimum, azure_tomcat.threads.config.max_total</td>
    <td>Count</td>
    <td>Tomcat Config Max Thread Count</td>
  </tr>
  <tr>
    <td>azure_tomcat.threads.current_average, azure_tomcat.threads.current_count, azure_tomcat.threads.current_maximum, azure_tomcat.threads.current_minimum, azure_tomcat.threads.current_total</td>
    <td>Count</td>
    <td>Tomcat Current Thread Count</td>
  </tr>
  <tr>
    <td>azure_total-requests_average, azure_total-requests_count, azure_total-requests_maximum, azure_total-requests_minimum, azure_total-requests_total</td>
    <td>Count</td>
    <td>Total number of requests in the lifetime of the process</td>
  </tr>
  <tr>
    <td>azure_txbytes_average, azure_txbytes_count, azure_txbytes_maximum, azure_txbytes_minimum, azure_txbytes_total</td>
    <td>Bytes</td>
    <td>Network transmitted bytes</td>
  </tr>
  <tr>
    <td>azure_usagenanocores_average, azure_usagenanocores_count, azure_usagenanocores_maximum, azure_usagenanocores_minimum, azure_usagenanocores_total</td>
    <td>NanoCores</td>
    <td>CPU consumed by Spring App, in nano cores. 1,000,000,000 nano cores = 1 core</td>
  </tr>
  <tr>
    <td>azure_working-set_average, azure_working-set_count, azure_working-set_maximum, azure_working-set_minimum, azure_working-set_total</td>
    <td>Count</td>
    <td>Amount of working set used by the process (MB)</td>
  </tr>
  <tr>
    <td>azure_workingsetbytes_average, azure_workingsetbytes_count, azure_workingsetbytes_maximum, azure_workingsetbytes_minimum, azure_workingsetbytes_total</td>
    <td>Bytes</td>
    <td>Spring App working set memory used in bytes.</td>
  </tr>
</table>
