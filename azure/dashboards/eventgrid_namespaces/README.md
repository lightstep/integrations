---
title: Azure Microsoft.EventGrid/namespaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.EventGrid/namespaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.EventGrid/namespaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.EventGrid/namespaces, **PUT DESCRIPTION HERE**. 

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
    <td>azure_acknowledgelatencyinmilliseconds_average, azure_acknowledgelatencyinmilliseconds_count, azure_acknowledgelatencyinmilliseconds_maximum, azure_acknowledgelatencyinmilliseconds_minimum, azure_acknowledgelatencyinmilliseconds_total</td>
    <td>Milliseconds</td>
    <td>The observed latency in milliseconds for acknowledge events operation.</td>
  </tr>
  <tr>
    <td>azure_failedacknowledgedevents_average, azure_failedacknowledgedevents_count, azure_failedacknowledgedevents_maximum, azure_failedacknowledgedevents_minimum, azure_failedacknowledgedevents_total</td>
    <td>Count</td>
    <td>The number of events for which acknowledgements from clients failed.</td>
  </tr>
  <tr>
    <td>azure_failedpublishedevents_average, azure_failedpublishedevents_count, azure_failedpublishedevents_maximum, azure_failedpublishedevents_minimum, azure_failedpublishedevents_total</td>
    <td>Count</td>
    <td>The number of events that weren't accepted by Event Grid. This count excludes events that were published but failed to reach Event Grid due to a network issue, for example.</td>
  </tr>
  <tr>
    <td>azure_failedreceivedevents_average, azure_failedreceivedevents_count, azure_failedreceivedevents_maximum, azure_failedreceivedevents_minimum, azure_failedreceivedevents_total</td>
    <td>Count</td>
    <td>The number of events that were requested by clients but weren't delivered successfully by Event Grid.</td>
  </tr>
  <tr>
    <td>azure_failedreleasedevents_average, azure_failedreleasedevents_count, azure_failedreleasedevents_maximum, azure_failedreleasedevents_minimum, azure_failedreleasedevents_total</td>
    <td>Count</td>
    <td>The number of events for which release failed.</td>
  </tr>
  <tr>
    <td>azure_mqtt.connections_average, azure_mqtt.connections_count, azure_mqtt.connections_maximum, azure_mqtt.connections_minimum, azure_mqtt.connections_total</td>
    <td>Count</td>
    <td>The number of active connections in the namespace.</td>
  </tr>
  <tr>
    <td>azure_mqtt.failedpublishedmessages_average, azure_mqtt.failedpublishedmessages_count, azure_mqtt.failedpublishedmessages_maximum, azure_mqtt.failedpublishedmessages_minimum, azure_mqtt.failedpublishedmessages_total</td>
    <td>Count</td>
    <td>The number of MQTT messages that failed to be published into the namespace.</td>
  </tr>
  <tr>
    <td>azure_mqtt.failedsubscriptionoperations_average, azure_mqtt.failedsubscriptionoperations_count, azure_mqtt.failedsubscriptionoperations_maximum, azure_mqtt.failedsubscriptionoperations_minimum, azure_mqtt.failedsubscriptionoperations_total</td>
    <td>Count</td>
    <td>The number of failed subscription operations (Subscribe, Unsubscribe). This metric is incremented for every topic filter within a subscription request.</td>
  </tr>
  <tr>
    <td>azure_mqtt.requestcount_average, azure_mqtt.requestcount_count, azure_mqtt.requestcount_maximum, azure_mqtt.requestcount_minimum, azure_mqtt.requestcount_total</td>
    <td>Count</td>
    <td>The number of MQTT requests.</td>
  </tr>
  <tr>
    <td>azure_mqtt.successfuldeliveredmessages_average, azure_mqtt.successfuldeliveredmessages_count, azure_mqtt.successfuldeliveredmessages_maximum, azure_mqtt.successfuldeliveredmessages_minimum, azure_mqtt.successfuldeliveredmessages_total</td>
    <td>Count</td>
    <td>The number of messages delivered by the namespace. There are no failures for this operation.</td>
  </tr>
  <tr>
    <td>azure_mqtt.successfulpublishedmessages_average, azure_mqtt.successfulpublishedmessages_count, azure_mqtt.successfulpublishedmessages_maximum, azure_mqtt.successfulpublishedmessages_minimum, azure_mqtt.successfulpublishedmessages_total</td>
    <td>Count</td>
    <td>The number of  MQTT messages that were published successfully into the namespace.</td>
  </tr>
  <tr>
    <td>azure_mqtt.successfulsubscriptionoperations_average, azure_mqtt.successfulsubscriptionoperations_count, azure_mqtt.successfulsubscriptionoperations_maximum, azure_mqtt.successfulsubscriptionoperations_minimum, azure_mqtt.successfulsubscriptionoperations_total</td>
    <td>Count</td>
    <td>The number of successful subscription operations (Subscribe, Unsubscribe). This metric is incremented for every topic filter within a subscription request.</td>
  </tr>
  <tr>
    <td>azure_mqtt.throughput_average, azure_mqtt.throughput_count, azure_mqtt.throughput_maximum, azure_mqtt.throughput_minimum, azure_mqtt.throughput_total</td>
    <td>Bytes</td>
    <td>The number of bytes published to or delivered by the namespace.</td>
  </tr>
  <tr>
    <td>azure_publishlatencyinmilliseconds_average, azure_publishlatencyinmilliseconds_count, azure_publishlatencyinmilliseconds_maximum, azure_publishlatencyinmilliseconds_minimum, azure_publishlatencyinmilliseconds_total</td>
    <td>Milliseconds</td>
    <td>The observed latency in milliseconds for publish events operation.</td>
  </tr>
  <tr>
    <td>azure_receivelatencyinmilliseconds_average, azure_receivelatencyinmilliseconds_count, azure_receivelatencyinmilliseconds_maximum, azure_receivelatencyinmilliseconds_minimum, azure_receivelatencyinmilliseconds_total</td>
    <td>Milliseconds</td>
    <td>The observed latency in milliseconds for receive events operation.</td>
  </tr>
  <tr>
    <td>azure_rejectlatencyinmilliseconds_average, azure_rejectlatencyinmilliseconds_count, azure_rejectlatencyinmilliseconds_maximum, azure_rejectlatencyinmilliseconds_minimum, azure_rejectlatencyinmilliseconds_total</td>
    <td>Milliseconds</td>
    <td>The observed latency in milliseconds for reject events operation.</td>
  </tr>
  <tr>
    <td>azure_successfulacknowledgedevents_average, azure_successfulacknowledgedevents_count, azure_successfulacknowledgedevents_maximum, azure_successfulacknowledgedevents_minimum, azure_successfulacknowledgedevents_total</td>
    <td>Count</td>
    <td>The number of events for which delivery was successfully acknowledged by clients.</td>
  </tr>
  <tr>
    <td>azure_successfulpublishedevents_average, azure_successfulpublishedevents_count, azure_successfulpublishedevents_maximum, azure_successfulpublishedevents_minimum, azure_successfulpublishedevents_total</td>
    <td>Count</td>
    <td>The number of events published successfully to a topic or topic space within a namespace.</td>
  </tr>
  <tr>
    <td>azure_successfulreceivedevents_average, azure_successfulreceivedevents_count, azure_successfulreceivedevents_maximum, azure_successfulreceivedevents_minimum, azure_successfulreceivedevents_total</td>
    <td>Count</td>
    <td>The total number of events that were successfully returned to (received by) clients by Event Grid.</td>
  </tr>
  <tr>
    <td>azure_successfulreleasedevents_average, azure_successfulreleasedevents_count, azure_successfulreleasedevents_maximum, azure_successfulreleasedevents_minimum, azure_successfulreleasedevents_total</td>
    <td>Count</td>
    <td>The number of events that were released successfully by queue subscriber clients.</td>
  </tr>
</table>
