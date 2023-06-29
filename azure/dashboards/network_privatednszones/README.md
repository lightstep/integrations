---
title: Azure Microsoft.Network/privateDnsZones metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/privateDnsZones metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/privateDnsZones
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/privateDnsZones, **PUT DESCRIPTION HERE**. 

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
    <td>azure_queryvolume_average, azure_queryvolume_count, azure_queryvolume_maximum, azure_queryvolume_minimum, azure_queryvolume_total</td>
    <td>Count</td>
    <td>Number of queries served for a Private DNS zone</td>
  </tr>
  <tr>
    <td>azure_recordsetcapacityutilization_average, azure_recordsetcapacityutilization_count, azure_recordsetcapacityutilization_maximum, azure_recordsetcapacityutilization_minimum, azure_recordsetcapacityutilization_total</td>
    <td>Percent</td>
    <td>Percent of Record Set capacity utilized by a Private DNS zone</td>
  </tr>
  <tr>
    <td>azure_recordsetcount_average, azure_recordsetcount_count, azure_recordsetcount_maximum, azure_recordsetcount_minimum, azure_recordsetcount_total</td>
    <td>Count</td>
    <td>Number of Record Sets in a Private DNS zone</td>
  </tr>
  <tr>
    <td>azure_virtualnetworklinkcapacityutilization_average, azure_virtualnetworklinkcapacityutilization_count, azure_virtualnetworklinkcapacityutilization_maximum, azure_virtualnetworklinkcapacityutilization_minimum, azure_virtualnetworklinkcapacityutilization_total</td>
    <td>Percent</td>
    <td>Percent of Virtual Network Link capacity utilized by a Private DNS zone</td>
  </tr>
  <tr>
    <td>azure_virtualnetworklinkcount_average, azure_virtualnetworklinkcount_count, azure_virtualnetworklinkcount_maximum, azure_virtualnetworklinkcount_minimum, azure_virtualnetworklinkcount_total</td>
    <td>Count</td>
    <td>Number of Virtual Networks linked to a Private DNS zone</td>
  </tr>
  <tr>
    <td>azure_virtualnetworkwithregistrationcapacityutilization_average, azure_virtualnetworkwithregistrationcapacityutilization_count, azure_virtualnetworkwithregistrationcapacityutilization_maximum, azure_virtualnetworkwithregistrationcapacityutilization_minimum, azure_virtualnetworkwithregistrationcapacityutilization_total</td>
    <td>Percent</td>
    <td>Percent of Virtual Network Link with auto-registration capacity utilized by a Private DNS zone</td>
  </tr>
  <tr>
    <td>azure_virtualnetworkwithregistrationlinkcount_average, azure_virtualnetworkwithregistrationlinkcount_count, azure_virtualnetworkwithregistrationlinkcount_maximum, azure_virtualnetworkwithregistrationlinkcount_minimum, azure_virtualnetworkwithregistrationlinkcount_total</td>
    <td>Count</td>
    <td>Number of Virtual Networks linked to a Private DNS zone with auto-registration enabled</td>
  </tr>
</table>
