---
title: Azure Microsoft.ServiceBus/Namespaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ServiceBus/Namespaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ServiceBus/Namespaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ServiceBus/Namespaces, **PUT DESCRIPTION HERE**. 

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
    <td>azure_abandonmessage_average, azure_abandonmessage_count, azure_abandonmessage_maximum, azure_abandonmessage_minimum, azure_abandonmessage_total</td>
    <td>Count</td>
    <td>Count of messages abandoned on a Queue/Topic.</td>
  </tr>
  <tr>
    <td>azure_activeconnections_average, azure_activeconnections_count, azure_activeconnections_maximum, azure_activeconnections_minimum, azure_activeconnections_total</td>
    <td>Count</td>
    <td>Total Active Connections for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_activemessages_average, azure_activemessages_count, azure_activemessages_maximum, azure_activemessages_minimum, azure_activemessages_total</td>
    <td>Count</td>
    <td>Count of active messages in a Queue/Topic.</td>
  </tr>
  <tr>
    <td>azure_completemessage_average, azure_completemessage_count, azure_completemessage_maximum, azure_completemessage_minimum, azure_completemessage_total</td>
    <td>Count</td>
    <td>Count of messages completed on a Queue/Topic.</td>
  </tr>
  <tr>
    <td>azure_connectionsclosed_average, azure_connectionsclosed_count, azure_connectionsclosed_maximum, azure_connectionsclosed_minimum, azure_connectionsclosed_total</td>
    <td>Count</td>
    <td>Connections Closed for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_connectionsopened_average, azure_connectionsopened_count, azure_connectionsopened_maximum, azure_connectionsopened_minimum, azure_connectionsopened_total</td>
    <td>Count</td>
    <td>Connections Opened for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_cpuxns_average, azure_cpuxns_count, azure_cpuxns_maximum, azure_cpuxns_minimum, azure_cpuxns_total</td>
    <td>Percent</td>
    <td>Service bus premium namespace CPU usage metric. This metric is depricated. Please use the CPU metric (NamespaceCpuUsage) instead.</td>
  </tr>
  <tr>
    <td>azure_deadletteredmessages_average, azure_deadletteredmessages_count, azure_deadletteredmessages_maximum, azure_deadletteredmessages_minimum, azure_deadletteredmessages_total</td>
    <td>Count</td>
    <td>Count of dead-lettered messages in a Queue/Topic.</td>
  </tr>
  <tr>
    <td>azure_incomingmessages_average, azure_incomingmessages_count, azure_incomingmessages_maximum, azure_incomingmessages_minimum, azure_incomingmessages_total</td>
    <td>Count</td>
    <td>Incoming Messages for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_incomingrequests_average, azure_incomingrequests_count, azure_incomingrequests_maximum, azure_incomingrequests_minimum, azure_incomingrequests_total</td>
    <td>Count</td>
    <td>Incoming Requests for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_messages_average, azure_messages_count, azure_messages_maximum, azure_messages_minimum, azure_messages_total</td>
    <td>Count</td>
    <td>Count of messages in a Queue/Topic.</td>
  </tr>
  <tr>
    <td>azure_namespacecpuusage_average, azure_namespacecpuusage_count, azure_namespacecpuusage_maximum, azure_namespacecpuusage_minimum, azure_namespacecpuusage_total</td>
    <td>Percent</td>
    <td>Service bus premium namespace CPU usage metric.</td>
  </tr>
  <tr>
    <td>azure_namespacememoryusage_average, azure_namespacememoryusage_count, azure_namespacememoryusage_maximum, azure_namespacememoryusage_minimum, azure_namespacememoryusage_total</td>
    <td>Percent</td>
    <td>Service bus premium namespace memory usage metric.</td>
  </tr>
  <tr>
    <td>azure_outgoingmessages_average, azure_outgoingmessages_count, azure_outgoingmessages_maximum, azure_outgoingmessages_minimum, azure_outgoingmessages_total</td>
    <td>Count</td>
    <td>Outgoing Messages for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_pendingcheckpointoperationcount_average, azure_pendingcheckpointoperationcount_count, azure_pendingcheckpointoperationcount_maximum, azure_pendingcheckpointoperationcount_minimum, azure_pendingcheckpointoperationcount_total</td>
    <td>Count</td>
    <td>Pending Checkpoint Operations Count.</td>
  </tr>
  <tr>
    <td>azure_scheduledmessages_average, azure_scheduledmessages_count, azure_scheduledmessages_maximum, azure_scheduledmessages_minimum, azure_scheduledmessages_total</td>
    <td>Count</td>
    <td>Count of scheduled messages in a Queue/Topic.</td>
  </tr>
  <tr>
    <td>azure_servererrors_average, azure_servererrors_count, azure_servererrors_maximum, azure_servererrors_minimum, azure_servererrors_total</td>
    <td>Count</td>
    <td>Server Errors for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_serversendlatency_average, azure_serversendlatency_count, azure_serversendlatency_maximum, azure_serversendlatency_minimum, azure_serversendlatency_total</td>
    <td>MilliSeconds</td>
    <td>Latency of Send Message operations for Service Bus resources.</td>
  </tr>
  <tr>
    <td>azure_size_average, azure_size_count, azure_size_maximum, azure_size_minimum, azure_size_total</td>
    <td>Bytes</td>
    <td>Size of an Queue/Topic in Bytes.</td>
  </tr>
  <tr>
    <td>azure_successfulrequests_average, azure_successfulrequests_count, azure_successfulrequests_maximum, azure_successfulrequests_minimum, azure_successfulrequests_total</td>
    <td>Count</td>
    <td>Total successful requests for a namespace</td>
  </tr>
  <tr>
    <td>azure_throttledrequests_average, azure_throttledrequests_count, azure_throttledrequests_maximum, azure_throttledrequests_minimum, azure_throttledrequests_total</td>
    <td>Count</td>
    <td>Throttled Requests for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_usererrors_average, azure_usererrors_count, azure_usererrors_maximum, azure_usererrors_minimum, azure_usererrors_total</td>
    <td>Count</td>
    <td>User Errors for Microsoft.ServiceBus.</td>
  </tr>
  <tr>
    <td>azure_wsxns_average, azure_wsxns_count, azure_wsxns_maximum, azure_wsxns_minimum, azure_wsxns_total</td>
    <td>Percent</td>
    <td>Service bus premium namespace memory usage metric. This metric is deprecated. Please use the  Memory Usage (NamespaceMemoryUsage) metric instead.</td>
  </tr>
</table>
