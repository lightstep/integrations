---
title: Azure Microsoft.Sql/servers/jobAgents metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Sql/servers/jobAgents metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Sql/servers/jobAgents
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Sql/servers/jobAgents, **PUT DESCRIPTION HERE**. 

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
    <td>azure_elastic_jobs_failed_average, azure_elastic_jobs_failed_count, azure_elastic_jobs_failed_maximum, azure_elastic_jobs_failed_minimum, azure_elastic_jobs_failed_total</td>
    <td>Count</td>
    <td>Number of job executions that failed while trying to execute on target</td>
  </tr>
  <tr>
    <td>azure_elastic_jobs_successful_average, azure_elastic_jobs_successful_count, azure_elastic_jobs_successful_maximum, azure_elastic_jobs_successful_minimum, azure_elastic_jobs_successful_total</td>
    <td>Count</td>
    <td>Number of job executions that were able to successfully execute on target</td>
  </tr>
  <tr>
    <td>azure_elastic_jobs_timeout_average, azure_elastic_jobs_timeout_count, azure_elastic_jobs_timeout_maximum, azure_elastic_jobs_timeout_minimum, azure_elastic_jobs_timeout_total</td>
    <td>Count</td>
    <td>Number of job executions that expired before execution was able to finish on target.</td>
  </tr>
</table>
