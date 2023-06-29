---
title: Azure Microsoft.Cloudtest/hostedpools metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Cloudtest/hostedpools metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Cloudtest/hostedpools
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Cloudtest/hostedpools, **PUT DESCRIPTION HERE**. 

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
    <td>azure_allocated_average, azure_allocated_count, azure_allocated_maximum, azure_allocated_minimum, azure_allocated_total</td>
    <td>Count</td>
    <td>Resources that are allocated</td>
  </tr>
  <tr>
    <td>azure_allocationdurationms_average, azure_allocationdurationms_count, azure_allocationdurationms_maximum, azure_allocationdurationms_minimum, azure_allocationdurationms_total</td>
    <td>Milliseconds</td>
    <td>Average time to allocate requests (ms)</td>
  </tr>
  <tr>
    <td>azure_count_average, azure_count_count, azure_count_maximum, azure_count_minimum, azure_count_total</td>
    <td>Count</td>
    <td>Number of requests in last dump</td>
  </tr>
  <tr>
    <td>azure_notready_average, azure_notready_count, azure_notready_maximum, azure_notready_minimum, azure_notready_total</td>
    <td>Count</td>
    <td>Resources that are not ready to be used</td>
  </tr>
  <tr>
    <td>azure_pendingreimage_average, azure_pendingreimage_count, azure_pendingreimage_maximum, azure_pendingreimage_minimum, azure_pendingreimage_total</td>
    <td>Count</td>
    <td>Resources that are pending reimage</td>
  </tr>
  <tr>
    <td>azure_pendingreturn_average, azure_pendingreturn_count, azure_pendingreturn_maximum, azure_pendingreturn_minimum, azure_pendingreturn_total</td>
    <td>Count</td>
    <td>Resources that are pending return</td>
  </tr>
  <tr>
    <td>azure_provisioned_average, azure_provisioned_count, azure_provisioned_maximum, azure_provisioned_minimum, azure_provisioned_total</td>
    <td>Count</td>
    <td>Resources that are provisioned</td>
  </tr>
  <tr>
    <td>azure_ready_average, azure_ready_count, azure_ready_maximum, azure_ready_minimum, azure_ready_total</td>
    <td>Count</td>
    <td>Resources that are ready to be used</td>
  </tr>
  <tr>
    <td>azure_starting_average, azure_starting_count, azure_starting_maximum, azure_starting_minimum, azure_starting_total</td>
    <td>Count</td>
    <td>Resources that are starting</td>
  </tr>
  <tr>
    <td>azure_total_average, azure_total_count, azure_total_maximum, azure_total_minimum, azure_total_total</td>
    <td>Count</td>
    <td>Total Number of Resources</td>
  </tr>
</table>
