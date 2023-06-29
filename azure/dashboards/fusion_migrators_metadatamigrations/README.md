---
title: Azure Wandisco.Fusion/migrators/metadataMigrations metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Wandisco.Fusion/migrators/metadataMigrations metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Wandisco.Fusion/migrators/metadataMigrations
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Wandisco.Fusion/migrators/metadataMigrations, **PUT DESCRIPTION HERE**. 

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
    <td>azure_livehiveaddedafterscan_average, azure_livehiveaddedafterscan_count, azure_livehiveaddedafterscan_maximum, azure_livehiveaddedafterscan_minimum, azure_livehiveaddedafterscan_total</td>
    <td>Count</td>
    <td>Provides a running total of how many items have been added after the initial scan.</td>
  </tr>
  <tr>
    <td>azure_livehivediscovereditems_average, azure_livehivediscovereditems_count, azure_livehivediscovereditems_maximum, azure_livehivediscovereditems_minimum, azure_livehivediscovereditems_total</td>
    <td>Count</td>
    <td>Provides a running total of how many items have been discovered.</td>
  </tr>
  <tr>
    <td>azure_livehiveinitiallydiscovereditems_average, azure_livehiveinitiallydiscovereditems_count, azure_livehiveinitiallydiscovereditems_maximum, azure_livehiveinitiallydiscovereditems_minimum, azure_livehiveinitiallydiscovereditems_total</td>
    <td>Count</td>
    <td>This provides the view of the total items discovered as a result of the initial scan of the On-Premises file system. Any items that are discovered after the initial scan, are NOT included in this metric.</td>
  </tr>
  <tr>
    <td>azure_livehiveinitiallymigrateditems_average, azure_livehiveinitiallymigrateditems_count, azure_livehiveinitiallymigrateditems_maximum, azure_livehiveinitiallymigrateditems_minimum, azure_livehiveinitiallymigrateditems_total</td>
    <td>Count</td>
    <td>This provides the view of the total items migrated as a result of the initial scan of the On-Premises file system. Any items that are added after the initial scan, are NOT included in this metric.</td>
  </tr>
  <tr>
    <td>azure_livehivemigrateditems_average, azure_livehivemigrateditems_count, azure_livehivemigrateditems_maximum, azure_livehivemigrateditems_minimum, azure_livehivemigrateditems_total</td>
    <td>Count</td>
    <td>Provides a running total of how many items have been migrated.</td>
  </tr>
</table>
