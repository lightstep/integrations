---
title: Azure Microsoft.Synapse/workspaces/kustoPools metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Synapse/workspaces/kustoPools metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Synapse/workspaces/kustoPools
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Synapse/workspaces/kustoPools, **PUT DESCRIPTION HERE**. 

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
    <td>azure_batchblobcount_average, azure_batchblobcount_count, azure_batchblobcount_maximum, azure_batchblobcount_minimum, azure_batchblobcount_total</td>
    <td>Count</td>
    <td>Number of data sources in an aggregated batch for ingestion.</td>
  </tr>
  <tr>
    <td>azure_batchduration_average, azure_batchduration_count, azure_batchduration_maximum, azure_batchduration_minimum, azure_batchduration_total</td>
    <td>Seconds</td>
    <td>The duration of the aggregation phase in the ingestion flow.</td>
  </tr>
  <tr>
    <td>azure_batchesprocessed_average, azure_batchesprocessed_count, azure_batchesprocessed_maximum, azure_batchesprocessed_minimum, azure_batchesprocessed_total</td>
    <td>Count</td>
    <td>Number of batches aggregated for ingestion. Batching Type: whether the batch reached batching time, data size or number of files limit set by batching policy</td>
  </tr>
  <tr>
    <td>azure_batchsize_average, azure_batchsize_count, azure_batchsize_maximum, azure_batchsize_minimum, azure_batchsize_total</td>
    <td>Bytes</td>
    <td>Uncompressed expected data size in an aggregated batch for ingestion.</td>
  </tr>
  <tr>
    <td>azure_blobsdropped_average, azure_blobsdropped_count, azure_blobsdropped_maximum, azure_blobsdropped_minimum, azure_blobsdropped_total</td>
    <td>Count</td>
    <td>Number of blobs permanently rejected by a component.</td>
  </tr>
  <tr>
    <td>azure_blobsprocessed_average, azure_blobsprocessed_count, azure_blobsprocessed_maximum, azure_blobsprocessed_minimum, azure_blobsprocessed_total</td>
    <td>Count</td>
    <td>Number of blobs processed by a component.</td>
  </tr>
  <tr>
    <td>azure_blobsreceived_average, azure_blobsreceived_count, azure_blobsreceived_maximum, azure_blobsreceived_minimum, azure_blobsreceived_total</td>
    <td>Count</td>
    <td>Number of blobs received from input stream by a component.</td>
  </tr>
  <tr>
    <td>azure_cacheutilization_average, azure_cacheutilization_count, azure_cacheutilization_maximum, azure_cacheutilization_minimum, azure_cacheutilization_total</td>
    <td>Percent</td>
    <td>Utilization level in the cluster scope. The metric is deprecated and presented for backward compatibility only, you should use the 'Cache utilization factor' metric instead.</td>
  </tr>
  <tr>
    <td>azure_cacheutilizationfactor_average, azure_cacheutilizationfactor_count, azure_cacheutilizationfactor_maximum, azure_cacheutilizationfactor_minimum, azure_cacheutilizationfactor_total</td>
    <td>Percent</td>
    <td>Percentage of utilized disk space dedicated for hot cache in the cluster. 100% means that the disk space assigned to hot data is optimally utilized. No action is needed in terms of the cache size. More than 100% means that the cluster's disk space is not large enough to accommodate the hot data, as defined by your caching policies. To ensure that sufficient space is available for all the hot data, the amount of hot data needs to be reduced or the cluster needs to be scaled out. Enabling auto scale is recommended.</td>
  </tr>
  <tr>
    <td>azure_continuousexportmaxlatenessminutes_average, azure_continuousexportmaxlatenessminutes_count, azure_continuousexportmaxlatenessminutes_maximum, azure_continuousexportmaxlatenessminutes_minimum, azure_continuousexportmaxlatenessminutes_total</td>
    <td>Count</td>
    <td>The lateness (in minutes) reported by the continuous export jobs in the cluster</td>
  </tr>
  <tr>
    <td>azure_continuousexportnumofrecordsexported_average, azure_continuousexportnumofrecordsexported_count, azure_continuousexportnumofrecordsexported_maximum, azure_continuousexportnumofrecordsexported_minimum, azure_continuousexportnumofrecordsexported_total</td>
    <td>Count</td>
    <td>Number of records exported, fired for every storage artifact written during the export operation</td>
  </tr>
  <tr>
    <td>azure_continuousexportpendingcount_average, azure_continuousexportpendingcount_count, azure_continuousexportpendingcount_maximum, azure_continuousexportpendingcount_minimum, azure_continuousexportpendingcount_total</td>
    <td>Count</td>
    <td>The number of pending continuous export jobs ready for execution</td>
  </tr>
  <tr>
    <td>azure_continuousexportresult_average, azure_continuousexportresult_count, azure_continuousexportresult_maximum, azure_continuousexportresult_minimum, azure_continuousexportresult_total</td>
    <td>Count</td>
    <td>Indicates whether Continuous Export succeeded or failed</td>
  </tr>
  <tr>
    <td>azure_cpu_average, azure_cpu_count, azure_cpu_maximum, azure_cpu_minimum, azure_cpu_total</td>
    <td>Percent</td>
    <td>CPU utilization level</td>
  </tr>
  <tr>
    <td>azure_discoverylatency_average, azure_discoverylatency_count, azure_discoverylatency_maximum, azure_discoverylatency_minimum, azure_discoverylatency_total</td>
    <td>Seconds</td>
    <td>Reported by data connections (if exist). Time in seconds from when a message is enqueued or event is created until it is discovered by data connection. This time is not included in the Azure Data Explorer total ingestion duration.</td>
  </tr>
  <tr>
    <td>azure_eventsdropped_average, azure_eventsdropped_count, azure_eventsdropped_maximum, azure_eventsdropped_minimum, azure_eventsdropped_total</td>
    <td>Count</td>
    <td>Number of events dropped permanently by data connection. An Ingestion result metric with a failure reason will be sent.</td>
  </tr>
  <tr>
    <td>azure_eventsprocessed_average, azure_eventsprocessed_count, azure_eventsprocessed_maximum, azure_eventsprocessed_minimum, azure_eventsprocessed_total</td>
    <td>Count</td>
    <td>Number of events processed by the cluster</td>
  </tr>
  <tr>
    <td>azure_eventsprocessedforeventhubs_average, azure_eventsprocessedforeventhubs_count, azure_eventsprocessedforeventhubs_maximum, azure_eventsprocessedforeventhubs_minimum, azure_eventsprocessedforeventhubs_total</td>
    <td>Count</td>
    <td>Number of events processed by the cluster when ingesting from Event/IoT Hub</td>
  </tr>
  <tr>
    <td>azure_eventsreceived_average, azure_eventsreceived_count, azure_eventsreceived_maximum, azure_eventsreceived_minimum, azure_eventsreceived_total</td>
    <td>Count</td>
    <td>Number of events received by data connection.</td>
  </tr>
  <tr>
    <td>azure_exportutilization_average, azure_exportutilization_count, azure_exportutilization_maximum, azure_exportutilization_minimum, azure_exportutilization_total</td>
    <td>Percent</td>
    <td>Export utilization</td>
  </tr>
  <tr>
    <td>azure_followerlatency_average, azure_followerlatency_count, azure_followerlatency_maximum, azure_followerlatency_minimum, azure_followerlatency_total</td>
    <td>MilliSeconds</td>
    <td>The follower databases synchronize changes in the leader databases. Because of the synchronization, there's a data lag of a few seconds to a few minutes in data availability.This metric measures the length of the time lag. The time lag depends on the overall size of the leader database metadata.This is a cluster level metrics: the followers catch metadata of all databases that are followed. This metric represents the latency of the process.</td>
  </tr>
  <tr>
    <td>azure_ingestionlatencyinseconds_average, azure_ingestionlatencyinseconds_count, azure_ingestionlatencyinseconds_maximum, azure_ingestionlatencyinseconds_minimum, azure_ingestionlatencyinseconds_total</td>
    <td>Seconds</td>
    <td>Latency of data ingested, from the time the data was received in the cluster until it's ready for query. The ingestion latency period depends on the ingestion scenario.</td>
  </tr>
  <tr>
    <td>azure_ingestionresult_average, azure_ingestionresult_count, azure_ingestionresult_maximum, azure_ingestionresult_minimum, azure_ingestionresult_total</td>
    <td>Count</td>
    <td>Total number of sources that either failed or succeeded to be ingested. Splitting the metric by status, you can get detailed information about the status of the ingestion operations.</td>
  </tr>
  <tr>
    <td>azure_ingestionutilization_average, azure_ingestionutilization_count, azure_ingestionutilization_maximum, azure_ingestionutilization_minimum, azure_ingestionutilization_total</td>
    <td>Percent</td>
    <td>Ratio of used ingestion slots in the cluster</td>
  </tr>
  <tr>
    <td>azure_ingestionvolumeinmb_average, azure_ingestionvolumeinmb_count, azure_ingestionvolumeinmb_maximum, azure_ingestionvolumeinmb_minimum, azure_ingestionvolumeinmb_total</td>
    <td>Bytes</td>
    <td>Overall volume of ingested data to the cluster</td>
  </tr>
  <tr>
    <td>azure_instancecount_average, azure_instancecount_count, azure_instancecount_maximum, azure_instancecount_minimum, azure_instancecount_total</td>
    <td>Count</td>
    <td>Total instance count</td>
  </tr>
  <tr>
    <td>azure_keepalive_average, azure_keepalive_count, azure_keepalive_maximum, azure_keepalive_minimum, azure_keepalive_total</td>
    <td>Count</td>
    <td>Sanity check indicates the cluster responds to queries</td>
  </tr>
  <tr>
    <td>azure_materializedviewageminutes_average, azure_materializedviewageminutes_count, azure_materializedviewageminutes_maximum, azure_materializedviewageminutes_minimum, azure_materializedviewageminutes_total</td>
    <td>Count</td>
    <td>The materialized view age in minutes</td>
  </tr>
  <tr>
    <td>azure_materializedviewageseconds_average, azure_materializedviewageseconds_count, azure_materializedviewageseconds_maximum, azure_materializedviewageseconds_minimum, azure_materializedviewageseconds_total</td>
    <td>Seconds</td>
    <td>The materialized view age in seconds</td>
  </tr>
  <tr>
    <td>azure_materializedviewdataloss_average, azure_materializedviewdataloss_count, azure_materializedviewdataloss_maximum, azure_materializedviewdataloss_minimum, azure_materializedviewdataloss_total</td>
    <td>Count</td>
    <td>Indicates potential data loss in materialized view</td>
  </tr>
  <tr>
    <td>azure_materializedviewextentsrebuild_average, azure_materializedviewextentsrebuild_count, azure_materializedviewextentsrebuild_maximum, azure_materializedviewextentsrebuild_minimum, azure_materializedviewextentsrebuild_total</td>
    <td>Count</td>
    <td>Number of extents rebuild</td>
  </tr>
  <tr>
    <td>azure_materializedviewhealth_average, azure_materializedviewhealth_count, azure_materializedviewhealth_maximum, azure_materializedviewhealth_minimum, azure_materializedviewhealth_total</td>
    <td>Count</td>
    <td>The health of the materialized view (1 for healthy, 0 for non-healthy)</td>
  </tr>
  <tr>
    <td>azure_materializedviewrecordsindelta_average, azure_materializedviewrecordsindelta_count, azure_materializedviewrecordsindelta_maximum, azure_materializedviewrecordsindelta_minimum, azure_materializedviewrecordsindelta_total</td>
    <td>Count</td>
    <td>The number of records in the non-materialized part of the view</td>
  </tr>
  <tr>
    <td>azure_materializedviewresult_average, azure_materializedviewresult_count, azure_materializedviewresult_maximum, azure_materializedviewresult_minimum, azure_materializedviewresult_total</td>
    <td>Count</td>
    <td>The result of the materialization process</td>
  </tr>
  <tr>
    <td>azure_queryduration_average, azure_queryduration_count, azure_queryduration_maximum, azure_queryduration_minimum, azure_queryduration_total</td>
    <td>MilliSeconds</td>
    <td>Queries duration in seconds</td>
  </tr>
  <tr>
    <td>azure_queryresult_average, azure_queryresult_count, azure_queryresult_maximum, azure_queryresult_minimum, azure_queryresult_total</td>
    <td>Count</td>
    <td>Total number of queries.</td>
  </tr>
  <tr>
    <td>azure_queuelength_average, azure_queuelength_count, azure_queuelength_maximum, azure_queuelength_minimum, azure_queuelength_total</td>
    <td>Count</td>
    <td>Number of pending messages in a component's queue.</td>
  </tr>
  <tr>
    <td>azure_queueoldestmessage_average, azure_queueoldestmessage_count, azure_queueoldestmessage_maximum, azure_queueoldestmessage_minimum, azure_queueoldestmessage_total</td>
    <td>Count</td>
    <td>Time in seconds from when the oldest message in queue was inserted.</td>
  </tr>
  <tr>
    <td>azure_receiveddatasizebytes_average, azure_receiveddatasizebytes_count, azure_receiveddatasizebytes_maximum, azure_receiveddatasizebytes_minimum, azure_receiveddatasizebytes_total</td>
    <td>Bytes</td>
    <td>Size of data received by data connection. This is the size of the data stream, or of raw data size if provided.</td>
  </tr>
  <tr>
    <td>azure_stagelatency_average, azure_stagelatency_count, azure_stagelatency_maximum, azure_stagelatency_minimum, azure_stagelatency_total</td>
    <td>Seconds</td>
    <td>Cumulative time from when a message is discovered until it is received by the reporting component for processing (discovery time is set when message is enqueued for ingestion queue, or when discovered by data connection).</td>
  </tr>
  <tr>
    <td>azure_streamingingestdatarate_average, azure_streamingingestdatarate_count, azure_streamingingestdatarate_maximum, azure_streamingingestdatarate_minimum, azure_streamingingestdatarate_total</td>
    <td>Bytes</td>
    <td>Streaming ingest data rate</td>
  </tr>
  <tr>
    <td>azure_streamingingestduration_average, azure_streamingingestduration_count, azure_streamingingestduration_maximum, azure_streamingingestduration_minimum, azure_streamingingestduration_total</td>
    <td>MilliSeconds</td>
    <td>Streaming ingest duration in milliseconds</td>
  </tr>
  <tr>
    <td>azure_streamingingestresults_average, azure_streamingingestresults_count, azure_streamingingestresults_maximum, azure_streamingingestresults_minimum, azure_streamingingestresults_total</td>
    <td>Count</td>
    <td>Streaming ingest result</td>
  </tr>
  <tr>
    <td>azure_totalnumberofconcurrentqueries_average, azure_totalnumberofconcurrentqueries_count, azure_totalnumberofconcurrentqueries_maximum, azure_totalnumberofconcurrentqueries_minimum, azure_totalnumberofconcurrentqueries_total</td>
    <td>Count</td>
    <td>Total number of concurrent queries</td>
  </tr>
  <tr>
    <td>azure_totalnumberofextents_average, azure_totalnumberofextents_count, azure_totalnumberofextents_maximum, azure_totalnumberofextents_minimum, azure_totalnumberofextents_total</td>
    <td>Count</td>
    <td>Total number of data extents</td>
  </tr>
  <tr>
    <td>azure_totalnumberofthrottledcommands_average, azure_totalnumberofthrottledcommands_count, azure_totalnumberofthrottledcommands_maximum, azure_totalnumberofthrottledcommands_minimum, azure_totalnumberofthrottledcommands_total</td>
    <td>Count</td>
    <td>Total number of throttled commands</td>
  </tr>
  <tr>
    <td>azure_totalnumberofthrottledqueries_average, azure_totalnumberofthrottledqueries_count, azure_totalnumberofthrottledqueries_maximum, azure_totalnumberofthrottledqueries_minimum, azure_totalnumberofthrottledqueries_total</td>
    <td>Count</td>
    <td>Total number of throttled queries</td>
  </tr>
  <tr>
    <td>azure_weakconsistencylatency_average, azure_weakconsistencylatency_count, azure_weakconsistencylatency_maximum, azure_weakconsistencylatency_minimum, azure_weakconsistencylatency_total</td>
    <td>Seconds</td>
    <td>The max latency between the previous metadata sync and the next one (in DB/node scope)</td>
  </tr>
</table>
