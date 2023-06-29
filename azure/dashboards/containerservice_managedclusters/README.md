---
title: Azure Microsoft.ContainerService/managedClusters metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ContainerService/managedClusters metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ContainerService/managedClusters
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ContainerService/managedClusters, **PUT DESCRIPTION HERE**. 

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
    <td>azure_apiserver_current_inflight_requests_average, azure_apiserver_current_inflight_requests_count, azure_apiserver_current_inflight_requests_maximum, azure_apiserver_current_inflight_requests_minimum, azure_apiserver_current_inflight_requests_total</td>
    <td>Count</td>
    <td>Maximum number of currently used inflight requests on the apiserver per request kind in the last second</td>
  </tr>
  <tr>
    <td>azure_cluster_autoscaler_cluster_safe_to_autoscale_average, azure_cluster_autoscaler_cluster_safe_to_autoscale_count, azure_cluster_autoscaler_cluster_safe_to_autoscale_maximum, azure_cluster_autoscaler_cluster_safe_to_autoscale_minimum, azure_cluster_autoscaler_cluster_safe_to_autoscale_total</td>
    <td>Count</td>
    <td>Determines whether or not cluster autoscaler will take action on the cluster</td>
  </tr>
  <tr>
    <td>azure_cluster_autoscaler_scale_down_in_cooldown_average, azure_cluster_autoscaler_scale_down_in_cooldown_count, azure_cluster_autoscaler_scale_down_in_cooldown_maximum, azure_cluster_autoscaler_scale_down_in_cooldown_minimum, azure_cluster_autoscaler_scale_down_in_cooldown_total</td>
    <td>Count</td>
    <td>Determines if the scale down is in cooldown - No nodes will be removed during this timeframe</td>
  </tr>
  <tr>
    <td>azure_cluster_autoscaler_unneeded_nodes_count_average, azure_cluster_autoscaler_unneeded_nodes_count_count, azure_cluster_autoscaler_unneeded_nodes_count_maximum, azure_cluster_autoscaler_unneeded_nodes_count_minimum, azure_cluster_autoscaler_unneeded_nodes_count_total</td>
    <td>Count</td>
    <td>Cluster auotscaler marks those nodes as candidates for deletion and are eventually deleted</td>
  </tr>
  <tr>
    <td>azure_cluster_autoscaler_unschedulable_pods_count_average, azure_cluster_autoscaler_unschedulable_pods_count_count, azure_cluster_autoscaler_unschedulable_pods_count_maximum, azure_cluster_autoscaler_unschedulable_pods_count_minimum, azure_cluster_autoscaler_unschedulable_pods_count_total</td>
    <td>Count</td>
    <td>Number of pods that are currently unschedulable in the cluster</td>
  </tr>
  <tr>
    <td>azure_kube_node_status_allocatable_cpu_cores_average, azure_kube_node_status_allocatable_cpu_cores_count, azure_kube_node_status_allocatable_cpu_cores_maximum, azure_kube_node_status_allocatable_cpu_cores_minimum, azure_kube_node_status_allocatable_cpu_cores_total</td>
    <td>Count</td>
    <td>Total number of available cpu cores in a managed cluster</td>
  </tr>
  <tr>
    <td>azure_kube_node_status_allocatable_memory_bytes_average, azure_kube_node_status_allocatable_memory_bytes_count, azure_kube_node_status_allocatable_memory_bytes_maximum, azure_kube_node_status_allocatable_memory_bytes_minimum, azure_kube_node_status_allocatable_memory_bytes_total</td>
    <td>Bytes</td>
    <td>Total amount of available memory in a managed cluster</td>
  </tr>
  <tr>
    <td>azure_kube_node_status_condition_average, azure_kube_node_status_condition_count, azure_kube_node_status_condition_maximum, azure_kube_node_status_condition_minimum, azure_kube_node_status_condition_total</td>
    <td>Count</td>
    <td>Statuses for various node conditions</td>
  </tr>
  <tr>
    <td>azure_kube_pod_status_phase_average, azure_kube_pod_status_phase_count, azure_kube_pod_status_phase_maximum, azure_kube_pod_status_phase_minimum, azure_kube_pod_status_phase_total</td>
    <td>Count</td>
    <td>Number of pods by phase</td>
  </tr>
  <tr>
    <td>azure_kube_pod_status_ready_average, azure_kube_pod_status_ready_count, azure_kube_pod_status_ready_maximum, azure_kube_pod_status_ready_minimum, azure_kube_pod_status_ready_total</td>
    <td>Count</td>
    <td>Number of pods in Ready state</td>
  </tr>
  <tr>
    <td>azure_node_cpu_usage_millicores_average, azure_node_cpu_usage_millicores_count, azure_node_cpu_usage_millicores_maximum, azure_node_cpu_usage_millicores_minimum, azure_node_cpu_usage_millicores_total</td>
    <td>MilliCores</td>
    <td>Aggregated measurement of CPU utilization in millicores across the cluster</td>
  </tr>
  <tr>
    <td>azure_node_cpu_usage_percentage_average, azure_node_cpu_usage_percentage_count, azure_node_cpu_usage_percentage_maximum, azure_node_cpu_usage_percentage_minimum, azure_node_cpu_usage_percentage_total</td>
    <td>Percent</td>
    <td>Aggregated average CPU utilization measured in percentage across the cluster</td>
  </tr>
  <tr>
    <td>azure_node_disk_usage_bytes_average, azure_node_disk_usage_bytes_count, azure_node_disk_usage_bytes_maximum, azure_node_disk_usage_bytes_minimum, azure_node_disk_usage_bytes_total</td>
    <td>Bytes</td>
    <td>Disk space used in bytes by device</td>
  </tr>
  <tr>
    <td>azure_node_disk_usage_percentage_average, azure_node_disk_usage_percentage_count, azure_node_disk_usage_percentage_maximum, azure_node_disk_usage_percentage_minimum, azure_node_disk_usage_percentage_total</td>
    <td>Percent</td>
    <td>Disk space used in percent by device</td>
  </tr>
  <tr>
    <td>azure_node_memory_rss_bytes_average, azure_node_memory_rss_bytes_count, azure_node_memory_rss_bytes_maximum, azure_node_memory_rss_bytes_minimum, azure_node_memory_rss_bytes_total</td>
    <td>Bytes</td>
    <td>Container RSS memory used in bytes</td>
  </tr>
  <tr>
    <td>azure_node_memory_rss_percentage_average, azure_node_memory_rss_percentage_count, azure_node_memory_rss_percentage_maximum, azure_node_memory_rss_percentage_minimum, azure_node_memory_rss_percentage_total</td>
    <td>Percent</td>
    <td>Container RSS memory used in percent</td>
  </tr>
  <tr>
    <td>azure_node_memory_working_set_bytes_average, azure_node_memory_working_set_bytes_count, azure_node_memory_working_set_bytes_maximum, azure_node_memory_working_set_bytes_minimum, azure_node_memory_working_set_bytes_total</td>
    <td>Bytes</td>
    <td>Container working set memory used in bytes</td>
  </tr>
  <tr>
    <td>azure_node_memory_working_set_percentage_average, azure_node_memory_working_set_percentage_count, azure_node_memory_working_set_percentage_maximum, azure_node_memory_working_set_percentage_minimum, azure_node_memory_working_set_percentage_total</td>
    <td>Percent</td>
    <td>Container working set memory used in percent</td>
  </tr>
  <tr>
    <td>azure_node_network_in_bytes_average, azure_node_network_in_bytes_count, azure_node_network_in_bytes_maximum, azure_node_network_in_bytes_minimum, azure_node_network_in_bytes_total</td>
    <td>Bytes</td>
    <td>Network received bytes</td>
  </tr>
  <tr>
    <td>azure_node_network_out_bytes_average, azure_node_network_out_bytes_count, azure_node_network_out_bytes_maximum, azure_node_network_out_bytes_minimum, azure_node_network_out_bytes_total</td>
    <td>Bytes</td>
    <td>Network transmitted bytes</td>
  </tr>
</table>
