---
title: Azure microsoft.network/virtualnetworkgateways metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.network/virtualnetworkgateways metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.network/virtualnetworkgateways
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.network/virtualnetworkgateways, **PUT DESCRIPTION HERE**. 

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
    <td>azure_averagebandwidth_average, azure_averagebandwidth_count, azure_averagebandwidth_maximum, azure_averagebandwidth_minimum, azure_averagebandwidth_total</td>
    <td>BytesPerSecond</td>
    <td>Site-to-site bandwidth of a gateway in bytes per second</td>
  </tr>
  <tr>
    <td>azure_bgppeerstatus_average, azure_bgppeerstatus_count, azure_bgppeerstatus_maximum, azure_bgppeerstatus_minimum, azure_bgppeerstatus_total</td>
    <td>Count</td>
    <td>Status of BGP peer</td>
  </tr>
  <tr>
    <td>azure_bgproutesadvertised_average, azure_bgproutesadvertised_count, azure_bgproutesadvertised_maximum, azure_bgproutesadvertised_minimum, azure_bgproutesadvertised_total</td>
    <td>Count</td>
    <td>Count of Bgp Routes Advertised through tunnel</td>
  </tr>
  <tr>
    <td>azure_bgprouteslearned_average, azure_bgprouteslearned_count, azure_bgprouteslearned_maximum, azure_bgprouteslearned_minimum, azure_bgprouteslearned_total</td>
    <td>Count</td>
    <td>Count of Bgp Routes Learned through tunnel</td>
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
  <tr>
    <td>azure_mmsacount_average, azure_mmsacount_count, azure_mmsacount_maximum, azure_mmsacount_minimum, azure_mmsacount_total</td>
    <td>Count</td>
    <td>MMSA Count</td>
  </tr>
  <tr>
    <td>azure_p2sbandwidth_average, azure_p2sbandwidth_count, azure_p2sbandwidth_maximum, azure_p2sbandwidth_minimum, azure_p2sbandwidth_total</td>
    <td>BytesPerSecond</td>
    <td>Point-to-site bandwidth of a gateway in bytes per second</td>
  </tr>
  <tr>
    <td>azure_p2sconnectioncount_average, azure_p2sconnectioncount_count, azure_p2sconnectioncount_maximum, azure_p2sconnectioncount_minimum, azure_p2sconnectioncount_total</td>
    <td>Count</td>
    <td>Point-to-site connection count of a gateway</td>
  </tr>
  <tr>
    <td>azure_qmsacount_average, azure_qmsacount_count, azure_qmsacount_maximum, azure_qmsacount_minimum, azure_qmsacount_total</td>
    <td>Count</td>
    <td>QMSA Count</td>
  </tr>
  <tr>
    <td>azure_tunnelaveragebandwidth_average, azure_tunnelaveragebandwidth_count, azure_tunnelaveragebandwidth_maximum, azure_tunnelaveragebandwidth_minimum, azure_tunnelaveragebandwidth_total</td>
    <td>BytesPerSecond</td>
    <td>Average bandwidth of a tunnel in bytes per second</td>
  </tr>
  <tr>
    <td>azure_tunnelegressbytes_average, azure_tunnelegressbytes_count, azure_tunnelegressbytes_maximum, azure_tunnelegressbytes_minimum, azure_tunnelegressbytes_total</td>
    <td>Bytes</td>
    <td>Outgoing bytes of a tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelegresspacketdropcount_average, azure_tunnelegresspacketdropcount_count, azure_tunnelegresspacketdropcount_maximum, azure_tunnelegresspacketdropcount_minimum, azure_tunnelegresspacketdropcount_total</td>
    <td>Count</td>
    <td>Count of outgoing packets dropped by tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelegresspacketdroptsmismatch_average, azure_tunnelegresspacketdroptsmismatch_count, azure_tunnelegresspacketdroptsmismatch_maximum, azure_tunnelegresspacketdroptsmismatch_minimum, azure_tunnelegresspacketdroptsmismatch_total</td>
    <td>Count</td>
    <td>Outgoing packet drop count from traffic selector mismatch of a tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelegresspackets_average, azure_tunnelegresspackets_count, azure_tunnelegresspackets_maximum, azure_tunnelegresspackets_minimum, azure_tunnelegresspackets_total</td>
    <td>Count</td>
    <td>Outgoing packet count of a tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelingressbytes_average, azure_tunnelingressbytes_count, azure_tunnelingressbytes_maximum, azure_tunnelingressbytes_minimum, azure_tunnelingressbytes_total</td>
    <td>Bytes</td>
    <td>Incoming bytes of a tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelingresspacketdropcount_average, azure_tunnelingresspacketdropcount_count, azure_tunnelingresspacketdropcount_maximum, azure_tunnelingresspacketdropcount_minimum, azure_tunnelingresspacketdropcount_total</td>
    <td>Count</td>
    <td>Count of incoming packets dropped by tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelingresspacketdroptsmismatch_average, azure_tunnelingresspacketdroptsmismatch_count, azure_tunnelingresspacketdroptsmismatch_maximum, azure_tunnelingresspacketdroptsmismatch_minimum, azure_tunnelingresspacketdroptsmismatch_total</td>
    <td>Count</td>
    <td>Incoming packet drop count from traffic selector mismatch of a tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelingresspackets_average, azure_tunnelingresspackets_count, azure_tunnelingresspackets_maximum, azure_tunnelingresspackets_minimum, azure_tunnelingresspackets_total</td>
    <td>Count</td>
    <td>Incoming packet count of a tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelnatallocations_average, azure_tunnelnatallocations_count, azure_tunnelnatallocations_maximum, azure_tunnelnatallocations_minimum, azure_tunnelnatallocations_total</td>
    <td>Count</td>
    <td>Count of allocations for a NAT rule on a tunnel</td>
  </tr>
  <tr>
    <td>azure_tunnelnatedbytes_average, azure_tunnelnatedbytes_count, azure_tunnelnatedbytes_maximum, azure_tunnelnatedbytes_minimum, azure_tunnelnatedbytes_total</td>
    <td>Bytes</td>
    <td>Number of bytes that were NATed on a tunnel by a NAT rule</td>
  </tr>
  <tr>
    <td>azure_tunnelnatedpackets_average, azure_tunnelnatedpackets_count, azure_tunnelnatedpackets_maximum, azure_tunnelnatedpackets_minimum, azure_tunnelnatedpackets_total</td>
    <td>Count</td>
    <td>Number of packets that were NATed on a tunnel by a NAT rule</td>
  </tr>
  <tr>
    <td>azure_tunnelnatflowcount_average, azure_tunnelnatflowcount_count, azure_tunnelnatflowcount_maximum, azure_tunnelnatflowcount_minimum, azure_tunnelnatflowcount_total</td>
    <td>Count</td>
    <td>Number of NAT flows on a tunnel by flow type and NAT rule</td>
  </tr>
  <tr>
    <td>azure_tunnelnatpacketdrop_average, azure_tunnelnatpacketdrop_count, azure_tunnelnatpacketdrop_maximum, azure_tunnelnatpacketdrop_minimum, azure_tunnelnatpacketdrop_total</td>
    <td>Count</td>
    <td>Number of NATed packets on a tunnel that dropped by drop type and NAT rule</td>
  </tr>
  <tr>
    <td>azure_tunnelpeakpackets_average, azure_tunnelpeakpackets_count, azure_tunnelpeakpackets_maximum, azure_tunnelpeakpackets_minimum, azure_tunnelpeakpackets_total</td>
    <td>Count</td>
    <td>Tunnel Peak Packets Per Second</td>
  </tr>
  <tr>
    <td>azure_tunnelreversenatedbytes_average, azure_tunnelreversenatedbytes_count, azure_tunnelreversenatedbytes_maximum, azure_tunnelreversenatedbytes_minimum, azure_tunnelreversenatedbytes_total</td>
    <td>Bytes</td>
    <td>Number of bytes that were reverse NATed on a tunnel by a NAT rule</td>
  </tr>
  <tr>
    <td>azure_tunnelreversenatedpackets_average, azure_tunnelreversenatedpackets_count, azure_tunnelreversenatedpackets_maximum, azure_tunnelreversenatedpackets_minimum, azure_tunnelreversenatedpackets_total</td>
    <td>Count</td>
    <td>Number of packets on a tunnel that were reverse NATed by a NAT rule</td>
  </tr>
  <tr>
    <td>azure_tunneltotalflowcount_average, azure_tunneltotalflowcount_count, azure_tunneltotalflowcount_maximum, azure_tunneltotalflowcount_minimum, azure_tunneltotalflowcount_total</td>
    <td>Count</td>
    <td>Total flow count on a tunnel</td>
  </tr>
  <tr>
    <td>azure_uservpnroutecount_average, azure_uservpnroutecount_count, azure_uservpnroutecount_maximum, azure_uservpnroutecount_minimum, azure_uservpnroutecount_total</td>
    <td>Count</td>
    <td>Count of P2S User Vpn routes learned by gateway</td>
  </tr>
  <tr>
    <td>azure_vnetaddressprefixcount_average, azure_vnetaddressprefixcount_count, azure_vnetaddressprefixcount_maximum, azure_vnetaddressprefixcount_minimum, azure_vnetaddressprefixcount_total</td>
    <td>Count</td>
    <td>Count of Vnet address prefixes behind gateway</td>
  </tr>
</table>
