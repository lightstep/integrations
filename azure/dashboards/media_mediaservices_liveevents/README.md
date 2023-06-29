---
title: Azure Microsoft.Media/mediaservices/liveEvents metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Media/mediaservices/liveEvents metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Media/mediaservices/liveEvents
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Media/mediaservices/liveEvents, **PUT DESCRIPTION HERE**. 

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
    <td>azure_ingestbitrate_average, azure_ingestbitrate_count, azure_ingestbitrate_maximum, azure_ingestbitrate_minimum, azure_ingestbitrate_total</td>
    <td>BitsPerSecond</td>
    <td>The incoming bitrate ingested for a live event, in bits per second.</td>
  </tr>
  <tr>
    <td>azure_ingestdriftvalue_average, azure_ingestdriftvalue_count, azure_ingestdriftvalue_maximum, azure_ingestdriftvalue_minimum, azure_ingestdriftvalue_total</td>
    <td>Seconds</td>
    <td>Drift between the timestamp of the ingested content and the system clock, measured in seconds per minute. A non zero value indicates that the ingested content is arriving slower than system clock time.</td>
  </tr>
  <tr>
    <td>azure_ingestlasttimestamp_average, azure_ingestlasttimestamp_count, azure_ingestlasttimestamp_maximum, azure_ingestlasttimestamp_minimum, azure_ingestlasttimestamp_total</td>
    <td>Milliseconds</td>
    <td>Last timestamp ingested for a live event.</td>
  </tr>
  <tr>
    <td>azure_liveoutputlasttimestamp_average, azure_liveoutputlasttimestamp_count, azure_liveoutputlasttimestamp_maximum, azure_liveoutputlasttimestamp_minimum, azure_liveoutputlasttimestamp_total</td>
    <td>Milliseconds</td>
    <td>Timestamp of the last fragment uploaded to storage for a live event output.</td>
  </tr>
</table>
