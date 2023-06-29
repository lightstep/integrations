---
title: Azure Microsoft.EventHub/clusters metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.EventHub/clusters metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.EventHub/clusters
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.EventHub/clusters, **PUT DESCRIPTION HERE**. 

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
    <td>azure_activeconnections_average, azure_activeconnections_count, azure_activeconnections_maximum, azure_activeconnections_minimum, azure_activeconnections_total</td>
    <td>Count</td>
    <td>Total Active Connections for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_availablememory_average, azure_availablememory_count, azure_availablememory_maximum, azure_availablememory_minimum, azure_availablememory_total</td>
    <td>Percent</td>
    <td>Available memory for the Event Hub Cluster as a percentage of total memory.</td>
  </tr>
  <tr>
    <td>azure_capturebacklog_average, azure_capturebacklog_count, azure_capturebacklog_maximum, azure_capturebacklog_minimum, azure_capturebacklog_total</td>
    <td>Count</td>
    <td>Capture Backlog for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_capturedbytes_average, azure_capturedbytes_count, azure_capturedbytes_maximum, azure_capturedbytes_minimum, azure_capturedbytes_total</td>
    <td>Bytes</td>
    <td>Captured Bytes for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_capturedmessages_average, azure_capturedmessages_count, azure_capturedmessages_maximum, azure_capturedmessages_minimum, azure_capturedmessages_total</td>
    <td>Count</td>
    <td>Captured Messages for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_connectionsclosed_average, azure_connectionsclosed_count, azure_connectionsclosed_maximum, azure_connectionsclosed_minimum, azure_connectionsclosed_total</td>
    <td>Count</td>
    <td>Connections Closed for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_connectionsopened_average, azure_connectionsopened_count, azure_connectionsopened_maximum, azure_connectionsopened_minimum, azure_connectionsopened_total</td>
    <td>Count</td>
    <td>Connections Opened for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_cpu_average, azure_cpu_count, azure_cpu_maximum, azure_cpu_minimum, azure_cpu_total</td>
    <td>Percent</td>
    <td>CPU utilization for the Event Hub Cluster as a percentage</td>
  </tr>
  <tr>
    <td>azure_incomingbytes_average, azure_incomingbytes_count, azure_incomingbytes_maximum, azure_incomingbytes_minimum, azure_incomingbytes_total</td>
    <td>Bytes</td>
    <td>Incoming Bytes for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_incomingmessages_average, azure_incomingmessages_count, azure_incomingmessages_maximum, azure_incomingmessages_minimum, azure_incomingmessages_total</td>
    <td>Count</td>
    <td>Incoming Messages for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_incomingrequests_average, azure_incomingrequests_count, azure_incomingrequests_maximum, azure_incomingrequests_minimum, azure_incomingrequests_total</td>
    <td>Count</td>
    <td>Incoming Requests for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_outgoingbytes_average, azure_outgoingbytes_count, azure_outgoingbytes_maximum, azure_outgoingbytes_minimum, azure_outgoingbytes_total</td>
    <td>Bytes</td>
    <td>Outgoing Bytes for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_outgoingmessages_average, azure_outgoingmessages_count, azure_outgoingmessages_maximum, azure_outgoingmessages_minimum, azure_outgoingmessages_total</td>
    <td>Count</td>
    <td>Outgoing Messages for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_quotaexceedederrors_average, azure_quotaexceedederrors_count, azure_quotaexceedederrors_maximum, azure_quotaexceedederrors_minimum, azure_quotaexceedederrors_total</td>
    <td>Count</td>
    <td>Quota Exceeded Errors for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_servererrors_average, azure_servererrors_count, azure_servererrors_maximum, azure_servererrors_minimum, azure_servererrors_total</td>
    <td>Count</td>
    <td>Server Errors for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_size_average, azure_size_count, azure_size_maximum, azure_size_minimum, azure_size_total</td>
    <td>Bytes</td>
    <td>Size of an EventHub in Bytes.</td>
  </tr>
  <tr>
    <td>azure_successfulrequests_average, azure_successfulrequests_count, azure_successfulrequests_maximum, azure_successfulrequests_minimum, azure_successfulrequests_total</td>
    <td>Count</td>
    <td>Successful Requests for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_throttledrequests_average, azure_throttledrequests_count, azure_throttledrequests_maximum, azure_throttledrequests_minimum, azure_throttledrequests_total</td>
    <td>Count</td>
    <td>Throttled Requests for Microsoft.EventHub.</td>
  </tr>
  <tr>
    <td>azure_usererrors_average, azure_usererrors_count, azure_usererrors_maximum, azure_usererrors_minimum, azure_usererrors_total</td>
    <td>Count</td>
    <td>User Errors for Microsoft.EventHub.</td>
  </tr>
</table>
