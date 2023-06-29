---
title: Azure Microsoft.StreamAnalytics/streamingjobs metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.StreamAnalytics/streamingjobs metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.StreamAnalytics/streamingjobs
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.StreamAnalytics/streamingjobs, **PUT DESCRIPTION HERE**. 

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
    <td>azure_amlcalloutfailedrequests_average, azure_amlcalloutfailedrequests_count, azure_amlcalloutfailedrequests_maximum, azure_amlcalloutfailedrequests_minimum, azure_amlcalloutfailedrequests_total</td>
    <td>Count</td>
    <td>Failed Function Requests</td>
  </tr>
  <tr>
    <td>azure_amlcalloutinputevents_average, azure_amlcalloutinputevents_count, azure_amlcalloutinputevents_maximum, azure_amlcalloutinputevents_minimum, azure_amlcalloutinputevents_total</td>
    <td>Count</td>
    <td>Function Events</td>
  </tr>
  <tr>
    <td>azure_amlcalloutrequests_average, azure_amlcalloutrequests_count, azure_amlcalloutrequests_maximum, azure_amlcalloutrequests_minimum, azure_amlcalloutrequests_total</td>
    <td>Count</td>
    <td>Function Requests</td>
  </tr>
  <tr>
    <td>azure_conversionerrors_average, azure_conversionerrors_count, azure_conversionerrors_maximum, azure_conversionerrors_minimum, azure_conversionerrors_total</td>
    <td>Count</td>
    <td>Data Conversion Errors</td>
  </tr>
  <tr>
    <td>azure_deserializationerror_average, azure_deserializationerror_count, azure_deserializationerror_maximum, azure_deserializationerror_minimum, azure_deserializationerror_total</td>
    <td>Count</td>
    <td>Input Deserialization Errors</td>
  </tr>
  <tr>
    <td>azure_droppedoradjustedevents_average, azure_droppedoradjustedevents_count, azure_droppedoradjustedevents_maximum, azure_droppedoradjustedevents_minimum, azure_droppedoradjustedevents_total</td>
    <td>Count</td>
    <td>Out of order Events</td>
  </tr>
  <tr>
    <td>azure_earlyinputevents_average, azure_earlyinputevents_count, azure_earlyinputevents_maximum, azure_earlyinputevents_minimum, azure_earlyinputevents_total</td>
    <td>Count</td>
    <td>Early Input Events</td>
  </tr>
  <tr>
    <td>azure_errors_average, azure_errors_count, azure_errors_maximum, azure_errors_minimum, azure_errors_total</td>
    <td>Count</td>
    <td>Runtime Errors</td>
  </tr>
  <tr>
    <td>azure_inputeventbytes_average, azure_inputeventbytes_count, azure_inputeventbytes_maximum, azure_inputeventbytes_minimum, azure_inputeventbytes_total</td>
    <td>Bytes</td>
    <td>Input Event Bytes</td>
  </tr>
  <tr>
    <td>azure_inputevents_average, azure_inputevents_count, azure_inputevents_maximum, azure_inputevents_minimum, azure_inputevents_total</td>
    <td>Count</td>
    <td>Input Events</td>
  </tr>
  <tr>
    <td>azure_inputeventssourcesbacklogged_average, azure_inputeventssourcesbacklogged_count, azure_inputeventssourcesbacklogged_maximum, azure_inputeventssourcesbacklogged_minimum, azure_inputeventssourcesbacklogged_total</td>
    <td>Count</td>
    <td>Backlogged Input Events</td>
  </tr>
  <tr>
    <td>azure_inputeventssourcespersecond_average, azure_inputeventssourcespersecond_count, azure_inputeventssourcespersecond_maximum, azure_inputeventssourcespersecond_minimum, azure_inputeventssourcespersecond_total</td>
    <td>Count</td>
    <td>Input Sources Received</td>
  </tr>
  <tr>
    <td>azure_lateinputevents_average, azure_lateinputevents_count, azure_lateinputevents_maximum, azure_lateinputevents_minimum, azure_lateinputevents_total</td>
    <td>Count</td>
    <td>Late Input Events</td>
  </tr>
  <tr>
    <td>azure_outputevents_average, azure_outputevents_count, azure_outputevents_maximum, azure_outputevents_minimum, azure_outputevents_total</td>
    <td>Count</td>
    <td>Output Events</td>
  </tr>
  <tr>
    <td>azure_outputwatermarkdelayseconds_average, azure_outputwatermarkdelayseconds_count, azure_outputwatermarkdelayseconds_maximum, azure_outputwatermarkdelayseconds_minimum, azure_outputwatermarkdelayseconds_total</td>
    <td>Seconds</td>
    <td>Watermark Delay</td>
  </tr>
  <tr>
    <td>azure_processcpuusagepercentage_average, azure_processcpuusagepercentage_count, azure_processcpuusagepercentage_maximum, azure_processcpuusagepercentage_minimum, azure_processcpuusagepercentage_total</td>
    <td>Percent</td>
    <td>CPU % Utilization</td>
  </tr>
  <tr>
    <td>azure_resourceutilization_average, azure_resourceutilization_count, azure_resourceutilization_maximum, azure_resourceutilization_minimum, azure_resourceutilization_total</td>
    <td>Percent</td>
    <td>SU (Memory) % Utilization</td>
  </tr>
</table>
