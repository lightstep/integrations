---
title: Azure Microsoft.Synapse/workspaces/sqlPools metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Synapse/workspaces/sqlPools metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Synapse/workspaces/sqlPools
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Synapse/workspaces/sqlPools, **PUT DESCRIPTION HERE**. 

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
    <td>azure_activequeries_average, azure_activequeries_count, azure_activequeries_maximum, azure_activequeries_minimum, azure_activequeries_total</td>
    <td>Count</td>
    <td>The active queries. Using this metric unfiltered and unsplit displays all active queries running on the system</td>
  </tr>
  <tr>
    <td>azure_adaptivecachehitpercent_average, azure_adaptivecachehitpercent_count, azure_adaptivecachehitpercent_maximum, azure_adaptivecachehitpercent_minimum, azure_adaptivecachehitpercent_total</td>
    <td>Percent</td>
    <td>Measures how well workloads are utilizing the adaptive cache. Use this metric with the cache hit percentage metric to determine whether to scale for additional capacity or rerun workloads to hydrate the cache</td>
  </tr>
  <tr>
    <td>azure_adaptivecacheusedpercent_average, azure_adaptivecacheusedpercent_count, azure_adaptivecacheusedpercent_maximum, azure_adaptivecacheusedpercent_minimum, azure_adaptivecacheusedpercent_total</td>
    <td>Percent</td>
    <td>Measures how well workloads are utilizing the adaptive cache. Use this metric with the cache used percentage metric to determine whether to scale for additional capacity or rerun workloads to hydrate the cache</td>
  </tr>
  <tr>
    <td>azure_connections_average, azure_connections_count, azure_connections_maximum, azure_connections_minimum, azure_connections_total</td>
    <td>Count</td>
    <td>Count of Total logins to the SQL pool</td>
  </tr>
  <tr>
    <td>azure_connectionsblockedbyfirewall_average, azure_connectionsblockedbyfirewall_count, azure_connectionsblockedbyfirewall_maximum, azure_connectionsblockedbyfirewall_minimum, azure_connectionsblockedbyfirewall_total</td>
    <td>Count</td>
    <td>Count of connections blocked by firewall rules. Revisit access control policies for your SQL pool and monitor these connections if the count is high</td>
  </tr>
  <tr>
    <td>azure_cpupercent_average, azure_cpupercent_count, azure_cpupercent_maximum, azure_cpupercent_minimum, azure_cpupercent_total</td>
    <td>Percent</td>
    <td>CPU utilization across all nodes in the SQL pool</td>
  </tr>
  <tr>
    <td>azure_dwulimit_average, azure_dwulimit_count, azure_dwulimit_maximum, azure_dwulimit_minimum, azure_dwulimit_total</td>
    <td>Count</td>
    <td>Service level objective of the SQL pool</td>
  </tr>
  <tr>
    <td>azure_dwuused_average, azure_dwuused_count, azure_dwuused_maximum, azure_dwuused_minimum, azure_dwuused_total</td>
    <td>Count</td>
    <td>Represents a high-level representation of usage across the SQL pool. Measured by DWU limit * DWU percentage</td>
  </tr>
  <tr>
    <td>azure_dwuusedpercent_average, azure_dwuusedpercent_count, azure_dwuusedpercent_maximum, azure_dwuusedpercent_minimum, azure_dwuusedpercent_total</td>
    <td>Percent</td>
    <td>Represents a high-level representation of usage across the SQL pool. Measured by taking the maximum between CPU percentage and Data IO percentage</td>
  </tr>
  <tr>
    <td>azure_localtempdbusedpercent_average, azure_localtempdbusedpercent_count, azure_localtempdbusedpercent_maximum, azure_localtempdbusedpercent_minimum, azure_localtempdbusedpercent_total</td>
    <td>Percent</td>
    <td>Local tempdb utilization across all compute nodes - values are emitted every five minute</td>
  </tr>
  <tr>
    <td>azure_memoryusedpercent_average, azure_memoryusedpercent_count, azure_memoryusedpercent_maximum, azure_memoryusedpercent_minimum, azure_memoryusedpercent_total</td>
    <td>Percent</td>
    <td>Memory utilization across all nodes in the SQL pool</td>
  </tr>
  <tr>
    <td>azure_queuedqueries_average, azure_queuedqueries_count, azure_queuedqueries_maximum, azure_queuedqueries_minimum, azure_queuedqueries_total</td>
    <td>Count</td>
    <td>Cumulative count of requests queued after the max concurrency limit was reached</td>
  </tr>
  <tr>
    <td>azure_wlgactivequeries_average, azure_wlgactivequeries_count, azure_wlgactivequeries_maximum, azure_wlgactivequeries_minimum, azure_wlgactivequeries_total</td>
    <td>Count</td>
    <td>The active queries within the workload group. Using this metric unfiltered and unsplit displays all active queries running on the system</td>
  </tr>
  <tr>
    <td>azure_wlgactivequeriestimeouts_average, azure_wlgactivequeriestimeouts_count, azure_wlgactivequeriestimeouts_maximum, azure_wlgactivequeriestimeouts_minimum, azure_wlgactivequeriestimeouts_total</td>
    <td>Count</td>
    <td>Queries for the workload group that have timed out. Query timeouts reported by this metric are only once the query has started executing (it does not include wait time due to locking or resource waits)</td>
  </tr>
  <tr>
    <td>azure_wlgallocationbyeffectivecapresourcepercent_average, azure_wlgallocationbyeffectivecapresourcepercent_count, azure_wlgallocationbyeffectivecapresourcepercent_maximum, azure_wlgallocationbyeffectivecapresourcepercent_minimum, azure_wlgallocationbyeffectivecapresourcepercent_total</td>
    <td>Percent</td>
    <td>Displays the percentage allocation of resources relative to the Effective cap resource percent per workload group. This metric provides the effective utilization of the workload group</td>
  </tr>
  <tr>
    <td>azure_wlgallocationbysystempercent_average, azure_wlgallocationbysystempercent_count, azure_wlgallocationbysystempercent_maximum, azure_wlgallocationbysystempercent_minimum, azure_wlgallocationbysystempercent_total</td>
    <td>Percent</td>
    <td>The percentage allocation of resources relative to the entire system</td>
  </tr>
  <tr>
    <td>azure_wlgeffectivecapresourcepercent_average, azure_wlgeffectivecapresourcepercent_count, azure_wlgeffectivecapresourcepercent_maximum, azure_wlgeffectivecapresourcepercent_minimum, azure_wlgeffectivecapresourcepercent_total</td>
    <td>Percent</td>
    <td>The effective cap resource percent for the workload group. If there are other workload groups with min_percentage_resource > 0, the effective_cap_percentage_resource is lowered proportionally</td>
  </tr>
  <tr>
    <td>azure_wlgeffectiveminresourcepercent_average, azure_wlgeffectiveminresourcepercent_count, azure_wlgeffectiveminresourcepercent_maximum, azure_wlgeffectiveminresourcepercent_minimum, azure_wlgeffectiveminresourcepercent_total</td>
    <td>Percent</td>
    <td>The effective min resource percentage setting allowed considering the service level and the workload group settings. The effective min_percentage_resource can be adjusted higher on lower service levels</td>
  </tr>
  <tr>
    <td>azure_wlgqueuedqueries_average, azure_wlgqueuedqueries_count, azure_wlgqueuedqueries_maximum, azure_wlgqueuedqueries_minimum, azure_wlgqueuedqueries_total</td>
    <td>Count</td>
    <td>Cumulative count of requests queued after the max concurrency limit was reached</td>
  </tr>
</table>
