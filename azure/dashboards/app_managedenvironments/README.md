---
title: Azure Microsoft.App/managedEnvironments metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.App/managedEnvironments metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.App/managedEnvironments
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.App/managedEnvironments, **PUT DESCRIPTION HERE**. 

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
    <td>azure_envcoresquotalimit_average, azure_envcoresquotalimit_count, azure_envcoresquotalimit_maximum, azure_envcoresquotalimit_minimum, azure_envcoresquotalimit_total</td>
    <td>Count</td>
    <td>The cores quota limit of managed environment</td>
  </tr>
  <tr>
    <td>azure_envcoresquotautilization_average, azure_envcoresquotautilization_count, azure_envcoresquotautilization_maximum, azure_envcoresquotautilization_minimum, azure_envcoresquotautilization_total</td>
    <td>Percent</td>
    <td>The cores quota utilization of managed environment</td>
  </tr>
</table>
