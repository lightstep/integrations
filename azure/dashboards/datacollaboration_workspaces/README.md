---
title: Azure Microsoft.DataCollaboration/workspaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DataCollaboration/workspaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DataCollaboration/workspaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DataCollaboration/workspaces, **PUT DESCRIPTION HERE**. 

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
    <td>azure_computationcount_average, azure_computationcount_count, azure_computationcount_maximum, azure_computationcount_minimum, azure_computationcount_total</td>
    <td>Count</td>
    <td>Number of created computations</td>
  </tr>
  <tr>
    <td>azure_dataassetcount_average, azure_dataassetcount_count, azure_dataassetcount_maximum, azure_dataassetcount_minimum, azure_dataassetcount_total</td>
    <td>Count</td>
    <td>Number of created data assets</td>
  </tr>
  <tr>
    <td>azure_pipelinecount_average, azure_pipelinecount_count, azure_pipelinecount_maximum, azure_pipelinecount_minimum, azure_pipelinecount_total</td>
    <td>Count</td>
    <td>Number of created pipelines</td>
  </tr>
  <tr>
    <td>azure_pipelinecount_average, azure_pipelinecount_count, azure_pipelinecount_maximum, azure_pipelinecount_minimum, azure_pipelinecount_total</td>
    <td>Count</td>
    <td>Number of created pipelines</td>
  </tr>
  <tr>
    <td>azure_proposalcount_average, azure_proposalcount_count, azure_proposalcount_maximum, azure_proposalcount_minimum, azure_proposalcount_total</td>
    <td>Count</td>
    <td>Number of created proposals</td>
  </tr>
  <tr>
    <td>azure_scriptcount_average, azure_scriptcount_count, azure_scriptcount_maximum, azure_scriptcount_minimum, azure_scriptcount_total</td>
    <td>Count</td>
    <td>Number of created scripts</td>
  </tr>
</table>
