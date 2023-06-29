---
title: Azure Microsoft.Network/networkWatchers/connectionMonitors metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/networkWatchers/connectionMonitors metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/networkWatchers/connectionMonitors
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/networkWatchers/connectionMonitors, **PUT DESCRIPTION HERE**. 

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
    <td>azure_averageroundtripms_average, azure_averageroundtripms_count, azure_averageroundtripms_maximum, azure_averageroundtripms_minimum, azure_averageroundtripms_total</td>
    <td>MilliSeconds</td>
    <td>Average network round-trip time (ms) for connectivity monitoring probes sent between source and destination</td>
  </tr>
  <tr>
    <td>azure_checksfailedpercent_average, azure_checksfailedpercent_count, azure_checksfailedpercent_maximum, azure_checksfailedpercent_minimum, azure_checksfailedpercent_total</td>
    <td>Percent</td>
    <td>% of connectivity monitoring checks failed</td>
  </tr>
  <tr>
    <td>azure_probesfailedpercent_average, azure_probesfailedpercent_count, azure_probesfailedpercent_maximum, azure_probesfailedpercent_minimum, azure_probesfailedpercent_total</td>
    <td>Percent</td>
    <td>% of connectivity monitoring probes failed</td>
  </tr>
  <tr>
    <td>azure_roundtriptimems_average, azure_roundtriptimems_count, azure_roundtriptimems_maximum, azure_roundtriptimems_minimum, azure_roundtriptimems_total</td>
    <td>MilliSeconds</td>
    <td>Round-trip time in milliseconds for the connectivity monitoring checks</td>
  </tr>
  <tr>
    <td>azure_testresult_average, azure_testresult_count, azure_testresult_maximum, azure_testresult_minimum, azure_testresult_total</td>
    <td>Count</td>
    <td>Connection monitor test result</td>
  </tr>
</table>
