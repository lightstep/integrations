---
title: Azure Microsoft.DataLakeAnalytics/accounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DataLakeAnalytics/accounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DataLakeAnalytics/accounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DataLakeAnalytics/accounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_jobauendedcancelled_average, azure_jobauendedcancelled_count, azure_jobauendedcancelled_maximum, azure_jobauendedcancelled_minimum, azure_jobauendedcancelled_total</td>
    <td>Seconds</td>
    <td>Total AU time for cancelled jobs.</td>
  </tr>
  <tr>
    <td>azure_jobauendedfailure_average, azure_jobauendedfailure_count, azure_jobauendedfailure_maximum, azure_jobauendedfailure_minimum, azure_jobauendedfailure_total</td>
    <td>Seconds</td>
    <td>Total AU time for failed jobs.</td>
  </tr>
  <tr>
    <td>azure_jobauendedsuccess_average, azure_jobauendedsuccess_count, azure_jobauendedsuccess_maximum, azure_jobauendedsuccess_minimum, azure_jobauendedsuccess_total</td>
    <td>Seconds</td>
    <td>Total AU time for successful jobs.</td>
  </tr>
  <tr>
    <td>azure_jobendedcancelled_average, azure_jobendedcancelled_count, azure_jobendedcancelled_maximum, azure_jobendedcancelled_minimum, azure_jobendedcancelled_total</td>
    <td>Count</td>
    <td>Count of cancelled jobs.</td>
  </tr>
  <tr>
    <td>azure_jobendedfailure_average, azure_jobendedfailure_count, azure_jobendedfailure_maximum, azure_jobendedfailure_minimum, azure_jobendedfailure_total</td>
    <td>Count</td>
    <td>Count of failed jobs.</td>
  </tr>
  <tr>
    <td>azure_jobendedsuccess_average, azure_jobendedsuccess_count, azure_jobendedsuccess_maximum, azure_jobendedsuccess_minimum, azure_jobendedsuccess_total</td>
    <td>Count</td>
    <td>Count of successful jobs.</td>
  </tr>
  <tr>
    <td>azure_jobstage_average, azure_jobstage_count, azure_jobstage_maximum, azure_jobstage_minimum, azure_jobstage_total</td>
    <td>Count</td>
    <td>Number of jobs in each stage.</td>
  </tr>
</table>
