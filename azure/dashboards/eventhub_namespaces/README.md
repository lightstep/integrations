---
title: Azure Microsoft.EventHub/Namespaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.EventHub/Namespaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.EventHub/Namespaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.EventHub/Namespaces, **PUT DESCRIPTION HERE**. 

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
    <td>azure_ehabl_average, azure_ehabl_count, azure_ehabl_maximum, azure_ehabl_minimum, azure_ehabl_total</td>
    <td>Count</td>
    <td>Event Hub archive messages in backlog for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_ehambs_average, azure_ehambs_count, azure_ehambs_maximum, azure_ehambs_minimum, azure_ehambs_total</td>
    <td>Bytes</td>
    <td>Event Hub archived message throughput in a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_ehamsgs_average, azure_ehamsgs_count, azure_ehamsgs_maximum, azure_ehamsgs_minimum, azure_ehamsgs_total</td>
    <td>Count</td>
    <td>Event Hub archived messages in a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_ehinbytes_average, azure_ehinbytes_count, azure_ehinbytes_maximum, azure_ehinbytes_minimum, azure_ehinbytes_total</td>
    <td>Bytes</td>
    <td>Event Hub incoming message throughput for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_ehinmbs_average, azure_ehinmbs_count, azure_ehinmbs_maximum, azure_ehinmbs_minimum, azure_ehinmbs_total</td>
    <td>Bytes</td>
    <td>Event Hub incoming message throughput for a namespace. This metric is deprecated. Please use Incoming bytes metric instead (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_ehinmsgs_average, azure_ehinmsgs_count, azure_ehinmsgs_maximum, azure_ehinmsgs_minimum, azure_ehinmsgs_total</td>
    <td>Count</td>
    <td>Total incoming messages for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_ehoutbytes_average, azure_ehoutbytes_count, azure_ehoutbytes_maximum, azure_ehoutbytes_minimum, azure_ehoutbytes_total</td>
    <td>Bytes</td>
    <td>Event Hub outgoing message throughput for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_ehoutmbs_average, azure_ehoutmbs_count, azure_ehoutmbs_maximum, azure_ehoutmbs_minimum, azure_ehoutmbs_total</td>
    <td>Bytes</td>
    <td>Event Hub outgoing message throughput for a namespace. This metric is deprecated. Please use Outgoing bytes metric instead (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_ehoutmsgs_average, azure_ehoutmsgs_count, azure_ehoutmsgs_maximum, azure_ehoutmsgs_minimum, azure_ehoutmsgs_total</td>
    <td>Count</td>
    <td>Total outgoing messages for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_failreq_average, azure_failreq_count, azure_failreq_maximum, azure_failreq_minimum, azure_failreq_total</td>
    <td>Count</td>
    <td>Total failed requests for a namespace (Deprecated)</td>
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
    <td>azure_inmsgs_average, azure_inmsgs_count, azure_inmsgs_maximum, azure_inmsgs_minimum, azure_inmsgs_total</td>
    <td>Count</td>
    <td>Total incoming messages for a namespace. This metric is deprecated. Please use Incoming Messages metric instead (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_inreqs_average, azure_inreqs_count, azure_inreqs_maximum, azure_inreqs_minimum, azure_inreqs_total</td>
    <td>Count</td>
    <td>Total incoming send requests for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_interr_average, azure_interr_count, azure_interr_maximum, azure_interr_minimum, azure_interr_total</td>
    <td>Count</td>
    <td>Total internal server errors for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_miscerr_average, azure_miscerr_count, azure_miscerr_maximum, azure_miscerr_minimum, azure_miscerr_total</td>
    <td>Count</td>
    <td>Total failed requests for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_namespacecpuusage_average, azure_namespacecpuusage_count, azure_namespacecpuusage_maximum, azure_namespacecpuusage_minimum, azure_namespacecpuusage_total</td>
    <td>Percent</td>
    <td>CPU usage metric for Premium SKU namespaces.</td>
  </tr>
  <tr>
    <td>azure_namespacememoryusage_average, azure_namespacememoryusage_count, azure_namespacememoryusage_maximum, azure_namespacememoryusage_minimum, azure_namespacememoryusage_total</td>
    <td>Percent</td>
    <td>Memory usage metric for Premium SKU namespaces.</td>
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
    <td>azure_outmsgs_average, azure_outmsgs_count, azure_outmsgs_maximum, azure_outmsgs_minimum, azure_outmsgs_total</td>
    <td>Count</td>
    <td>Total outgoing messages for a namespace. This metric is deprecated. Please use Outgoing Messages metric instead (Deprecated)</td>
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
    <td>azure_succreq_average, azure_succreq_count, azure_succreq_maximum, azure_succreq_minimum, azure_succreq_total</td>
    <td>Count</td>
    <td>Total successful requests for a namespace (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_svrbsy_average, azure_svrbsy_count, azure_svrbsy_maximum, azure_svrbsy_minimum, azure_svrbsy_total</td>
    <td>Count</td>
    <td>Total server busy errors for a namespace (Deprecated)</td>
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
