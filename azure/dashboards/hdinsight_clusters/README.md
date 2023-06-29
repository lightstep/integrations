---
title: Azure Microsoft.HDInsight/clusters metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.HDInsight/clusters metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.HDInsight/clusters
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.HDInsight/clusters, **PUT DESCRIPTION HERE**. 

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
    <td>azure_categorizedgatewayrequests_average, azure_categorizedgatewayrequests_count, azure_categorizedgatewayrequests_maximum, azure_categorizedgatewayrequests_minimum, azure_categorizedgatewayrequests_total</td>
    <td>Count</td>
    <td>Number of gateway requests by categories (1xx/2xx/3xx/4xx/5xx)</td>
  </tr>
  <tr>
    <td>azure_gatewayrequests_average, azure_gatewayrequests_count, azure_gatewayrequests_maximum, azure_gatewayrequests_minimum, azure_gatewayrequests_total</td>
    <td>Count</td>
    <td>Number of gateway requests</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.consumerrequest.m1_delta_average, azure_kafkarestproxy.consumerrequest.m1_delta_count, azure_kafkarestproxy.consumerrequest.m1_delta_maximum, azure_kafkarestproxy.consumerrequest.m1_delta_minimum, azure_kafkarestproxy.consumerrequest.m1_delta_total</td>
    <td>CountPerSecond</td>
    <td>Number of consumer requests to Kafka REST proxy</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.consumerrequestfail.m1_delta_average, azure_kafkarestproxy.consumerrequestfail.m1_delta_count, azure_kafkarestproxy.consumerrequestfail.m1_delta_maximum, azure_kafkarestproxy.consumerrequestfail.m1_delta_minimum, azure_kafkarestproxy.consumerrequestfail.m1_delta_total</td>
    <td>CountPerSecond</td>
    <td>Consumer request exceptions</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.consumerrequesttime.p95_average, azure_kafkarestproxy.consumerrequesttime.p95_count, azure_kafkarestproxy.consumerrequesttime.p95_maximum, azure_kafkarestproxy.consumerrequesttime.p95_minimum, azure_kafkarestproxy.consumerrequesttime.p95_total</td>
    <td>Milliseconds</td>
    <td>Message latency in a consumer request through Kafka REST proxy</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.consumerrequestwaitinginqueuetime.p95_average, azure_kafkarestproxy.consumerrequestwaitinginqueuetime.p95_count, azure_kafkarestproxy.consumerrequestwaitinginqueuetime.p95_maximum, azure_kafkarestproxy.consumerrequestwaitinginqueuetime.p95_minimum, azure_kafkarestproxy.consumerrequestwaitinginqueuetime.p95_total</td>
    <td>Milliseconds</td>
    <td>Consumer REST proxy queue length</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.messagesin.m1_delta_average, azure_kafkarestproxy.messagesin.m1_delta_count, azure_kafkarestproxy.messagesin.m1_delta_maximum, azure_kafkarestproxy.messagesin.m1_delta_minimum, azure_kafkarestproxy.messagesin.m1_delta_total</td>
    <td>CountPerSecond</td>
    <td>Number of producer messages through Kafka REST proxy</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.messagesout.m1_delta_average, azure_kafkarestproxy.messagesout.m1_delta_count, azure_kafkarestproxy.messagesout.m1_delta_maximum, azure_kafkarestproxy.messagesout.m1_delta_minimum, azure_kafkarestproxy.messagesout.m1_delta_total</td>
    <td>CountPerSecond</td>
    <td>Number of consumer messages through Kafka REST proxy</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.openconnections_average, azure_kafkarestproxy.openconnections_count, azure_kafkarestproxy.openconnections_maximum, azure_kafkarestproxy.openconnections_minimum, azure_kafkarestproxy.openconnections_total</td>
    <td>Count</td>
    <td>Number of concurrent connections through Kafka REST proxy</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.producerrequest.m1_delta_average, azure_kafkarestproxy.producerrequest.m1_delta_count, azure_kafkarestproxy.producerrequest.m1_delta_maximum, azure_kafkarestproxy.producerrequest.m1_delta_minimum, azure_kafkarestproxy.producerrequest.m1_delta_total</td>
    <td>CountPerSecond</td>
    <td>Number of producer requests to Kafka REST proxy</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.producerrequestfail.m1_delta_average, azure_kafkarestproxy.producerrequestfail.m1_delta_count, azure_kafkarestproxy.producerrequestfail.m1_delta_maximum, azure_kafkarestproxy.producerrequestfail.m1_delta_minimum, azure_kafkarestproxy.producerrequestfail.m1_delta_total</td>
    <td>CountPerSecond</td>
    <td>Producer request exceptions</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.producerrequesttime.p95_average, azure_kafkarestproxy.producerrequesttime.p95_count, azure_kafkarestproxy.producerrequesttime.p95_maximum, azure_kafkarestproxy.producerrequesttime.p95_minimum, azure_kafkarestproxy.producerrequesttime.p95_total</td>
    <td>Milliseconds</td>
    <td>Message latency in a producer request through Kafka REST proxy</td>
  </tr>
  <tr>
    <td>azure_kafkarestproxy.producerrequestwaitinginqueuetime.p95_average, azure_kafkarestproxy.producerrequestwaitinginqueuetime.p95_count, azure_kafkarestproxy.producerrequestwaitinginqueuetime.p95_maximum, azure_kafkarestproxy.producerrequestwaitinginqueuetime.p95_minimum, azure_kafkarestproxy.producerrequestwaitinginqueuetime.p95_total</td>
    <td>Milliseconds</td>
    <td>Producer REST proxy queue length</td>
  </tr>
  <tr>
    <td>azure_numactiveworkers_average, azure_numactiveworkers_count, azure_numactiveworkers_maximum, azure_numactiveworkers_minimum, azure_numactiveworkers_total</td>
    <td>Count</td>
    <td>Number of Active Workers</td>
  </tr>
  <tr>
    <td>azure_pendingcpu_average, azure_pendingcpu_count, azure_pendingcpu_maximum, azure_pendingcpu_minimum, azure_pendingcpu_total</td>
    <td>Count</td>
    <td>Pending CPU Requests in YARN</td>
  </tr>
  <tr>
    <td>azure_pendingmemory_average, azure_pendingmemory_count, azure_pendingmemory_maximum, azure_pendingmemory_minimum, azure_pendingmemory_total</td>
    <td>Count</td>
    <td>Pending Memory Requests in YARN</td>
  </tr>
</table>
