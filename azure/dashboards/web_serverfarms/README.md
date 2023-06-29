---
title: Azure Microsoft.Web/serverfarms metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Web/serverfarms metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Web/serverfarms
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Web/serverfarms, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bytesreceived_average, azure_bytesreceived_count, azure_bytesreceived_maximum, azure_bytesreceived_minimum, azure_bytesreceived_total</td>
    <td>Bytes</td>
    <td>The average incoming bandwidth used across all instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_bytessent_average, azure_bytessent_count, azure_bytessent_maximum, azure_bytessent_minimum, azure_bytessent_total</td>
    <td>Bytes</td>
    <td>The average outgoing bandwidth used across all instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_cpupercentage_average, azure_cpupercentage_count, azure_cpupercentage_maximum, azure_cpupercentage_minimum, azure_cpupercentage_total</td>
    <td>Percent</td>
    <td>The average CPU used across all instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_diskqueuelength_average, azure_diskqueuelength_count, azure_diskqueuelength_maximum, azure_diskqueuelength_minimum, azure_diskqueuelength_total</td>
    <td>Count</td>
    <td>The average number of both read and write requests that were queued on storage. A high disk queue length is an indication of an app that might be slowing down because of excessive disk I/O.</td>
  </tr>
  <tr>
    <td>azure_httpqueuelength_average, azure_httpqueuelength_count, azure_httpqueuelength_maximum, azure_httpqueuelength_minimum, azure_httpqueuelength_total</td>
    <td>Count</td>
    <td>The average number of HTTP requests that had to sit on the queue before being fulfilled. A high or increasing HTTP Queue length is a symptom of a plan under heavy load.</td>
  </tr>
  <tr>
    <td>azure_memorypercentage_average, azure_memorypercentage_count, azure_memorypercentage_maximum, azure_memorypercentage_minimum, azure_memorypercentage_total</td>
    <td>Percent</td>
    <td>The average memory used across all instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_socketinboundall_average, azure_socketinboundall_count, azure_socketinboundall_maximum, azure_socketinboundall_minimum, azure_socketinboundall_total</td>
    <td>Count</td>
    <td>The average number of sockets used for incoming HTTP requests across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_socketloopback_average, azure_socketloopback_count, azure_socketloopback_maximum, azure_socketloopback_minimum, azure_socketloopback_total</td>
    <td>Count</td>
    <td>The average number of sockets used for loopback connections across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_socketoutboundall_average, azure_socketoutboundall_count, azure_socketoutboundall_maximum, azure_socketoutboundall_minimum, azure_socketoutboundall_total</td>
    <td>Count</td>
    <td>The average number of sockets used for outbound connections across all the instances of the plan irrespective of their TCP states. Having too many outbound connections can cause connectivity errors.</td>
  </tr>
  <tr>
    <td>azure_socketoutboundestablished_average, azure_socketoutboundestablished_count, azure_socketoutboundestablished_maximum, azure_socketoutboundestablished_minimum, azure_socketoutboundestablished_total</td>
    <td>Count</td>
    <td>The average number of sockets in ESTABLISHED state used for outbound connections across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_socketoutboundtimewait_average, azure_socketoutboundtimewait_count, azure_socketoutboundtimewait_maximum, azure_socketoutboundtimewait_minimum, azure_socketoutboundtimewait_total</td>
    <td>Count</td>
    <td>The average number of sockets in TIME_WAIT state used for outbound connections across all the instances of the plan. High or increasing outbound socket counts in TIME_WAIT state can cause connectivity errors.</td>
  </tr>
  <tr>
    <td>azure_tcpclosewait_average, azure_tcpclosewait_count, azure_tcpclosewait_maximum, azure_tcpclosewait_minimum, azure_tcpclosewait_total</td>
    <td>Count</td>
    <td>The average number of sockets in CLOSE_WAIT state across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_tcpclosing_average, azure_tcpclosing_count, azure_tcpclosing_maximum, azure_tcpclosing_minimum, azure_tcpclosing_total</td>
    <td>Count</td>
    <td>The average number of sockets in CLOSING state across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_tcpestablished_average, azure_tcpestablished_count, azure_tcpestablished_maximum, azure_tcpestablished_minimum, azure_tcpestablished_total</td>
    <td>Count</td>
    <td>The average number of sockets in ESTABLISHED state across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_tcpfinwait1_average, azure_tcpfinwait1_count, azure_tcpfinwait1_maximum, azure_tcpfinwait1_minimum, azure_tcpfinwait1_total</td>
    <td>Count</td>
    <td>The average number of sockets in FIN_WAIT_1 state across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_tcpfinwait2_average, azure_tcpfinwait2_count, azure_tcpfinwait2_maximum, azure_tcpfinwait2_minimum, azure_tcpfinwait2_total</td>
    <td>Count</td>
    <td>The average number of sockets in FIN_WAIT_2 state across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_tcplastack_average, azure_tcplastack_count, azure_tcplastack_maximum, azure_tcplastack_minimum, azure_tcplastack_total</td>
    <td>Count</td>
    <td>The average number of sockets in LAST_ACK state across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_tcpsynreceived_average, azure_tcpsynreceived_count, azure_tcpsynreceived_maximum, azure_tcpsynreceived_minimum, azure_tcpsynreceived_total</td>
    <td>Count</td>
    <td>The average number of sockets in SYN_RCVD state across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_tcpsynsent_average, azure_tcpsynsent_count, azure_tcpsynsent_maximum, azure_tcpsynsent_minimum, azure_tcpsynsent_total</td>
    <td>Count</td>
    <td>The average number of sockets in SYN_SENT state across all the instances of the plan.</td>
  </tr>
  <tr>
    <td>azure_tcptimewait_average, azure_tcptimewait_count, azure_tcptimewait_maximum, azure_tcptimewait_minimum, azure_tcptimewait_total</td>
    <td>Count</td>
    <td>The average number of sockets in TIME_WAIT state across all the instances of the plan.</td>
  </tr>
</table>
