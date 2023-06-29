---
title: Azure Wandisco.Fusion/migrators/liveDataMigrations metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Wandisco.Fusion/migrators/liveDataMigrations metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Wandisco.Fusion/migrators/liveDataMigrations
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Wandisco.Fusion/migrators/liveDataMigrations, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bytesmigratedbymigration_average, azure_bytesmigratedbymigration_count, azure_bytesmigratedbymigration_maximum, azure_bytesmigratedbymigration_minimum, azure_bytesmigratedbymigration_total</td>
    <td>Bytes</td>
    <td>Provides a detailed view of a migration's Bytes Transferred</td>
  </tr>
  <tr>
    <td>azure_datatransactionsbymigration_average, azure_datatransactionsbymigration_count, azure_datatransactionsbymigration_maximum, azure_datatransactionsbymigration_minimum, azure_datatransactionsbymigration_total</td>
    <td>Count</td>
    <td>Provides a detailed view of a migration's Data Transactions</td>
  </tr>
  <tr>
    <td>azure_directoriescreatedcount_average, azure_directoriescreatedcount_count, azure_directoriescreatedcount_maximum, azure_directoriescreatedcount_minimum, azure_directoriescreatedcount_total</td>
    <td>Count</td>
    <td>This provides a running view of how many directories have been created as part of a migration.</td>
  </tr>
  <tr>
    <td>azure_filemigrationcount_average, azure_filemigrationcount_count, azure_filemigrationcount_maximum, azure_filemigrationcount_minimum, azure_filemigrationcount_total</td>
    <td>Count</td>
    <td>This provides a running total of how many files have been migrated.</td>
  </tr>
  <tr>
    <td>azure_initialscandatamigratedinbytes_average, azure_initialscandatamigratedinbytes_count, azure_initialscandatamigratedinbytes_maximum, azure_initialscandatamigratedinbytes_minimum, azure_initialscandatamigratedinbytes_total</td>
    <td>Bytes</td>
    <td>This provides the view of the total bytes which have been transferred in a new migrator as a result of the initial scan of the On-Premises file system. Any data which is added to the migration after the initial scan migration, is NOT included in this metric.</td>
  </tr>
  <tr>
    <td>azure_livedatamigratedinbytes_average, azure_livedatamigratedinbytes_count, azure_livedatamigratedinbytes_maximum, azure_livedatamigratedinbytes_minimum, azure_livedatamigratedinbytes_total</td>
    <td>Bytes</td>
    <td>Provides a running total of LiveData which has been changed due to Client activity, since the migration started.</td>
  </tr>
  <tr>
    <td>azure_numberofexcludedpaths_average, azure_numberofexcludedpaths_count, azure_numberofexcludedpaths_maximum, azure_numberofexcludedpaths_minimum, azure_numberofexcludedpaths_total</td>
    <td>Count</td>
    <td>Provides a running count of the paths which have been excluded from the migration due to Exclusion Rules.</td>
  </tr>
  <tr>
    <td>azure_numberoffailedpaths_average, azure_numberoffailedpaths_count, azure_numberoffailedpaths_maximum, azure_numberoffailedpaths_minimum, azure_numberoffailedpaths_total</td>
    <td>Count</td>
    <td>A count of which paths have failed to migrate.</td>
  </tr>
  <tr>
    <td>azure_totalbytestransferred_average, azure_totalbytestransferred_count, azure_totalbytestransferred_maximum, azure_totalbytestransferred_minimum, azure_totalbytestransferred_total</td>
    <td>Bytes</td>
    <td>This metric covers how many bytes have been transferred (does not reflect how many have successfully migrated, only how much has been transferred).</td>
  </tr>
</table>
