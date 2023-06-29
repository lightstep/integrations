---
title: Azure Microsoft.Media/mediaservices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Media/mediaservices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Media/mediaservices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Media/mediaservices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_assetcount_average, azure_assetcount_count, azure_assetcount_maximum, azure_assetcount_minimum, azure_assetcount_total</td>
    <td>Count</td>
    <td>How many assets are already created in current media service account</td>
  </tr>
  <tr>
    <td>azure_assetquota_average, azure_assetquota_count, azure_assetquota_maximum, azure_assetquota_minimum, azure_assetquota_total</td>
    <td>Count</td>
    <td>How many assets are allowed for current media service account</td>
  </tr>
  <tr>
    <td>azure_assetquotausedpercentage_average, azure_assetquotausedpercentage_count, azure_assetquotausedpercentage_maximum, azure_assetquotausedpercentage_minimum, azure_assetquotausedpercentage_total</td>
    <td>Percent</td>
    <td>Asset used percentage in current media service account</td>
  </tr>
  <tr>
    <td>azure_channelsandliveeventscount_average, azure_channelsandliveeventscount_count, azure_channelsandliveeventscount_maximum, azure_channelsandliveeventscount_minimum, azure_channelsandliveeventscount_total</td>
    <td>Count</td>
    <td>The total number of live events in the current media services account</td>
  </tr>
  <tr>
    <td>azure_contentkeypolicycount_average, azure_contentkeypolicycount_count, azure_contentkeypolicycount_maximum, azure_contentkeypolicycount_minimum, azure_contentkeypolicycount_total</td>
    <td>Count</td>
    <td>How many content key policies are already created in current media service account</td>
  </tr>
  <tr>
    <td>azure_contentkeypolicyquota_average, azure_contentkeypolicyquota_count, azure_contentkeypolicyquota_maximum, azure_contentkeypolicyquota_minimum, azure_contentkeypolicyquota_total</td>
    <td>Count</td>
    <td>How many content key polices are allowed for current media service account</td>
  </tr>
  <tr>
    <td>azure_contentkeypolicyquotausedpercentage_average, azure_contentkeypolicyquotausedpercentage_count, azure_contentkeypolicyquotausedpercentage_maximum, azure_contentkeypolicyquotausedpercentage_minimum, azure_contentkeypolicyquotausedpercentage_total</td>
    <td>Percent</td>
    <td>Content Key Policy used percentage in current media service account</td>
  </tr>
  <tr>
    <td>azure_jobquota_average, azure_jobquota_count, azure_jobquota_maximum, azure_jobquota_minimum, azure_jobquota_total</td>
    <td>Count</td>
    <td>The Job quota for the current media service account.</td>
  </tr>
  <tr>
    <td>azure_jobsscheduled_average, azure_jobsscheduled_count, azure_jobsscheduled_maximum, azure_jobsscheduled_minimum, azure_jobsscheduled_total</td>
    <td>Count</td>
    <td>The number of Jobs in the Scheduled state. Counts on this metric only reflect jobs submitted through the v3 API. Jobs submitted through the v2 (Legacy) API are not counted.</td>
  </tr>
  <tr>
    <td>azure_keydeliveryrequests_average, azure_keydeliveryrequests_count, azure_keydeliveryrequests_maximum, azure_keydeliveryrequests_minimum, azure_keydeliveryrequests_total</td>
    <td>Count</td>
    <td>The key delivery request status and latency in milliseconds for the current Media Service account.</td>
  </tr>
  <tr>
    <td>azure_maxchannelsandliveeventscount_average, azure_maxchannelsandliveeventscount_count, azure_maxchannelsandliveeventscount_maximum, azure_maxchannelsandliveeventscount_minimum, azure_maxchannelsandliveeventscount_total</td>
    <td>Count</td>
    <td>The maximum number of live events allowed in the current media services account</td>
  </tr>
  <tr>
    <td>azure_maxrunningchannelsandliveeventscount_average, azure_maxrunningchannelsandliveeventscount_count, azure_maxrunningchannelsandliveeventscount_maximum, azure_maxrunningchannelsandliveeventscount_minimum, azure_maxrunningchannelsandliveeventscount_total</td>
    <td>Count</td>
    <td>The maximum number of running live events allowed in the current media services account</td>
  </tr>
  <tr>
    <td>azure_runningchannelsandliveeventscount_average, azure_runningchannelsandliveeventscount_count, azure_runningchannelsandliveeventscount_maximum, azure_runningchannelsandliveeventscount_minimum, azure_runningchannelsandliveeventscount_total</td>
    <td>Count</td>
    <td>The total number of running live events in the current media services account</td>
  </tr>
  <tr>
    <td>azure_streamingpolicycount_average, azure_streamingpolicycount_count, azure_streamingpolicycount_maximum, azure_streamingpolicycount_minimum, azure_streamingpolicycount_total</td>
    <td>Count</td>
    <td>How many streaming policies are already created in current media service account</td>
  </tr>
  <tr>
    <td>azure_streamingpolicyquota_average, azure_streamingpolicyquota_count, azure_streamingpolicyquota_maximum, azure_streamingpolicyquota_minimum, azure_streamingpolicyquota_total</td>
    <td>Count</td>
    <td>How many streaming policies are allowed for current media service account</td>
  </tr>
  <tr>
    <td>azure_streamingpolicyquotausedpercentage_average, azure_streamingpolicyquotausedpercentage_count, azure_streamingpolicyquotausedpercentage_maximum, azure_streamingpolicyquotausedpercentage_minimum, azure_streamingpolicyquotausedpercentage_total</td>
    <td>Percent</td>
    <td>Streaming Policy used percentage in current media service account</td>
  </tr>
  <tr>
    <td>azure_transformquota_average, azure_transformquota_count, azure_transformquota_maximum, azure_transformquota_minimum, azure_transformquota_total</td>
    <td>Count</td>
    <td>The Transform quota for the current media service account.</td>
  </tr>
</table>
