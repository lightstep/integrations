---
title: Azure Microsoft.Synapse/workspaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Synapse/workspaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Synapse/workspaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Synapse/workspaces, **PUT DESCRIPTION HERE**. 

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
    <td>azure_builtinsqlpooldataprocessedbytes_average, azure_builtinsqlpooldataprocessedbytes_count, azure_builtinsqlpooldataprocessedbytes_maximum, azure_builtinsqlpooldataprocessedbytes_minimum, azure_builtinsqlpooldataprocessedbytes_total</td>
    <td>Bytes</td>
    <td>Amount of data processed by queries</td>
  </tr>
  <tr>
    <td>azure_builtinsqlpoolloginattempts_average, azure_builtinsqlpoolloginattempts_count, azure_builtinsqlpoolloginattempts_maximum, azure_builtinsqlpoolloginattempts_minimum, azure_builtinsqlpoolloginattempts_total</td>
    <td>Count</td>
    <td>Count of login attempts that succeded or failed</td>
  </tr>
  <tr>
    <td>azure_builtinsqlpoolrequestsended_average, azure_builtinsqlpoolrequestsended_count, azure_builtinsqlpoolrequestsended_maximum, azure_builtinsqlpoolrequestsended_minimum, azure_builtinsqlpoolrequestsended_total</td>
    <td>Count</td>
    <td>Count of Requests that succeeded, failed, or were cancelled</td>
  </tr>
  <tr>
    <td>azure_integrationactivityrunsended_average, azure_integrationactivityrunsended_count, azure_integrationactivityrunsended_maximum, azure_integrationactivityrunsended_minimum, azure_integrationactivityrunsended_total</td>
    <td>Count</td>
    <td>Count of integration activities that succeeded, failed, or were cancelled</td>
  </tr>
  <tr>
    <td>azure_integrationlinkconnectionevents_average, azure_integrationlinkconnectionevents_count, azure_integrationlinkconnectionevents_maximum, azure_integrationlinkconnectionevents_minimum, azure_integrationlinkconnectionevents_total</td>
    <td>Count</td>
    <td>Number of Synapse Link connection events including start, stop and failure.</td>
  </tr>
  <tr>
    <td>azure_integrationlinkprocessedchangedrows_average, azure_integrationlinkprocessedchangedrows_count, azure_integrationlinkprocessedchangedrows_maximum, azure_integrationlinkprocessedchangedrows_minimum, azure_integrationlinkprocessedchangedrows_total</td>
    <td>Count</td>
    <td>Changed row count processed by Synapse Link.</td>
  </tr>
  <tr>
    <td>azure_integrationlinkprocesseddatavolume_average, azure_integrationlinkprocesseddatavolume_count, azure_integrationlinkprocesseddatavolume_maximum, azure_integrationlinkprocesseddatavolume_minimum, azure_integrationlinkprocesseddatavolume_total</td>
    <td>Bytes</td>
    <td>Data volume in bytes processed by Synapse Link.</td>
  </tr>
  <tr>
    <td>azure_integrationlinkprocessinglatencyinseconds_average, azure_integrationlinkprocessinglatencyinseconds_count, azure_integrationlinkprocessinglatencyinseconds_maximum, azure_integrationlinkprocessinglatencyinseconds_minimum, azure_integrationlinkprocessinglatencyinseconds_total</td>
    <td>Count</td>
    <td>Synapse Link data processing latency in seconds.</td>
  </tr>
  <tr>
    <td>azure_integrationlinktableevents_average, azure_integrationlinktableevents_count, azure_integrationlinktableevents_maximum, azure_integrationlinktableevents_minimum, azure_integrationlinktableevents_total</td>
    <td>Count</td>
    <td>Number of Synapse Link table events including snapshot, removal and failure.</td>
  </tr>
  <tr>
    <td>azure_integrationpipelinerunsended_average, azure_integrationpipelinerunsended_count, azure_integrationpipelinerunsended_maximum, azure_integrationpipelinerunsended_minimum, azure_integrationpipelinerunsended_total</td>
    <td>Count</td>
    <td>Count of integration pipeline runs that succeeded, failed, or were cancelled</td>
  </tr>
  <tr>
    <td>azure_integrationtriggerrunsended_average, azure_integrationtriggerrunsended_count, azure_integrationtriggerrunsended_maximum, azure_integrationtriggerrunsended_minimum, azure_integrationtriggerrunsended_total</td>
    <td>Count</td>
    <td>Count of integration triggers that succeeded, failed, or were cancelled</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingbackloggedinputeventsources_average, azure_sqlstreamingbackloggedinputeventsources_count, azure_sqlstreamingbackloggedinputeventsources_maximum, azure_sqlstreamingbackloggedinputeventsources_minimum, azure_sqlstreamingbackloggedinputeventsources_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of input events sources backlogged.</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingconversionerrors_average, azure_sqlstreamingconversionerrors_count, azure_sqlstreamingconversionerrors_maximum, azure_sqlstreamingconversionerrors_minimum, azure_sqlstreamingconversionerrors_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of output events that could not be converted to the expected output schema. Error policy can be changed to 'Drop' to drop events that encounter this scenario.</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingdeserializationerror_average, azure_sqlstreamingdeserializationerror_count, azure_sqlstreamingdeserializationerror_maximum, azure_sqlstreamingdeserializationerror_minimum, azure_sqlstreamingdeserializationerror_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of input events that could not be deserialized.</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingearlyinputevents_average, azure_sqlstreamingearlyinputevents_count, azure_sqlstreamingearlyinputevents_maximum, azure_sqlstreamingearlyinputevents_minimum, azure_sqlstreamingearlyinputevents_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of input events which application time is considered early compared to arrival time, according to early arrival policy.</td>
  </tr>
  <tr>
    <td>azure_sqlstreaminginputeventbytes_average, azure_sqlstreaminginputeventbytes_count, azure_sqlstreaminginputeventbytes_maximum, azure_sqlstreaminginputeventbytes_minimum, azure_sqlstreaminginputeventbytes_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Amount of data received by the streaming job, in bytes. This can be used to validate that events are being sent to the input source.</td>
  </tr>
  <tr>
    <td>azure_sqlstreaminginputevents_average, azure_sqlstreaminginputevents_count, azure_sqlstreaminginputevents_maximum, azure_sqlstreaminginputevents_minimum, azure_sqlstreaminginputevents_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of input events.</td>
  </tr>
  <tr>
    <td>azure_sqlstreaminginputeventssourcespersecond_average, azure_sqlstreaminginputeventssourcespersecond_count, azure_sqlstreaminginputeventssourcespersecond_maximum, azure_sqlstreaminginputeventssourcespersecond_minimum, azure_sqlstreaminginputeventssourcespersecond_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of input events sources per second.</td>
  </tr>
  <tr>
    <td>azure_sqlstreaminglateinputevents_average, azure_sqlstreaminglateinputevents_count, azure_sqlstreaminglateinputevents_maximum, azure_sqlstreaminglateinputevents_minimum, azure_sqlstreaminglateinputevents_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of input events which application time is considered late compared to arrival time, according to late arrival policy.</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingoutoforderevents_average, azure_sqlstreamingoutoforderevents_count, azure_sqlstreamingoutoforderevents_maximum, azure_sqlstreamingoutoforderevents_minimum, azure_sqlstreamingoutoforderevents_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of Event Hub Events (serialized messages) received by the Event Hub Input Adapter, received out of order that were either dropped or given an adjusted timestamp, based on the Event Ordering Policy.</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingoutputevents_average, azure_sqlstreamingoutputevents_count, azure_sqlstreamingoutputevents_maximum, azure_sqlstreamingoutputevents_minimum, azure_sqlstreamingoutputevents_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Number of output events.</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingoutputwatermarkdelayseconds_average, azure_sqlstreamingoutputwatermarkdelayseconds_count, azure_sqlstreamingoutputwatermarkdelayseconds_maximum, azure_sqlstreamingoutputwatermarkdelayseconds_minimum, azure_sqlstreamingoutputwatermarkdelayseconds_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Output watermark delay in seconds.</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingresourceutilization_average, azure_sqlstreamingresourceutilization_count, azure_sqlstreamingresourceutilization_maximum, azure_sqlstreamingresourceutilization_minimum, azure_sqlstreamingresourceutilization_total</td>
    <td>Percent</td>
    <td>This is a preview metric available in East US, West Europe. Resource utilization expressed as a percentage. High utilization indicates that the job is using close to the maximum allocated resources.</td>
  </tr>
  <tr>
    <td>azure_sqlstreamingruntimeerrors_average, azure_sqlstreamingruntimeerrors_count, azure_sqlstreamingruntimeerrors_maximum, azure_sqlstreamingruntimeerrors_minimum, azure_sqlstreamingruntimeerrors_total</td>
    <td>Count</td>
    <td>This is a preview metric available in East US, West Europe. Total number of errors related to query processing (excluding errors found while ingesting events or outputting results).</td>
  </tr>
</table>
