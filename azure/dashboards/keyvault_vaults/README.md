---
title: Azure Microsoft.KeyVault/vaults metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.KeyVault/vaults metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.KeyVault/vaults
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.KeyVault/vaults, **PUT DESCRIPTION HERE**. 

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
    <td>azure_availability_average, azure_availability_count, azure_availability_maximum, azure_availability_minimum, azure_availability_total</td>
    <td>Percent</td>
    <td>Vault requests availability</td>
  </tr>
  <tr>
    <td>azure_saturationshoebox_average, azure_saturationshoebox_count, azure_saturationshoebox_maximum, azure_saturationshoebox_minimum, azure_saturationshoebox_total</td>
    <td>Percent</td>
    <td>Vault capacity used</td>
  </tr>
  <tr>
    <td>azure_serviceapihit_average, azure_serviceapihit_count, azure_serviceapihit_maximum, azure_serviceapihit_minimum, azure_serviceapihit_total</td>
    <td>Count</td>
    <td>Number of total service api hits</td>
  </tr>
  <tr>
    <td>azure_serviceapilatency_average, azure_serviceapilatency_count, azure_serviceapilatency_maximum, azure_serviceapilatency_minimum, azure_serviceapilatency_total</td>
    <td>MilliSeconds</td>
    <td>Overall latency of service api requests</td>
  </tr>
  <tr>
    <td>azure_serviceapiresult_average, azure_serviceapiresult_count, azure_serviceapiresult_maximum, azure_serviceapiresult_minimum, azure_serviceapiresult_total</td>
    <td>Count</td>
    <td>Number of total service api results</td>
  </tr>
</table>
