---
title: Azure Microsoft.Storage/storageAccounts/blobServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Storage/storageAccounts/blobServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Storage/storageAccounts/blobServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Storage/storageAccounts/blobServices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_blobcapacity_average, azure_blobcapacity_count, azure_blobcapacity_maximum, azure_blobcapacity_minimum, azure_blobcapacity_total</td>
    <td>Bytes</td>
    <td>The amount of storage used by the storage account's Blob service in bytes.</td>
  </tr>
  <tr>
    <td>azure_blobcount_average, azure_blobcount_count, azure_blobcount_maximum, azure_blobcount_minimum, azure_blobcount_total</td>
    <td>Count</td>
    <td>The number of blob objects stored in the storage account.</td>
  </tr>
  <tr>
    <td>azure_blobprovisionedsize_average, azure_blobprovisionedsize_count, azure_blobprovisionedsize_maximum, azure_blobprovisionedsize_minimum, azure_blobprovisionedsize_total</td>
    <td>Bytes</td>
    <td>The amount of storage provisioned in the storage account's Blob service in bytes.</td>
  </tr>
  <tr>
    <td>azure_containercount_average, azure_containercount_count, azure_containercount_maximum, azure_containercount_minimum, azure_containercount_total</td>
    <td>Count</td>
    <td>The number of containers in the storage account.</td>
  </tr>
  <tr>
    <td>azure_egress_average, azure_egress_count, azure_egress_maximum, azure_egress_minimum, azure_egress_total</td>
    <td>Bytes</td>
    <td>The amount of egress data. This number includes egress to external client from Azure Storage as well as egress within Azure. As a result, this number does not reflect billable egress.</td>
  </tr>
  <tr>
    <td>azure_indexcapacity_average, azure_indexcapacity_count, azure_indexcapacity_maximum, azure_indexcapacity_minimum, azure_indexcapacity_total</td>
    <td>Bytes</td>
    <td>The amount of storage used by Azure Data Lake Storage Gen2 hierarchical index.</td>
  </tr>
  <tr>
    <td>azure_ingress_average, azure_ingress_count, azure_ingress_maximum, azure_ingress_minimum, azure_ingress_total</td>
    <td>Bytes</td>
    <td>The amount of ingress data, in bytes. This number includes ingress from an external client into Azure Storage as well as ingress within Azure.</td>
  </tr>
  <tr>
    <td>azure_successe2elatency_average, azure_successe2elatency_count, azure_successe2elatency_maximum, azure_successe2elatency_minimum, azure_successe2elatency_total</td>
    <td>MilliSeconds</td>
    <td>The average end-to-end latency of successful requests made to a storage service or the specified API operation, in milliseconds. This value includes the required processing time within Azure Storage to read the request, send the response, and receive acknowledgment of the response.</td>
  </tr>
  <tr>
    <td>azure_successserverlatency_average, azure_successserverlatency_count, azure_successserverlatency_maximum, azure_successserverlatency_minimum, azure_successserverlatency_total</td>
    <td>MilliSeconds</td>
    <td>The average time used to process a successful request by Azure Storage. This value does not include the network latency specified in SuccessE2ELatency.</td>
  </tr>
  <tr>
    <td>azure_transactions_average, azure_transactions_count, azure_transactions_maximum, azure_transactions_minimum, azure_transactions_total</td>
    <td>Count</td>
    <td>The number of requests made to a storage service or the specified API operation. This number includes successful and failed requests, as well as requests which produced errors. Use ResponseType dimension for the number of different type of response.</td>
  </tr>
</table>
