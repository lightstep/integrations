---
title: Azure Microsoft.ConnectedVehicle/platformAccounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ConnectedVehicle/platformAccounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ConnectedVehicle/platformAccounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ConnectedVehicle/platformAccounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_claimsproviderrequestlatency_average, azure_claimsproviderrequestlatency_count, azure_claimsproviderrequestlatency_maximum, azure_claimsproviderrequestlatency_minimum, azure_claimsproviderrequestlatency_total</td>
    <td>Milliseconds</td>
    <td>The average execution time of requests to the customer claims provider endpoint in milliseconds.</td>
  </tr>
  <tr>
    <td>azure_claimsproviderrequests_average, azure_claimsproviderrequests_count, azure_claimsproviderrequests_maximum, azure_claimsproviderrequests_minimum, azure_claimsproviderrequests_total</td>
    <td>Count</td>
    <td>Number of requests to claims provider</td>
  </tr>
  <tr>
    <td>azure_connectionservicerequestruntime_average, azure_connectionservicerequestruntime_count, azure_connectionservicerequestruntime_maximum, azure_connectionservicerequestruntime_minimum, azure_connectionservicerequestruntime_total</td>
    <td>Milliseconds</td>
    <td>Vehicle conneciton request execution time average in milliseconds</td>
  </tr>
  <tr>
    <td>azure_connectionservicerequests_average, azure_connectionservicerequests_count, azure_connectionservicerequests_maximum, azure_connectionservicerequests_minimum, azure_connectionservicerequests_total</td>
    <td>Count</td>
    <td>Total number of vehicle connection requests</td>
  </tr>
  <tr>
    <td>azure_datapipelinemessagecount_average, azure_datapipelinemessagecount_count, azure_datapipelinemessagecount_maximum, azure_datapipelinemessagecount_minimum, azure_datapipelinemessagecount_total</td>
    <td>Count</td>
    <td>The total number of messages sent to the MCVP data pipeline for storage.</td>
  </tr>
  <tr>
    <td>azure_extensioninvocationcount_average, azure_extensioninvocationcount_count, azure_extensioninvocationcount_maximum, azure_extensioninvocationcount_minimum, azure_extensioninvocationcount_total</td>
    <td>Count</td>
    <td>Total number of times an extension was called.</td>
  </tr>
  <tr>
    <td>azure_extensioninvocationruntime_average, azure_extensioninvocationruntime_count, azure_extensioninvocationruntime_maximum, azure_extensioninvocationruntime_minimum, azure_extensioninvocationruntime_total</td>
    <td>Milliseconds</td>
    <td>Average execution time spent inside an extension in milliseconds.</td>
  </tr>
  <tr>
    <td>azure_messagesincount_average, azure_messagesincount_count, azure_messagesincount_maximum, azure_messagesincount_minimum, azure_messagesincount_total</td>
    <td>Count</td>
    <td>The total number of vehicle-sourced publishes.</td>
  </tr>
  <tr>
    <td>azure_messagesoutcount_average, azure_messagesoutcount_count, azure_messagesoutcount_maximum, azure_messagesoutcount_minimum, azure_messagesoutcount_total</td>
    <td>Count</td>
    <td>The total number of cloud-sourced publishes.</td>
  </tr>
  <tr>
    <td>azure_provisionerservicerequestruntime_average, azure_provisionerservicerequestruntime_count, azure_provisionerservicerequestruntime_maximum, azure_provisionerservicerequestruntime_minimum, azure_provisionerservicerequestruntime_total</td>
    <td>Milliseconds</td>
    <td>The average execution time of vehicle provision requests in milliseconds</td>
  </tr>
  <tr>
    <td>azure_provisionerservicerequests_average, azure_provisionerservicerequests_count, azure_provisionerservicerequests_maximum, azure_provisionerservicerequests_minimum, azure_provisionerservicerequests_total</td>
    <td>Count</td>
    <td>Total number of vehicle provision requests</td>
  </tr>
  <tr>
    <td>azure_statestorereadrequestlatency_average, azure_statestorereadrequestlatency_count, azure_statestorereadrequestlatency_maximum, azure_statestorereadrequestlatency_minimum, azure_statestorereadrequestlatency_total</td>
    <td>Milliseconds</td>
    <td>State store read request execution time average in milliseconds.</td>
  </tr>
  <tr>
    <td>azure_statestorereadrequests_average, azure_statestorereadrequests_count, azure_statestorereadrequests_maximum, azure_statestorereadrequests_minimum, azure_statestorereadrequests_total</td>
    <td>Count</td>
    <td>Number of read requests to state store</td>
  </tr>
  <tr>
    <td>azure_statestorewriterequestlatency_average, azure_statestorewriterequestlatency_count, azure_statestorewriterequestlatency_maximum, azure_statestorewriterequestlatency_minimum, azure_statestorewriterequestlatency_total</td>
    <td>Milliseconds</td>
    <td>State store write request execution time average in milliseconds.</td>
  </tr>
  <tr>
    <td>azure_statestorewriterequests_average, azure_statestorewriterequests_count, azure_statestorewriterequests_maximum, azure_statestorewriterequests_minimum, azure_statestorewriterequests_total</td>
    <td>Count</td>
    <td>Number of write requests to state store</td>
  </tr>
</table>
