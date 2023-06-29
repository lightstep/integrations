---
title: Azure Microsoft.MachineLearningServices/workspaces/onlineEndpoints/deployments metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.MachineLearningServices/workspaces/onlineEndpoints/deployments metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.MachineLearningServices/workspaces/onlineEndpoints/deployments
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.MachineLearningServices/workspaces/onlineEndpoints/deployments, **PUT DESCRIPTION HERE**. 

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
    <td>azure_cpumemoryutilizationpercentage_average, azure_cpumemoryutilizationpercentage_count, azure_cpumemoryutilizationpercentage_maximum, azure_cpumemoryutilizationpercentage_minimum, azure_cpumemoryutilizationpercentage_total</td>
    <td>Percent</td>
    <td>Percentage of memory utilization on an instance. Utilization is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_cpuutilizationpercentage_average, azure_cpuutilizationpercentage_count, azure_cpuutilizationpercentage_maximum, azure_cpuutilizationpercentage_minimum, azure_cpuutilizationpercentage_total</td>
    <td>Percent</td>
    <td>Percentage of CPU utilization on an instance. Utilization is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_datacollectionerrorsperminute_average, azure_datacollectionerrorsperminute_count, azure_datacollectionerrorsperminute_maximum, azure_datacollectionerrorsperminute_minimum, azure_datacollectionerrorsperminute_total</td>
    <td>Count</td>
    <td>The number of data collection events dropped per minute.</td>
  </tr>
  <tr>
    <td>azure_datacollectioneventsperminute_average, azure_datacollectioneventsperminute_count, azure_datacollectioneventsperminute_maximum, azure_datacollectioneventsperminute_minimum, azure_datacollectioneventsperminute_total</td>
    <td>Count</td>
    <td>The number of data collection events processed per minute.</td>
  </tr>
  <tr>
    <td>azure_deploymentcapacity_average, azure_deploymentcapacity_count, azure_deploymentcapacity_maximum, azure_deploymentcapacity_minimum, azure_deploymentcapacity_total</td>
    <td>Count</td>
    <td>The number of instances in the deployment.</td>
  </tr>
  <tr>
    <td>azure_diskutilization_average, azure_diskutilization_count, azure_diskutilization_maximum, azure_diskutilization_minimum, azure_diskutilization_total</td>
    <td>Percent</td>
    <td>Percentage of disk utilization on an instance. Utilization is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpuenergyjoules_average, azure_gpuenergyjoules_count, azure_gpuenergyjoules_maximum, azure_gpuenergyjoules_minimum, azure_gpuenergyjoules_total</td>
    <td>Count</td>
    <td>Interval energy in Joules on a GPU node. Energy is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpumemoryutilizationpercentage_average, azure_gpumemoryutilizationpercentage_count, azure_gpumemoryutilizationpercentage_maximum, azure_gpumemoryutilizationpercentage_minimum, azure_gpumemoryutilizationpercentage_total</td>
    <td>Percent</td>
    <td>Percentage of GPU memory utilization on an instance. Utilization is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpuutilizationpercentage_average, azure_gpuutilizationpercentage_count, azure_gpuutilizationpercentage_maximum, azure_gpuutilizationpercentage_minimum, azure_gpuutilizationpercentage_total</td>
    <td>Percent</td>
    <td>Percentage of GPU utilization on an instance. Utilization is reported at one minute intervals.</td>
  </tr>
</table>
