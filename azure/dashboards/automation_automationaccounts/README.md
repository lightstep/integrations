---
title: Azure Microsoft.Automation/automationAccounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Automation/automationAccounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Automation/automationAccounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Automation/automationAccounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_hybridworkerping_average, azure_hybridworkerping_count, azure_hybridworkerping_maximum, azure_hybridworkerping_minimum, azure_hybridworkerping_total</td>
    <td>Count</td>
    <td>The number of pings from the hybrid worker</td>
  </tr>
  <tr>
    <td>azure_totaljob_average, azure_totaljob_count, azure_totaljob_maximum, azure_totaljob_minimum, azure_totaljob_total</td>
    <td>Count</td>
    <td>The total number of jobs</td>
  </tr>
  <tr>
    <td>azure_totalupdatedeploymentmachineruns_average, azure_totalupdatedeploymentmachineruns_count, azure_totalupdatedeploymentmachineruns_maximum, azure_totalupdatedeploymentmachineruns_minimum, azure_totalupdatedeploymentmachineruns_total</td>
    <td>Count</td>
    <td>Total software update deployment machine runs in a software update deployment run</td>
  </tr>
  <tr>
    <td>azure_totalupdatedeploymentruns_average, azure_totalupdatedeploymentruns_count, azure_totalupdatedeploymentruns_maximum, azure_totalupdatedeploymentruns_minimum, azure_totalupdatedeploymentruns_total</td>
    <td>Count</td>
    <td>Total software update deployment runs</td>
  </tr>
</table>
