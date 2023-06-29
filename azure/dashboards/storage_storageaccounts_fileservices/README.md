---
title: Azure Microsoft.Storage/storageAccounts/fileServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Storage/storageAccounts/fileServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Storage/storageAccounts/fileServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Storage/storageAccounts/fileServices, **PUT DESCRIPTION HERE**. 

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
    <td>The amount of egress data. This number includes egress to external client from Azure Storage as well as egress within Azure. As a result, this number does not reflect billable egress.</td>
  </tr>
  <tr>
    <td>azure_filecapacity_average, azure_filecapacity_count, azure_filecapacity_maximum, azure_filecapacity_minimum, azure_filecapacity_total</td>
    <td>Bytes</td>
    <td>The amount of File storage used by the storage account.</td>
  </tr>
  <tr>
    <td>azure_filecount_average, azure_filecount_count, azure_filecount_maximum, azure_filecount_minimum, azure_filecount_total</td>
    <td>Count</td>
    <td>The number of files in the storage account.</td>
  </tr>
  <tr>
    <td>azure_filesharecapacityquota_average, azure_filesharecapacityquota_count, azure_filesharecapacityquota_maximum, azure_filesharecapacityquota_minimum, azure_filesharecapacityquota_total</td>
    <td>Bytes</td>
    <td>The upper limit on the amount of storage that can be used by Azure Files Service in bytes.</td>
  </tr>
  <tr>
    <td>azure_filesharecount_average, azure_filesharecount_count, azure_filesharecount_maximum, azure_filesharecount_minimum, azure_filesharecount_total</td>
    <td>Count</td>
    <td>The number of file shares in the storage account.</td>
  </tr>
  <tr>
    <td>azure_fileshareprovisionediops_average, azure_fileshareprovisionediops_count, azure_fileshareprovisionediops_maximum, azure_fileshareprovisionediops_minimum, azure_fileshareprovisionediops_total</td>
    <td>CountPerSecond</td>
    <td>The baseline number of provisioned IOPS for the premium file share in the premium files storage account. This number is calculated based on the provisioned size (quota) of the share capacity.</td>
  </tr>
  <tr>
    <td>azure_filesharesnapshotcount_average, azure_filesharesnapshotcount_count, azure_filesharesnapshotcount_maximum, azure_filesharesnapshotcount_minimum, azure_filesharesnapshotcount_total</td>
    <td>Count</td>
    <td>The number of snapshots present on the share in storage account's Files Service.</td>
  </tr>
  <tr>
    <td>azure_filesharesnapshotsize_average, azure_filesharesnapshotsize_count, azure_filesharesnapshotsize_maximum, azure_filesharesnapshotsize_minimum, azure_filesharesnapshotsize_total</td>
    <td>Bytes</td>
    <td>The amount of storage used by the snapshots in storage account's File service in bytes.</td>
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
