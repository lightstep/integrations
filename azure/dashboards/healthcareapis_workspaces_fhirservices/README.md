---
title: Azure Microsoft.HealthcareApis/workspaces/fhirservices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.HealthcareApis/workspaces/fhirservices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.HealthcareApis/workspaces/fhirservices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.HealthcareApis/workspaces/fhirservices, **PUT DESCRIPTION HERE**. 

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
    <td>The availability rate of the service.</td>
  </tr>
  <tr>
    <td>azure_totaldatasize_average, azure_totaldatasize_count, azure_totaldatasize_maximum, azure_totaldatasize_minimum, azure_totaldatasize_total</td>
    <td>Bytes</td>
    <td>Total size of the data in the backing database, in bytes.</td>
  </tr>
  <tr>
    <td>azure_totalerrors_average, azure_totalerrors_count, azure_totalerrors_maximum, azure_totalerrors_minimum, azure_totalerrors_total</td>
    <td>Count</td>
    <td>The total number of internal server errors encountered by the service.</td>
  </tr>
  <tr>
    <td>azure_totallatency_average, azure_totallatency_count, azure_totallatency_maximum, azure_totallatency_minimum, azure_totallatency_total</td>
    <td>Milliseconds</td>
    <td>The response latency of the service.</td>
  </tr>
  <tr>
    <td>azure_totalrequests_average, azure_totalrequests_count, azure_totalrequests_maximum, azure_totalrequests_minimum, azure_totalrequests_total</td>
    <td>Count</td>
    <td>The total number of requests received by the service.</td>
  </tr>
</table>
