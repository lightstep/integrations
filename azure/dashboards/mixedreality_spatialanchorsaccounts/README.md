---
title: Azure Microsoft.MixedReality/spatialAnchorsAccounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.MixedReality/spatialAnchorsAccounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.MixedReality/spatialAnchorsAccounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.MixedReality/spatialAnchorsAccounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_anchorscreated_average, azure_anchorscreated_count, azure_anchorscreated_maximum, azure_anchorscreated_minimum, azure_anchorscreated_total</td>
    <td>Count</td>
    <td>Number of Anchors created</td>
  </tr>
  <tr>
    <td>azure_anchorsdeleted_average, azure_anchorsdeleted_count, azure_anchorsdeleted_maximum, azure_anchorsdeleted_minimum, azure_anchorsdeleted_total</td>
    <td>Count</td>
    <td>Number of Anchors deleted</td>
  </tr>
  <tr>
    <td>azure_anchorsqueried_average, azure_anchorsqueried_count, azure_anchorsqueried_maximum, azure_anchorsqueried_minimum, azure_anchorsqueried_total</td>
    <td>Count</td>
    <td>Number of Spatial Anchors queried</td>
  </tr>
  <tr>
    <td>azure_anchorsupdated_average, azure_anchorsupdated_count, azure_anchorsupdated_maximum, azure_anchorsupdated_minimum, azure_anchorsupdated_total</td>
    <td>Count</td>
    <td>Number of Anchors updated</td>
  </tr>
  <tr>
    <td>azure_posesfound_average, azure_posesfound_count, azure_posesfound_maximum, azure_posesfound_minimum, azure_posesfound_total</td>
    <td>Count</td>
    <td>Number of Poses returned</td>
  </tr>
  <tr>
    <td>azure_totaldailyanchors_average, azure_totaldailyanchors_count, azure_totaldailyanchors_maximum, azure_totaldailyanchors_minimum, azure_totaldailyanchors_total</td>
    <td>Count</td>
    <td>Total number of Anchors - Daily</td>
  </tr>
</table>
