---
title: Azure Microsoft.Peering/peerings metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Peering/peerings metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Peering/peerings
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Peering/peerings, **PUT DESCRIPTION HERE**. 

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
    <td>azure_averagecustomerprefixlatency_average, azure_averagecustomerprefixlatency_count, azure_averagecustomerprefixlatency_maximum, azure_averagecustomerprefixlatency_minimum, azure_averagecustomerprefixlatency_total</td>
    <td>Milliseconds</td>
    <td>Average of median Customer prefix latency</td>
  </tr>
  <tr>
    <td>azure_egresstrafficrate_average, azure_egresstrafficrate_count, azure_egresstrafficrate_maximum, azure_egresstrafficrate_minimum, azure_egresstrafficrate_total</td>
    <td>BitsPerSecond</td>
    <td>Egress traffic rate in bits per second</td>
  </tr>
  <tr>
    <td>azure_flapcounts_average, azure_flapcounts_count, azure_flapcounts_maximum, azure_flapcounts_minimum, azure_flapcounts_total</td>
    <td>Count</td>
    <td>Flap Events Count in all the connection</td>
  </tr>
  <tr>
    <td>azure_ingresstrafficrate_average, azure_ingresstrafficrate_count, azure_ingresstrafficrate_maximum, azure_ingresstrafficrate_minimum, azure_ingresstrafficrate_total</td>
    <td>BitsPerSecond</td>
    <td>Ingress traffic rate in bits per second</td>
  </tr>
  <tr>
    <td>azure_packetdroprate_average, azure_packetdroprate_count, azure_packetdroprate_maximum, azure_packetdroprate_minimum, azure_packetdroprate_total</td>
    <td>BitsPerSecond</td>
    <td>Packets Drop rate in bits per second</td>
  </tr>
  <tr>
    <td>azure_registeredprefixlatency_average, azure_registeredprefixlatency_count, azure_registeredprefixlatency_maximum, azure_registeredprefixlatency_minimum, azure_registeredprefixlatency_total</td>
    <td>Milliseconds</td>
    <td>Median prefix latency</td>
  </tr>
  <tr>
    <td>azure_sessionavailability_average, azure_sessionavailability_count, azure_sessionavailability_maximum, azure_sessionavailability_minimum, azure_sessionavailability_total</td>
    <td>Count</td>
    <td>Availability of the peering session</td>
  </tr>
</table>
