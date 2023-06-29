---
title: Azure Microsoft.ApiManagement/service metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ApiManagement/service metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ApiManagement/service
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ApiManagement/service, **PUT DESCRIPTION HERE**. 

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
    <td>azure_backendduration_average, azure_backendduration_count, azure_backendduration_maximum, azure_backendduration_minimum, azure_backendduration_total</td>
    <td>MilliSeconds</td>
    <td>Duration of Backend Requests in milliseconds</td>
  </tr>
  <tr>
    <td>azure_capacity_average, azure_capacity_count, azure_capacity_maximum, azure_capacity_minimum, azure_capacity_total</td>
    <td>Percent</td>
    <td>Utilization metric for ApiManagement service. Note: For skus other than Premium, 'Max' aggregation will show the value as 0.</td>
  </tr>
  <tr>
    <td>azure_connectionattempts_average, azure_connectionattempts_count, azure_connectionattempts_maximum, azure_connectionattempts_minimum, azure_connectionattempts_total</td>
    <td>Count</td>
    <td>Count of WebSocket connection attempts based on selected source and destination</td>
  </tr>
  <tr>
    <td>azure_duration_average, azure_duration_count, azure_duration_maximum, azure_duration_minimum, azure_duration_total</td>
    <td>MilliSeconds</td>
    <td>Overall Duration of Gateway Requests in milliseconds</td>
  </tr>
  <tr>
    <td>azure_eventhubdroppedevents_average, azure_eventhubdroppedevents_count, azure_eventhubdroppedevents_maximum, azure_eventhubdroppedevents_minimum, azure_eventhubdroppedevents_total</td>
    <td>Count</td>
    <td>Number of events skipped because of queue size limit reached</td>
  </tr>
  <tr>
    <td>azure_eventhubrejectedevents_average, azure_eventhubrejectedevents_count, azure_eventhubrejectedevents_maximum, azure_eventhubrejectedevents_minimum, azure_eventhubrejectedevents_total</td>
    <td>Count</td>
    <td>Number of rejected EventHub events (wrong configuration or unauthorized)</td>
  </tr>
  <tr>
    <td>azure_eventhubsuccessfulevents_average, azure_eventhubsuccessfulevents_count, azure_eventhubsuccessfulevents_maximum, azure_eventhubsuccessfulevents_minimum, azure_eventhubsuccessfulevents_total</td>
    <td>Count</td>
    <td>Number of successful EventHub events</td>
  </tr>
  <tr>
    <td>azure_eventhubthrottledevents_average, azure_eventhubthrottledevents_count, azure_eventhubthrottledevents_maximum, azure_eventhubthrottledevents_minimum, azure_eventhubthrottledevents_total</td>
    <td>Count</td>
    <td>Number of throttled EventHub events</td>
  </tr>
  <tr>
    <td>azure_eventhubtimedoutevents_average, azure_eventhubtimedoutevents_count, azure_eventhubtimedoutevents_maximum, azure_eventhubtimedoutevents_minimum, azure_eventhubtimedoutevents_total</td>
    <td>Count</td>
    <td>Number of timed out EventHub events</td>
  </tr>
  <tr>
    <td>azure_eventhubtotalbytessent_average, azure_eventhubtotalbytessent_count, azure_eventhubtotalbytessent_maximum, azure_eventhubtotalbytessent_minimum, azure_eventhubtotalbytessent_total</td>
    <td>Bytes</td>
    <td>Total size of EventHub events in bytes</td>
  </tr>
  <tr>
    <td>azure_eventhubtotalevents_average, azure_eventhubtotalevents_count, azure_eventhubtotalevents_maximum, azure_eventhubtotalevents_minimum, azure_eventhubtotalevents_total</td>
    <td>Count</td>
    <td>Number of events sent to EventHub</td>
  </tr>
  <tr>
    <td>azure_eventhubtotalfailedevents_average, azure_eventhubtotalfailedevents_count, azure_eventhubtotalfailedevents_maximum, azure_eventhubtotalfailedevents_minimum, azure_eventhubtotalfailedevents_total</td>
    <td>Count</td>
    <td>Number of failed EventHub events</td>
  </tr>
  <tr>
    <td>azure_failedrequests_average, azure_failedrequests_count, azure_failedrequests_maximum, azure_failedrequests_minimum, azure_failedrequests_total</td>
    <td>Count</td>
    <td>Number of failures in gateway requests - Use multi-dimension request metric with GatewayResponseCodeCategory dimension instead</td>
  </tr>
  <tr>
    <td>azure_networkconnectivity_average, azure_networkconnectivity_count, azure_networkconnectivity_maximum, azure_networkconnectivity_minimum, azure_networkconnectivity_total</td>
    <td>Count</td>
    <td>Network Connectivity status of dependent resource types from API Management service</td>
  </tr>
  <tr>
    <td>azure_otherrequests_average, azure_otherrequests_count, azure_otherrequests_maximum, azure_otherrequests_minimum, azure_otherrequests_total</td>
    <td>Count</td>
    <td>Number of other gateway requests - Use multi-dimension request metric with GatewayResponseCodeCategory dimension instead</td>
  </tr>
  <tr>
    <td>azure_requests_average, azure_requests_count, azure_requests_maximum, azure_requests_minimum, azure_requests_total</td>
    <td>Count</td>
    <td>Gateway request metrics with multiple dimensions</td>
  </tr>
  <tr>
    <td>azure_successfulrequests_average, azure_successfulrequests_count, azure_successfulrequests_maximum, azure_successfulrequests_minimum, azure_successfulrequests_total</td>
    <td>Count</td>
    <td>Number of successful gateway requests - Use multi-dimension request metric with GatewayResponseCodeCategory dimension instead</td>
  </tr>
  <tr>
    <td>azure_totalrequests_average, azure_totalrequests_count, azure_totalrequests_maximum, azure_totalrequests_minimum, azure_totalrequests_total</td>
    <td>Count</td>
    <td>Number of gateway requests - Use multi-dimension request metric with GatewayResponseCodeCategory dimension instead</td>
  </tr>
  <tr>
    <td>azure_unauthorizedrequests_average, azure_unauthorizedrequests_count, azure_unauthorizedrequests_maximum, azure_unauthorizedrequests_minimum, azure_unauthorizedrequests_total</td>
    <td>Count</td>
    <td>Number of unauthorized gateway requests - Use multi-dimension request metric with GatewayResponseCodeCategory dimension instead</td>
  </tr>
  <tr>
    <td>azure_websocketmessages_average, azure_websocketmessages_count, azure_websocketmessages_maximum, azure_websocketmessages_minimum, azure_websocketmessages_total</td>
    <td>Count</td>
    <td>Count of WebSocket messages based on selected source and destination</td>
  </tr>
</table>
