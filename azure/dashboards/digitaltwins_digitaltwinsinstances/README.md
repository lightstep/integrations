---
title: Azure Microsoft.DigitalTwins/digitalTwinsInstances metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DigitalTwins/digitalTwinsInstances metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DigitalTwins/digitalTwinsInstances
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DigitalTwins/digitalTwinsInstances, **PUT DESCRIPTION HERE**. 

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
    <td>azure_apirequests_average, azure_apirequests_count, azure_apirequests_maximum, azure_apirequests_minimum, azure_apirequests_total</td>
    <td>Count</td>
    <td>The number of API requests made for Digital Twins read, write, delete and query operations.</td>
  </tr>
  <tr>
    <td>azure_apirequestsfailurerate_average, azure_apirequestsfailurerate_count, azure_apirequestsfailurerate_maximum, azure_apirequestsfailurerate_minimum, azure_apirequestsfailurerate_total</td>
    <td>Percent</td>
    <td>The percentage of API requests that the service receives for your instance that return an internal error (500) response code for Digital Twins read, write, delete and query operations.</td>
  </tr>
  <tr>
    <td>azure_apirequestslatency_average, azure_apirequestslatency_count, azure_apirequestslatency_maximum, azure_apirequestslatency_minimum, azure_apirequestslatency_total</td>
    <td>Milliseconds</td>
    <td>The response time for API requests, i.e. from when the request is received by Azure Digital Twins until the service sends a success/fail result for Digital Twins read, write, delete and query operations.</td>
  </tr>
  <tr>
    <td>azure_billingapioperations_average, azure_billingapioperations_count, azure_billingapioperations_maximum, azure_billingapioperations_minimum, azure_billingapioperations_total</td>
    <td>Count</td>
    <td>Billing metric for the count of all API requests made against the Azure Digital Twins service.</td>
  </tr>
  <tr>
    <td>azure_billingmessagesprocessed_average, azure_billingmessagesprocessed_count, azure_billingmessagesprocessed_maximum, azure_billingmessagesprocessed_minimum, azure_billingmessagesprocessed_total</td>
    <td>Count</td>
    <td>Billing metric for the number of messages sent out from Azure Digital Twins to external endpoints.</td>
  </tr>
  <tr>
    <td>azure_billingqueryunits_average, azure_billingqueryunits_count, azure_billingqueryunits_maximum, azure_billingqueryunits_minimum, azure_billingqueryunits_total</td>
    <td>Count</td>
    <td>The number of Query Units, an internally computed measure of service resource usage, consumed to execute queries.</td>
  </tr>
  <tr>
    <td>azure_bulkoperationentitycount_average, azure_bulkoperationentitycount_count, azure_bulkoperationentitycount_maximum, azure_bulkoperationentitycount_minimum, azure_bulkoperationentitycount_total</td>
    <td>Count</td>
    <td>The number of twins, models, or relationships processed by a bulk operation.</td>
  </tr>
  <tr>
    <td>azure_bulkoperationlatency_average, azure_bulkoperationlatency_count, azure_bulkoperationlatency_maximum, azure_bulkoperationlatency_minimum, azure_bulkoperationlatency_total</td>
    <td>Milliseconds</td>
    <td>Total time taken for a bulk operation to complete.</td>
  </tr>
  <tr>
    <td>azure_datahistoryrouting_average, azure_datahistoryrouting_count, azure_datahistoryrouting_maximum, azure_datahistoryrouting_minimum, azure_datahistoryrouting_total</td>
    <td>Count</td>
    <td>The number of messages routed to a time series database.</td>
  </tr>
  <tr>
    <td>azure_datahistoryroutingfailurerate_average, azure_datahistoryroutingfailurerate_count, azure_datahistoryroutingfailurerate_maximum, azure_datahistoryroutingfailurerate_minimum, azure_datahistoryroutingfailurerate_total</td>
    <td>Percent</td>
    <td>The percentage of events that result in an error as they are routed from Azure Digital Twins to a time series database.</td>
  </tr>
  <tr>
    <td>azure_datahistoryroutinglatency_average, azure_datahistoryroutinglatency_count, azure_datahistoryroutinglatency_maximum, azure_datahistoryroutinglatency_minimum, azure_datahistoryroutinglatency_total</td>
    <td>Milliseconds</td>
    <td>Time elapsed between an event getting routed from Azure Digital Twins to when it is posted to a time series database.</td>
  </tr>
  <tr>
    <td>azure_ingressevents_average, azure_ingressevents_count, azure_ingressevents_maximum, azure_ingressevents_minimum, azure_ingressevents_total</td>
    <td>Count</td>
    <td>The number of incoming telemetry events into Azure Digital Twins.</td>
  </tr>
  <tr>
    <td>azure_ingresseventsfailurerate_average, azure_ingresseventsfailurerate_count, azure_ingresseventsfailurerate_maximum, azure_ingresseventsfailurerate_minimum, azure_ingresseventsfailurerate_total</td>
    <td>Percent</td>
    <td>The percentage of incoming telemetry events for which the service returns an internal error (500) response code.</td>
  </tr>
  <tr>
    <td>azure_ingresseventslatency_average, azure_ingresseventslatency_count, azure_ingresseventslatency_maximum, azure_ingresseventslatency_minimum, azure_ingresseventslatency_total</td>
    <td>Milliseconds</td>
    <td>The time from when an event arrives to when it is ready to be egressed by Azure Digital Twins, at which point the service sends a success/fail result.</td>
  </tr>
  <tr>
    <td>azure_modelcount_average, azure_modelcount_count, azure_modelcount_maximum, azure_modelcount_minimum, azure_modelcount_total</td>
    <td>Count</td>
    <td>Total number of models in the Azure Digital Twins instance. Use this metric to determine if you are approaching the service limit for max number of models allowed per instance.</td>
  </tr>
  <tr>
    <td>azure_routing_average, azure_routing_count, azure_routing_maximum, azure_routing_minimum, azure_routing_total</td>
    <td>Count</td>
    <td>The number of messages routed to an endpoint Azure service such as Event Hub, Service Bus or Event Grid.</td>
  </tr>
  <tr>
    <td>azure_routingfailurerate_average, azure_routingfailurerate_count, azure_routingfailurerate_maximum, azure_routingfailurerate_minimum, azure_routingfailurerate_total</td>
    <td>Percent</td>
    <td>The percentage of events that result in an error as they are routed from Azure Digital Twins to an endpoint Azure service such as Event Hub, Service Bus or Event Grid.</td>
  </tr>
  <tr>
    <td>azure_routinglatency_average, azure_routinglatency_count, azure_routinglatency_maximum, azure_routinglatency_minimum, azure_routinglatency_total</td>
    <td>Milliseconds</td>
    <td>Time elapsed between an event getting routed from Azure Digital Twins to when it is posted to the endpoint Azure service such as Event Hub, Service Bus or Event Grid.</td>
  </tr>
  <tr>
    <td>azure_twincount_average, azure_twincount_count, azure_twincount_maximum, azure_twincount_minimum, azure_twincount_total</td>
    <td>Count</td>
    <td>Total number of twins in the Azure Digital Twins instance. Use this metric to determine if you are approaching the service limit for max number of twins allowed per instance.</td>
  </tr>
</table>
