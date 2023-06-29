---
title: Azure Microsoft.ClassicStorage/storageAccounts/queueServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ClassicStorage/storageAccounts/queueServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ClassicStorage/storageAccounts/queueServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ClassicStorage/storageAccounts/queueServices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_availability_average, azure_availability_count, azure_availability_maximum, azure_availability_minimum, azure_availability_total</td>
    <td>Percent</td>
    <td>The percentage of availability for the storage service or the specified API operation. Availability is calculated by taking the TotalBillableRequests value and dividing it by the number of applicable requests, including those that produced unexpected errors. All unexpected errors result in reduced availability for the storage service or the specified API operation.</td>
  </tr>
  <tr>
    <td>azure_egress_average, azure_egress_count, azure_egress_maximum, azure_egress_minimum, azure_egress_total</td>
    <td>Bytes</td>
    <td>The amount of egress data, in bytes. This number includes egress from an external client into Azure Storage as well as egress within Azure. As a result, this number does not reflect billable egress.</td>
  </tr>
  <tr>
    <td>azure_ingress_average, azure_ingress_count, azure_ingress_maximum, azure_ingress_minimum, azure_ingress_total</td>
    <td>Bytes</td>
    <td>The amount of ingress data, in bytes. This number includes ingress from an external client into Azure Storage as well as ingress within Azure.</td>
  </tr>
  <tr>
    <td>azure_queuecapacity_average, azure_queuecapacity_count, azure_queuecapacity_maximum, azure_queuecapacity_minimum, azure_queuecapacity_total</td>
    <td>Bytes</td>
    <td>The amount of storage used by the storage account's Queue service in bytes.</td>
  </tr>
  <tr>
    <td>azure_queuecount_average, azure_queuecount_count, azure_queuecount_maximum, azure_queuecount_minimum, azure_queuecount_total</td>
    <td>Count</td>
    <td>The number of queue in the storage account's Queue service.</td>
  </tr>
  <tr>
    <td>azure_queuemessagecount_average, azure_queuemessagecount_count, azure_queuemessagecount_maximum, azure_queuemessagecount_minimum, azure_queuemessagecount_total</td>
    <td>Count</td>
    <td>The approximate number of queue messages in the storage account's Queue service.</td>
  </tr>
  <tr>
    <td>azure_successe2elatency_average, azure_successe2elatency_count, azure_successe2elatency_maximum, azure_successe2elatency_minimum, azure_successe2elatency_total</td>
    <td>Milliseconds</td>
    <td>The end-to-end latency of successful requests made to a storage service or the specified API operation, in milliseconds. This value includes the required processing time within Azure Storage to read the request, send the response, and receive acknowledgment of the response.</td>
  </tr>
  <tr>
    <td>azure_successserverlatency_average, azure_successserverlatency_count, azure_successserverlatency_maximum, azure_successserverlatency_minimum, azure_successserverlatency_total</td>
    <td>Milliseconds</td>
    <td>The latency used by Azure Storage to process a successful request, in milliseconds. This value does not include the network latency specified in SuccessE2ELatency.</td>
  </tr>
  <tr>
    <td>azure_transactions_average, azure_transactions_count, azure_transactions_maximum, azure_transactions_minimum, azure_transactions_total</td>
    <td>Count</td>
    <td>The number of requests made to a storage service or the specified API operation. This number includes successful and failed requests, as well as requests which produced errors. Use ResponseType dimension for the number of different type of response.</td>
  </tr>
</table>
