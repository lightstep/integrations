---
title: Azure Microsoft.MachineLearningServices/workspaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.MachineLearningServices/workspaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.MachineLearningServices/workspaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.MachineLearningServices/workspaces, **PUT DESCRIPTION HERE**. 

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
    <td>azure_active_cores_average, azure_active_cores_count, azure_active_cores_maximum, azure_active_cores_minimum, azure_active_cores_total</td>
    <td>Count</td>
    <td>Number of active cores</td>
  </tr>
  <tr>
    <td>azure_active_nodes_average, azure_active_nodes_count, azure_active_nodes_maximum, azure_active_nodes_minimum, azure_active_nodes_total</td>
    <td>Count</td>
    <td>Number of Acitve nodes. These are the nodes which are actively running a job.</td>
  </tr>
  <tr>
    <td>azure_cancel_requested_runs_average, azure_cancel_requested_runs_count, azure_cancel_requested_runs_maximum, azure_cancel_requested_runs_minimum, azure_cancel_requested_runs_total</td>
    <td>Count</td>
    <td>Number of runs where cancel was requested for this workspace. Count is updated when cancellation request has been received for a run.</td>
  </tr>
  <tr>
    <td>azure_cancelled_runs_average, azure_cancelled_runs_count, azure_cancelled_runs_maximum, azure_cancelled_runs_minimum, azure_cancelled_runs_total</td>
    <td>Count</td>
    <td>Number of runs cancelled for this workspace. Count is updated when a run is successfully cancelled.</td>
  </tr>
  <tr>
    <td>azure_completed_runs_average, azure_completed_runs_count, azure_completed_runs_maximum, azure_completed_runs_minimum, azure_completed_runs_total</td>
    <td>Count</td>
    <td>Number of runs completed successfully for this workspace. Count is updated when a run has completed and output has been collected.</td>
  </tr>
  <tr>
    <td>azure_cpucapacitymillicores_average, azure_cpucapacitymillicores_count, azure_cpucapacitymillicores_maximum, azure_cpucapacitymillicores_minimum, azure_cpucapacitymillicores_total</td>
    <td>Count</td>
    <td>Maximum capacity of a CPU node in millicores. Capacity is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_cpumemorycapacitymegabytes_average, azure_cpumemorycapacitymegabytes_count, azure_cpumemorycapacitymegabytes_maximum, azure_cpumemorycapacitymegabytes_minimum, azure_cpumemorycapacitymegabytes_total</td>
    <td>Count</td>
    <td>Maximum memory utilization of a CPU node in megabytes. Utilization is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_cpumemoryutilizationmegabytes_average, azure_cpumemoryutilizationmegabytes_count, azure_cpumemoryutilizationmegabytes_maximum, azure_cpumemoryutilizationmegabytes_minimum, azure_cpumemoryutilizationmegabytes_total</td>
    <td>Count</td>
    <td>Memory utilization of a CPU node in megabytes. Utilization is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_cpumemoryutilizationpercentage_average, azure_cpumemoryutilizationpercentage_count, azure_cpumemoryutilizationpercentage_maximum, azure_cpumemoryutilizationpercentage_minimum, azure_cpumemoryutilizationpercentage_total</td>
    <td>Count</td>
    <td>Memory utilization percentage of a CPU node. Utilization is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_cpuutilization_average, azure_cpuutilization_count, azure_cpuutilization_maximum, azure_cpuutilization_minimum, azure_cpuutilization_total</td>
    <td>Count</td>
    <td>Percentage of utilization on a CPU node. Utilization is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_cpuutilizationmillicores_average, azure_cpuutilizationmillicores_count, azure_cpuutilizationmillicores_maximum, azure_cpuutilizationmillicores_minimum, azure_cpuutilizationmillicores_total</td>
    <td>Count</td>
    <td>Utilization of a CPU node in millicores. Utilization is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_cpuutilizationpercentage_average, azure_cpuutilizationpercentage_count, azure_cpuutilizationpercentage_maximum, azure_cpuutilizationpercentage_minimum, azure_cpuutilizationpercentage_total</td>
    <td>Count</td>
    <td>Utilization percentage of a CPU node. Utilization is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_diskavailmegabytes_average, azure_diskavailmegabytes_count, azure_diskavailmegabytes_maximum, azure_diskavailmegabytes_minimum, azure_diskavailmegabytes_total</td>
    <td>Count</td>
    <td>Available disk space in megabytes. Metrics are aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_diskreadmegabytes_average, azure_diskreadmegabytes_count, azure_diskreadmegabytes_maximum, azure_diskreadmegabytes_minimum, azure_diskreadmegabytes_total</td>
    <td>Count</td>
    <td>Data read from disk in megabytes. Metrics are aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_diskusedmegabytes_average, azure_diskusedmegabytes_count, azure_diskusedmegabytes_maximum, azure_diskusedmegabytes_minimum, azure_diskusedmegabytes_total</td>
    <td>Count</td>
    <td>Used disk space in megabytes. Metrics are aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_diskwritemegabytes_average, azure_diskwritemegabytes_count, azure_diskwritemegabytes_maximum, azure_diskwritemegabytes_minimum, azure_diskwritemegabytes_total</td>
    <td>Count</td>
    <td>Data written into disk in megabytes. Metrics are aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_errors_average, azure_errors_count, azure_errors_maximum, azure_errors_minimum, azure_errors_total</td>
    <td>Count</td>
    <td>Number of run errors in this workspace. Count is updated whenever run encounters an error.</td>
  </tr>
  <tr>
    <td>azure_failed_runs_average, azure_failed_runs_count, azure_failed_runs_maximum, azure_failed_runs_minimum, azure_failed_runs_total</td>
    <td>Count</td>
    <td>Number of runs failed for this workspace. Count is updated when a run fails.</td>
  </tr>
  <tr>
    <td>azure_finalizing_runs_average, azure_finalizing_runs_count, azure_finalizing_runs_maximum, azure_finalizing_runs_minimum, azure_finalizing_runs_total</td>
    <td>Count</td>
    <td>Number of runs entered finalizing state for this workspace. Count is updated when a run has completed but output collection still in progress.</td>
  </tr>
  <tr>
    <td>azure_gpucapacitymilligpus_average, azure_gpucapacitymilligpus_count, azure_gpucapacitymilligpus_maximum, azure_gpucapacitymilligpus_minimum, azure_gpucapacitymilligpus_total</td>
    <td>Count</td>
    <td>Maximum capacity of a GPU device in milli-GPUs. Capacity is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpuenergyjoules_average, azure_gpuenergyjoules_count, azure_gpuenergyjoules_maximum, azure_gpuenergyjoules_minimum, azure_gpuenergyjoules_total</td>
    <td>Count</td>
    <td>Interval energy in Joules on a GPU node. Energy is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpumemorycapacitymegabytes_average, azure_gpumemorycapacitymegabytes_count, azure_gpumemorycapacitymegabytes_maximum, azure_gpumemorycapacitymegabytes_minimum, azure_gpumemorycapacitymegabytes_total</td>
    <td>Count</td>
    <td>Maximum memory capacity of a GPU device in megabytes. Capacity aggregated in at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpumemoryutilization_average, azure_gpumemoryutilization_count, azure_gpumemoryutilization_maximum, azure_gpumemoryutilization_minimum, azure_gpumemoryutilization_total</td>
    <td>Count</td>
    <td>Percentage of memory utilization on a GPU node. Utilization is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpumemoryutilizationmegabytes_average, azure_gpumemoryutilizationmegabytes_count, azure_gpumemoryutilizationmegabytes_maximum, azure_gpumemoryutilizationmegabytes_minimum, azure_gpumemoryutilizationmegabytes_total</td>
    <td>Count</td>
    <td>Memory utilization of a GPU device in megabytes. Utilization aggregated in at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpumemoryutilizationpercentage_average, azure_gpumemoryutilizationpercentage_count, azure_gpumemoryutilizationpercentage_maximum, azure_gpumemoryutilizationpercentage_minimum, azure_gpumemoryutilizationpercentage_total</td>
    <td>Count</td>
    <td>Memory utilization percentage of a GPU device. Utilization aggregated in at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpuutilization_average, azure_gpuutilization_count, azure_gpuutilization_maximum, azure_gpuutilization_minimum, azure_gpuutilization_total</td>
    <td>Count</td>
    <td>Percentage of utilization on a GPU node. Utilization is reported at one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpuutilizationmilligpus_average, azure_gpuutilizationmilligpus_count, azure_gpuutilizationmilligpus_maximum, azure_gpuutilizationmilligpus_minimum, azure_gpuutilizationmilligpus_total</td>
    <td>Count</td>
    <td>Utilization of a GPU device in milli-GPUs. Utilization is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_gpuutilizationpercentage_average, azure_gpuutilizationpercentage_count, azure_gpuutilizationpercentage_maximum, azure_gpuutilizationpercentage_minimum, azure_gpuutilizationpercentage_total</td>
    <td>Count</td>
    <td>Utilization percentage of a GPU device. Utilization is aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_ibreceivemegabytes_average, azure_ibreceivemegabytes_count, azure_ibreceivemegabytes_maximum, azure_ibreceivemegabytes_minimum, azure_ibreceivemegabytes_total</td>
    <td>Count</td>
    <td>Network data received over InfiniBand in megabytes. Metrics are aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_ibtransmitmegabytes_average, azure_ibtransmitmegabytes_count, azure_ibtransmitmegabytes_maximum, azure_ibtransmitmegabytes_minimum, azure_ibtransmitmegabytes_total</td>
    <td>Count</td>
    <td>Network data sent over InfiniBand in megabytes. Metrics are aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_idle_cores_average, azure_idle_cores_count, azure_idle_cores_maximum, azure_idle_cores_minimum, azure_idle_cores_total</td>
    <td>Count</td>
    <td>Number of idle cores</td>
  </tr>
  <tr>
    <td>azure_idle_nodes_average, azure_idle_nodes_count, azure_idle_nodes_maximum, azure_idle_nodes_minimum, azure_idle_nodes_total</td>
    <td>Count</td>
    <td>Number of idle nodes. Idle nodes are the nodes which are not running any jobs but can accept new job if available.</td>
  </tr>
  <tr>
    <td>azure_leaving_cores_average, azure_leaving_cores_count, azure_leaving_cores_maximum, azure_leaving_cores_minimum, azure_leaving_cores_total</td>
    <td>Count</td>
    <td>Number of leaving cores</td>
  </tr>
  <tr>
    <td>azure_leaving_nodes_average, azure_leaving_nodes_count, azure_leaving_nodes_maximum, azure_leaving_nodes_minimum, azure_leaving_nodes_total</td>
    <td>Count</td>
    <td>Number of leaving nodes. Leaving nodes are the nodes which just finished processing a job and will go to Idle state.</td>
  </tr>
  <tr>
    <td>azure_model_deploy_failed_average, azure_model_deploy_failed_count, azure_model_deploy_failed_maximum, azure_model_deploy_failed_minimum, azure_model_deploy_failed_total</td>
    <td>Count</td>
    <td>Number of model deployments that failed in this workspace</td>
  </tr>
  <tr>
    <td>azure_model_deploy_started_average, azure_model_deploy_started_count, azure_model_deploy_started_maximum, azure_model_deploy_started_minimum, azure_model_deploy_started_total</td>
    <td>Count</td>
    <td>Number of model deployments started in this workspace</td>
  </tr>
  <tr>
    <td>azure_model_deploy_succeeded_average, azure_model_deploy_succeeded_count, azure_model_deploy_succeeded_maximum, azure_model_deploy_succeeded_minimum, azure_model_deploy_succeeded_total</td>
    <td>Count</td>
    <td>Number of model deployments that succeeded in this workspace</td>
  </tr>
  <tr>
    <td>azure_model_register_failed_average, azure_model_register_failed_count, azure_model_register_failed_maximum, azure_model_register_failed_minimum, azure_model_register_failed_total</td>
    <td>Count</td>
    <td>Number of model registrations that failed in this workspace</td>
  </tr>
  <tr>
    <td>azure_model_register_succeeded_average, azure_model_register_succeeded_count, azure_model_register_succeeded_maximum, azure_model_register_succeeded_minimum, azure_model_register_succeeded_total</td>
    <td>Count</td>
    <td>Number of model registrations that succeeded in this workspace</td>
  </tr>
  <tr>
    <td>azure_networkinputmegabytes_average, azure_networkinputmegabytes_count, azure_networkinputmegabytes_maximum, azure_networkinputmegabytes_minimum, azure_networkinputmegabytes_total</td>
    <td>Count</td>
    <td>Network data received in megabytes. Metrics are aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_networkoutputmegabytes_average, azure_networkoutputmegabytes_count, azure_networkoutputmegabytes_maximum, azure_networkoutputmegabytes_minimum, azure_networkoutputmegabytes_total</td>
    <td>Count</td>
    <td>Network data sent in megabytes. Metrics are aggregated in one minute intervals.</td>
  </tr>
  <tr>
    <td>azure_not_responding_runs_average, azure_not_responding_runs_count, azure_not_responding_runs_maximum, azure_not_responding_runs_minimum, azure_not_responding_runs_total</td>
    <td>Count</td>
    <td>Number of runs not responding for this workspace. Count is updated when a run enters Not Responding state.</td>
  </tr>
  <tr>
    <td>azure_not_started_runs_average, azure_not_started_runs_count, azure_not_started_runs_maximum, azure_not_started_runs_minimum, azure_not_started_runs_total</td>
    <td>Count</td>
    <td>Number of runs in Not Started state for this workspace. Count is updated when a request is received to create a run but run information has not yet been populated.</td>
  </tr>
  <tr>
    <td>azure_preempted_cores_average, azure_preempted_cores_count, azure_preempted_cores_maximum, azure_preempted_cores_minimum, azure_preempted_cores_total</td>
    <td>Count</td>
    <td>Number of preempted cores</td>
  </tr>
  <tr>
    <td>azure_preempted_nodes_average, azure_preempted_nodes_count, azure_preempted_nodes_maximum, azure_preempted_nodes_minimum, azure_preempted_nodes_total</td>
    <td>Count</td>
    <td>Number of preempted nodes. These nodes are the low priority nodes which are taken away from the available node pool.</td>
  </tr>
  <tr>
    <td>azure_preparing_runs_average, azure_preparing_runs_count, azure_preparing_runs_maximum, azure_preparing_runs_minimum, azure_preparing_runs_total</td>
    <td>Count</td>
    <td>Number of runs that are preparing for this workspace. Count is updated when a run enters Preparing state while the run environment is being prepared.</td>
  </tr>
  <tr>
    <td>azure_provisioning_runs_average, azure_provisioning_runs_count, azure_provisioning_runs_maximum, azure_provisioning_runs_minimum, azure_provisioning_runs_total</td>
    <td>Count</td>
    <td>Number of runs that are provisioning for this workspace. Count is updated when a run is waiting on compute target creation or provisioning.</td>
  </tr>
  <tr>
    <td>azure_queued_runs_average, azure_queued_runs_count, azure_queued_runs_maximum, azure_queued_runs_minimum, azure_queued_runs_total</td>
    <td>Count</td>
    <td>Number of runs that are queued for this workspace. Count is updated when a run is queued in compute target. Can occure when waiting for required compute nodes to be ready.</td>
  </tr>
  <tr>
    <td>azure_quota_utilization_percentage_average, azure_quota_utilization_percentage_count, azure_quota_utilization_percentage_maximum, azure_quota_utilization_percentage_minimum, azure_quota_utilization_percentage_total</td>
    <td>Count</td>
    <td>Percent of quota utilized</td>
  </tr>
  <tr>
    <td>azure_started_runs_average, azure_started_runs_count, azure_started_runs_maximum, azure_started_runs_minimum, azure_started_runs_total</td>
    <td>Count</td>
    <td>Number of runs running for this workspace. Count is updated when run starts running on required resources.</td>
  </tr>
  <tr>
    <td>azure_starting_runs_average, azure_starting_runs_count, azure_starting_runs_maximum, azure_starting_runs_minimum, azure_starting_runs_total</td>
    <td>Count</td>
    <td>Number of runs started for this workspace. Count is updated after request to create run and run info, such as the Run Id, has been populated</td>
  </tr>
  <tr>
    <td>azure_storageapifailurecount_average, azure_storageapifailurecount_count, azure_storageapifailurecount_maximum, azure_storageapifailurecount_minimum, azure_storageapifailurecount_total</td>
    <td>Count</td>
    <td>Azure Blob Storage API calls failure count.</td>
  </tr>
  <tr>
    <td>azure_storageapisuccesscount_average, azure_storageapisuccesscount_count, azure_storageapisuccesscount_maximum, azure_storageapisuccesscount_minimum, azure_storageapisuccesscount_total</td>
    <td>Count</td>
    <td>Azure Blob Storage API calls success count.</td>
  </tr>
  <tr>
    <td>azure_total_cores_average, azure_total_cores_count, azure_total_cores_maximum, azure_total_cores_minimum, azure_total_cores_total</td>
    <td>Count</td>
    <td>Number of total cores</td>
  </tr>
  <tr>
    <td>azure_total_nodes_average, azure_total_nodes_count, azure_total_nodes_maximum, azure_total_nodes_minimum, azure_total_nodes_total</td>
    <td>Count</td>
    <td>Number of total nodes. This total includes some of Active Nodes, Idle Nodes, Unusable Nodes, Premepted Nodes, Leaving Nodes</td>
  </tr>
  <tr>
    <td>azure_unusable_cores_average, azure_unusable_cores_count, azure_unusable_cores_maximum, azure_unusable_cores_minimum, azure_unusable_cores_total</td>
    <td>Count</td>
    <td>Number of unusable cores</td>
  </tr>
  <tr>
    <td>azure_unusable_nodes_average, azure_unusable_nodes_count, azure_unusable_nodes_maximum, azure_unusable_nodes_minimum, azure_unusable_nodes_total</td>
    <td>Count</td>
    <td>Number of unusable nodes. Unusable nodes are not functional due to some unresolvable issue. Azure will recycle these nodes.</td>
  </tr>
  <tr>
    <td>azure_warnings_average, azure_warnings_count, azure_warnings_maximum, azure_warnings_minimum, azure_warnings_total</td>
    <td>Count</td>
    <td>Number of run warnings in this workspace. Count is updated whenever a run encounters a warning.</td>
  </tr>
</table>
