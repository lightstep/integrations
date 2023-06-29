---
title: Azure Microsoft.Devices/provisioningServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Devices/provisioningServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Devices/provisioningServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Devices/provisioningServices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_attestationattempts_average, azure_attestationattempts_count, azure_attestationattempts_maximum, azure_attestationattempts_minimum, azure_attestationattempts_total</td>
    <td>Count</td>
    <td>Number of device attestations attempted</td>
  </tr>
  <tr>
    <td>azure_deviceassignments_average, azure_deviceassignments_count, azure_deviceassignments_maximum, azure_deviceassignments_minimum, azure_deviceassignments_total</td>
    <td>Count</td>
    <td>Number of devices assigned to an IoT hub</td>
  </tr>
  <tr>
    <td>azure_registrationattempts_average, azure_registrationattempts_count, azure_registrationattempts_maximum, azure_registrationattempts_minimum, azure_registrationattempts_total</td>
    <td>Count</td>
    <td>Number of device registrations attempted</td>
  </tr>
</table>
