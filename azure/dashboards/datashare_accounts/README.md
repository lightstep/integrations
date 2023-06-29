---
title: Azure Microsoft.DataShare/accounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DataShare/accounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DataShare/accounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DataShare/accounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_failedsharesubscriptionsynchronizations_average, azure_failedsharesubscriptionsynchronizations_count, azure_failedsharesubscriptionsynchronizations_maximum, azure_failedsharesubscriptionsynchronizations_minimum, azure_failedsharesubscriptionsynchronizations_total</td>
    <td>Count</td>
    <td>Number of received share failed snapshots in the account</td>
  </tr>
  <tr>
    <td>azure_failedsharesynchronizations_average, azure_failedsharesynchronizations_count, azure_failedsharesynchronizations_maximum, azure_failedsharesynchronizations_minimum, azure_failedsharesynchronizations_total</td>
    <td>Count</td>
    <td>Number of sent share failed snapshots in the account</td>
  </tr>
  <tr>
    <td>azure_sharecount_average, azure_sharecount_count, azure_sharecount_maximum, azure_sharecount_minimum, azure_sharecount_total</td>
    <td>Count</td>
    <td>Number of sent shares in the account</td>
  </tr>
  <tr>
    <td>azure_sharesubscriptioncount_average, azure_sharesubscriptioncount_count, azure_sharesubscriptioncount_maximum, azure_sharesubscriptioncount_minimum, azure_sharesubscriptioncount_total</td>
    <td>Count</td>
    <td>Number of received shares in the account</td>
  </tr>
  <tr>
    <td>azure_succeededsharesubscriptionsynchronizations_average, azure_succeededsharesubscriptionsynchronizations_count, azure_succeededsharesubscriptionsynchronizations_maximum, azure_succeededsharesubscriptionsynchronizations_minimum, azure_succeededsharesubscriptionsynchronizations_total</td>
    <td>Count</td>
    <td>Number of received share succeeded snapshots in the account</td>
  </tr>
  <tr>
    <td>azure_succeededsharesynchronizations_average, azure_succeededsharesynchronizations_count, azure_succeededsharesynchronizations_maximum, azure_succeededsharesynchronizations_minimum, azure_succeededsharesynchronizations_total</td>
    <td>Count</td>
    <td>Number of sent share succeeded snapshots in the account</td>
  </tr>
</table>
