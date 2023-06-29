---
title: Azure microsoft.network/expressroutegateways metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.network/expressroutegateways metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.network/expressroutegateways
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.network/expressroutegateways, **PUT DESCRIPTION HERE**. 

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
    <td>azure_ergatewayconnectionbitsinpersecond_average, azure_ergatewayconnectionbitsinpersecond_count, azure_ergatewayconnectionbitsinpersecond_maximum, azure_ergatewayconnectionbitsinpersecond_minimum, azure_ergatewayconnectionbitsinpersecond_total</td>
    <td>BitsPerSecond</td>
    <td>Bits per second ingressing Azure via ExpressRoute Gateway which can be further split for specific connections</td>
  </tr>
  <tr>
    <td>azure_ergatewayconnectionbitsoutpersecond_average, azure_ergatewayconnectionbitsoutpersecond_count, azure_ergatewayconnectionbitsoutpersecond_maximum, azure_ergatewayconnectionbitsoutpersecond_minimum, azure_ergatewayconnectionbitsoutpersecond_total</td>
    <td>BitsPerSecond</td>
    <td>Bits per second egressing Azure via ExpressRoute Gateway which can be further split for specific connections</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewayactiveflows_average, azure_expressroutegatewayactiveflows_count, azure_expressroutegatewayactiveflows_maximum, azure_expressroutegatewayactiveflows_minimum, azure_expressroutegatewayactiveflows_total</td>
    <td>Count</td>
    <td>Number of Active Flows on ExpressRoute Gateway</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewaybitspersecond_average, azure_expressroutegatewaybitspersecond_count, azure_expressroutegatewaybitspersecond_maximum, azure_expressroutegatewaybitspersecond_minimum, azure_expressroutegatewaybitspersecond_total</td>
    <td>BitsPerSecond</td>
    <td>Total Bits received on ExpressRoute Gateway per second</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewaycountofroutesadvertisedtopeer_average, azure_expressroutegatewaycountofroutesadvertisedtopeer_count, azure_expressroutegatewaycountofroutesadvertisedtopeer_maximum, azure_expressroutegatewaycountofroutesadvertisedtopeer_minimum, azure_expressroutegatewaycountofroutesadvertisedtopeer_total</td>
    <td>Count</td>
    <td>Count Of Routes Advertised To Peer by ExpressRoute Gateway</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewaycountofrouteslearnedfrompeer_average, azure_expressroutegatewaycountofrouteslearnedfrompeer_count, azure_expressroutegatewaycountofrouteslearnedfrompeer_maximum, azure_expressroutegatewaycountofrouteslearnedfrompeer_minimum, azure_expressroutegatewaycountofrouteslearnedfrompeer_total</td>
    <td>Count</td>
    <td>Count Of Routes Learned From Peer by ExpressRoute Gateway</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewaycpuutilization_average, azure_expressroutegatewaycpuutilization_count, azure_expressroutegatewaycpuutilization_maximum, azure_expressroutegatewaycpuutilization_minimum, azure_expressroutegatewaycpuutilization_total</td>
    <td>Percent</td>
    <td>CPU Utilization of the ExpressRoute Gateway</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewayfrequencyofrouteschanged_average, azure_expressroutegatewayfrequencyofrouteschanged_count, azure_expressroutegatewayfrequencyofrouteschanged_maximum, azure_expressroutegatewayfrequencyofrouteschanged_minimum, azure_expressroutegatewayfrequencyofrouteschanged_total</td>
    <td>Count</td>
    <td>Frequency of Routes change in ExpressRoute Gateway</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewaymaxflowscreationrate_average, azure_expressroutegatewaymaxflowscreationrate_count, azure_expressroutegatewaymaxflowscreationrate_maximum, azure_expressroutegatewaymaxflowscreationrate_minimum, azure_expressroutegatewaymaxflowscreationrate_total</td>
    <td>CountPerSecond</td>
    <td>Maximum Number of Flows Created Per Second on ExpressRoute Gateway</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewaynumberofvminvnet_average, azure_expressroutegatewaynumberofvminvnet_count, azure_expressroutegatewaynumberofvminvnet_maximum, azure_expressroutegatewaynumberofvminvnet_minimum, azure_expressroutegatewaynumberofvminvnet_total</td>
    <td>Count</td>
    <td>Number of VMs in the Virtual Network</td>
  </tr>
  <tr>
    <td>azure_expressroutegatewaypacketspersecond_average, azure_expressroutegatewaypacketspersecond_count, azure_expressroutegatewaypacketspersecond_maximum, azure_expressroutegatewaypacketspersecond_minimum, azure_expressroutegatewaypacketspersecond_total</td>
    <td>CountPerSecond</td>
    <td>Total Packets received on ExpressRoute Gateway per second</td>
  </tr>
</table>
