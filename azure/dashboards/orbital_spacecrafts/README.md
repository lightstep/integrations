---
title: Azure Microsoft.Orbital/spacecrafts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Orbital/spacecrafts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Orbital/spacecrafts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Orbital/spacecrafts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_contactfailure_average, azure_contactfailure_count, azure_contactfailure_maximum, azure_contactfailure_minimum, azure_contactfailure_total</td>
    <td>Count</td>
    <td>Denotes the number of failed Contacts for a specific Spacecraft</td>
  </tr>
  <tr>
    <td>azure_contactsuccess_average, azure_contactsuccess_count, azure_contactsuccess_maximum, azure_contactsuccess_minimum, azure_contactsuccess_total</td>
    <td>Count</td>
    <td>Denotes the number of successful Contacts for a specific Spacecraft</td>
  </tr>
</table>
