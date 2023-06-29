---
title: Azure Microsoft.Network/azureFirewalls metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/azureFirewalls metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/azureFirewalls
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/azureFirewalls, **PUT DESCRIPTION HERE**. 

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
    <td>azure_applicationrulehit_average, azure_applicationrulehit_count, azure_applicationrulehit_maximum, azure_applicationrulehit_minimum, azure_applicationrulehit_total</td>
    <td>Count</td>
    <td>Number of times Application rules were hit</td>
  </tr>
  <tr>
    <td>azure_dataprocessed_average, azure_dataprocessed_count, azure_dataprocessed_maximum, azure_dataprocessed_minimum, azure_dataprocessed_total</td>
    <td>Bytes</td>
    <td>Total amount of data processed by this firewall</td>
  </tr>
  <tr>
    <td>azure_firewallhealth_average, azure_firewallhealth_count, azure_firewallhealth_maximum, azure_firewallhealth_minimum, azure_firewallhealth_total</td>
    <td>Percent</td>
    <td>Indicates the overall health of this firewall</td>
  </tr>
  <tr>
    <td>azure_firewalllatencypng_average, azure_firewalllatencypng_count, azure_firewalllatencypng_maximum, azure_firewalllatencypng_minimum, azure_firewalllatencypng_total</td>
    <td>Milliseconds</td>
    <td>Estimate of the average latency of the Firewall as measured by latency probe</td>
  </tr>
  <tr>
    <td>azure_networkrulehit_average, azure_networkrulehit_count, azure_networkrulehit_maximum, azure_networkrulehit_minimum, azure_networkrulehit_total</td>
    <td>Count</td>
    <td>Number of times Network rules were hit</td>
  </tr>
  <tr>
    <td>azure_snatportutilization_average, azure_snatportutilization_count, azure_snatportutilization_maximum, azure_snatportutilization_minimum, azure_snatportutilization_total</td>
    <td>Percent</td>
    <td>Percentage of outbound SNAT ports currently in use</td>
  </tr>
  <tr>
    <td>azure_throughput_average, azure_throughput_count, azure_throughput_maximum, azure_throughput_minimum, azure_throughput_total</td>
    <td>BitsPerSecond</td>
    <td>Throughput processed by this firewall</td>
  </tr>
</table>
