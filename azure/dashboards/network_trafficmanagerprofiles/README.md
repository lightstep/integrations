---
title: Azure Microsoft.Network/trafficManagerProfiles metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/trafficManagerProfiles metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/trafficManagerProfiles
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/trafficManagerProfiles, **PUT DESCRIPTION HERE**. 

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
    <td>azure_probeagentcurrentendpointstatebyprofileresourceid_average, azure_probeagentcurrentendpointstatebyprofileresourceid_count, azure_probeagentcurrentendpointstatebyprofileresourceid_maximum, azure_probeagentcurrentendpointstatebyprofileresourceid_minimum, azure_probeagentcurrentendpointstatebyprofileresourceid_total</td>
    <td>Count</td>
    <td>1 if an endpoint's probe status is "Enabled", 0 otherwise.</td>
  </tr>
  <tr>
    <td>azure_qpsbyendpoint_average, azure_qpsbyendpoint_count, azure_qpsbyendpoint_maximum, azure_qpsbyendpoint_minimum, azure_qpsbyendpoint_total</td>
    <td>Count</td>
    <td>Number of times a Traffic Manager endpoint was returned in the given time frame</td>
  </tr>
</table>
