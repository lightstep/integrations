---
title: Azure Microsoft.VoiceServices/CommunicationsGateways metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.VoiceServices/CommunicationsGateways metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.VoiceServices/CommunicationsGateways
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.VoiceServices/CommunicationsGateways, **PUT DESCRIPTION HERE**. 

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
    <td>azure_activecallfailures_average, azure_activecallfailures_count, azure_activecallfailures_maximum, azure_activecallfailures_minimum, azure_activecallfailures_total</td>
    <td>Percent</td>
    <td>Percentage of active call failures</td>
  </tr>
  <tr>
    <td>azure_activecalls_average, azure_activecalls_count, azure_activecalls_maximum, azure_activecalls_minimum, azure_activecalls_total</td>
    <td>Count</td>
    <td>Count of the total number of active calls (signaling sessions)</td>
  </tr>
  <tr>
    <td>azure_activeemergencycalls_average, azure_activeemergencycalls_count, azure_activeemergencycalls_maximum, azure_activeemergencycalls_minimum, azure_activeemergencycalls_total</td>
    <td>Count</td>
    <td>Count of the total number of active emergency calls</td>
  </tr>
</table>
