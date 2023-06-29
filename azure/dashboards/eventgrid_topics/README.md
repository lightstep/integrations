---
title: Azure Microsoft.EventGrid/topics metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.EventGrid/topics metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.EventGrid/topics
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.EventGrid/topics, **PUT DESCRIPTION HERE**. 

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
    <td>azure_advancedfilterevaluationcount_average, azure_advancedfilterevaluationcount_count, azure_advancedfilterevaluationcount_maximum, azure_advancedfilterevaluationcount_minimum, azure_advancedfilterevaluationcount_total</td>
    <td>Count</td>
    <td>Total advanced filters evaluated across event subscriptions for this topic.</td>
  </tr>
  <tr>
    <td>azure_deadletteredcount_average, azure_deadletteredcount_count, azure_deadletteredcount_maximum, azure_deadletteredcount_minimum, azure_deadletteredcount_total</td>
    <td>Count</td>
    <td>Total dead lettered events matching to this event subscription</td>
  </tr>
  <tr>
    <td>azure_deliveryattemptfailcount_average, azure_deliveryattemptfailcount_count, azure_deliveryattemptfailcount_maximum, azure_deliveryattemptfailcount_minimum, azure_deliveryattemptfailcount_total</td>
    <td>Count</td>
    <td>Total events failed to deliver to this event subscription</td>
  </tr>
  <tr>
    <td>azure_deliverysuccesscount_average, azure_deliverysuccesscount_count, azure_deliverysuccesscount_maximum, azure_deliverysuccesscount_minimum, azure_deliverysuccesscount_total</td>
    <td>Count</td>
    <td>Total events delivered to this event subscription</td>
  </tr>
  <tr>
    <td>azure_destinationprocessingdurationinms_average, azure_destinationprocessingdurationinms_count, azure_destinationprocessingdurationinms_maximum, azure_destinationprocessingdurationinms_minimum, azure_destinationprocessingdurationinms_total</td>
    <td>MilliSeconds</td>
    <td>Destination processing duration in milliseconds</td>
  </tr>
  <tr>
    <td>azure_droppedeventcount_average, azure_droppedeventcount_count, azure_droppedeventcount_maximum, azure_droppedeventcount_minimum, azure_droppedeventcount_total</td>
    <td>Count</td>
    <td>Total dropped events matching to this event subscription</td>
  </tr>
  <tr>
    <td>azure_matchedeventcount_average, azure_matchedeventcount_count, azure_matchedeventcount_maximum, azure_matchedeventcount_minimum, azure_matchedeventcount_total</td>
    <td>Count</td>
    <td>Total events matched to this event subscription</td>
  </tr>
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
    <td>MilliSeconds</td>
    <td>Publish success latency in milliseconds</td>
  </tr>
  <tr>
    <td>azure_unmatchedeventcount_average, azure_unmatchedeventcount_count, azure_unmatchedeventcount_maximum, azure_unmatchedeventcount_minimum, azure_unmatchedeventcount_total</td>
    <td>Count</td>
    <td>Total events not matching any of the event subscriptions for this topic</td>
  </tr>
</table>
