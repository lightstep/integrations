---
title: Azure microsoft.insights/autoscalesettings metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.insights/autoscalesettings metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.insights/autoscalesettings
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.insights/autoscalesettings, **PUT DESCRIPTION HERE**. 

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
    <td>azure_metricthreshold_average, azure_metricthreshold_count, azure_metricthreshold_maximum, azure_metricthreshold_minimum, azure_metricthreshold_total</td>
    <td>Count</td>
    <td>The configured autoscale threshold when autoscale ran.</td>
  </tr>
  <tr>
    <td>azure_observedcapacity_average, azure_observedcapacity_count, azure_observedcapacity_maximum, azure_observedcapacity_minimum, azure_observedcapacity_total</td>
    <td>Count</td>
    <td>The capacity reported to autoscale when it executed.</td>
  </tr>
  <tr>
    <td>azure_observedmetricvalue_average, azure_observedmetricvalue_count, azure_observedmetricvalue_maximum, azure_observedmetricvalue_minimum, azure_observedmetricvalue_total</td>
    <td>Count</td>
    <td>The value computed by autoscale when executed</td>
  </tr>
  <tr>
    <td>azure_scaleactionsinitiated_average, azure_scaleactionsinitiated_count, azure_scaleactionsinitiated_maximum, azure_scaleactionsinitiated_minimum, azure_scaleactionsinitiated_total</td>
    <td>Count</td>
    <td>The direction of the scale operation.</td>
  </tr>
</table>
