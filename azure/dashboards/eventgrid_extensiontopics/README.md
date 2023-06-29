---
title: Azure Microsoft.EventGrid/extensionTopics metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.EventGrid/extensionTopics metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.EventGrid/extensionTopics
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.EventGrid/extensionTopics, **PUT DESCRIPTION HERE**. 

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
    <td>azure_publishfailcount_average, azure_publishfailcount_count, azure_publishfailcount_maximum, azure_publishfailcount_minimum, azure_publishfailcount_total</td>
    <td>Count</td>
    <td>Total events failed to publish to this topic</td>
  </tr>
  <tr>
    <td>azure_publishsuccesscount_average, azure_publishsuccesscount_count, azure_publishsuccesscount_maximum, azure_publishsuccesscount_minimum, azure_publishsuccesscount_total</td>
    <td>Count</td>
    <td>Total events published to this topic</td>
  </tr>
  <tr>
    <td>azure_publishsuccesslatencyinms_average, azure_publishsuccesslatencyinms_count, azure_publishsuccesslatencyinms_maximum, azure_publishsuccesslatencyinms_minimum, azure_publishsuccesslatencyinms_total</td>
    <td>Milliseconds</td>
    <td>Publish success latency in milliseconds</td>
  </tr>
  <tr>
    <td>azure_unmatchedeventcount_average, azure_unmatchedeventcount_count, azure_unmatchedeventcount_maximum, azure_unmatchedeventcount_minimum, azure_unmatchedeventcount_total</td>
    <td>Count</td>
    <td>Total events not matching any of the event subscriptions for this topic</td>
  </tr>
</table>
