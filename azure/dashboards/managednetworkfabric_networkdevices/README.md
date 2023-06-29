---
title: Azure Microsoft.ManagedNetworkFabric/networkDevices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.ManagedNetworkFabric/networkDevices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.ManagedNetworkFabric/networkDevices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.ManagedNetworkFabric/networkDevices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_aclmatchedpackets_average, azure_aclmatchedpackets_count, azure_aclmatchedpackets_maximum, azure_aclmatchedpackets_minimum, azure_aclmatchedpackets_total</td>
    <td>Count</td>
    <td>Count of the number of packets matching the current ACL entry.</td>
  </tr>
  <tr>
    <td>azure_bgppeerstatus_average, azure_bgppeerstatus_count, azure_bgppeerstatus_maximum, azure_bgppeerstatus_minimum, azure_bgppeerstatus_total</td>
    <td>Unspecified</td>
    <td>Operational state of the BGP peer. State is represented in numerical form. Idle : 1, Connect : 2, Active : 3, Opensent : 4, Openconfirm : 5, Established : 6</td>
  </tr>
  <tr>
    <td>azure_componentoperstatus_average, azure_componentoperstatus_count, azure_componentoperstatus_maximum, azure_componentoperstatus_minimum, azure_componentoperstatus_total</td>
    <td>Unspecified</td>
    <td>The current operational status of the component.</td>
  </tr>
  <tr>
    <td>azure_cpuutilizationmax_average, azure_cpuutilizationmax_count, azure_cpuutilizationmax_maximum, azure_cpuutilizationmax_minimum, azure_cpuutilizationmax_total</td>
    <td>Percent</td>
    <td>Max cpu utilization. The maximum value of the percentage measure of the statistic over the time interval.</td>
  </tr>
  <tr>
    <td>azure_cpuutilizationmin_average, azure_cpuutilizationmin_count, azure_cpuutilizationmin_maximum, azure_cpuutilizationmin_minimum, azure_cpuutilizationmin_total</td>
    <td>Percent</td>
    <td>Min cpu utilization. The minimum value of the percentage measure of the statistic over the time interval.</td>
  </tr>
  <tr>
    <td>azure_fanspeed_average, azure_fanspeed_count, azure_fanspeed_maximum, azure_fanspeed_minimum, azure_fanspeed_total</td>
    <td>Unspecified</td>
    <td>Current fan speed.</td>
  </tr>
  <tr>
    <td>azure_ifethincrcerrors_average, azure_ifethincrcerrors_count, azure_ifethincrcerrors_maximum, azure_ifethincrcerrors_minimum, azure_ifethincrcerrors_total</td>
    <td>Count</td>
    <td>The total number of frames received that had a length (excluding framing bits, but including FCS octets) of between 64 and 1518 octets, inclusive, but had either a bad Frame Check Sequence (FCS) with an integral number of octets (FCS Error) or a bad FCS with a non-integral number of octets (Alignment Error)</td>
  </tr>
  <tr>
    <td>azure_ifethinfragmentframes_average, azure_ifethinfragmentframes_count, azure_ifethinfragmentframes_maximum, azure_ifethinfragmentframes_minimum, azure_ifethinfragmentframes_total</td>
    <td>Count</td>
    <td>The total number of frames received that were less than 64 octets in length (excluding framing bits but including FCS octets) and had either a bad Frame Check Sequence (FCS) with an integral number of octets (FCS Error) or a bad FCS with a non-integral number of octets (Alignment Error).</td>
  </tr>
  <tr>
    <td>azure_ifethinjabberframes_average, azure_ifethinjabberframes_count, azure_ifethinjabberframes_maximum, azure_ifethinjabberframes_minimum, azure_ifethinjabberframes_total</td>
    <td>Count</td>
    <td>Number of jabber frames received on the interface. Jabber frames are typically defined as oversize frames which also have a bad CRC.</td>
  </tr>
  <tr>
    <td>azure_ifethinmaccontrolframes_average, azure_ifethinmaccontrolframes_count, azure_ifethinmaccontrolframes_maximum, azure_ifethinmaccontrolframes_minimum, azure_ifethinmaccontrolframes_total</td>
    <td>Count</td>
    <td>MAC layer control frames received on the interface</td>
  </tr>
  <tr>
    <td>azure_ifethinmacpauseframes_average, azure_ifethinmacpauseframes_count, azure_ifethinmacpauseframes_maximum, azure_ifethinmacpauseframes_minimum, azure_ifethinmacpauseframes_total</td>
    <td>Count</td>
    <td>MAC layer PAUSE frames received on the interface</td>
  </tr>
  <tr>
    <td>azure_ifethinmaxsizeexceeded_average, azure_ifethinmaxsizeexceeded_count, azure_ifethinmaxsizeexceeded_maximum, azure_ifethinmaxsizeexceeded_minimum, azure_ifethinmaxsizeexceeded_total</td>
    <td>Count</td>
    <td>The total number frames received that are well-formed dropped due to exceeding the maximum frame size on the interface.</td>
  </tr>
  <tr>
    <td>azure_ifethinoversizeframes_average, azure_ifethinoversizeframes_count, azure_ifethinoversizeframes_maximum, azure_ifethinoversizeframes_minimum, azure_ifethinoversizeframes_total</td>
    <td>Count</td>
    <td>The total number of frames received that were longer than 1518 octets (excluding framing bits, but including FCS octets) and were otherwise well formed.</td>
  </tr>
  <tr>
    <td>azure_ifethoutmaccontrolframes_average, azure_ifethoutmaccontrolframes_count, azure_ifethoutmaccontrolframes_maximum, azure_ifethoutmaccontrolframes_minimum, azure_ifethoutmaccontrolframes_total</td>
    <td>Count</td>
    <td>MAC layer control frames sent on the interface.</td>
  </tr>
  <tr>
    <td>azure_ifethoutmacpauseframes_average, azure_ifethoutmacpauseframes_count, azure_ifethoutmacpauseframes_maximum, azure_ifethoutmacpauseframes_minimum, azure_ifethoutmacpauseframes_total</td>
    <td>Count</td>
    <td>MAC layer PAUSE frames sent on the interface.</td>
  </tr>
  <tr>
    <td>azure_ifinbroadcastpkts_average, azure_ifinbroadcastpkts_count, azure_ifinbroadcastpkts_maximum, azure_ifinbroadcastpkts_minimum, azure_ifinbroadcastpkts_total</td>
    <td>Count</td>
    <td>The number of packets, delivered by this sub-layer to a higher (sub-)layer, that were addressed to a broadcast address at this sub-layer.</td>
  </tr>
  <tr>
    <td>azure_ifindiscards_average, azure_ifindiscards_count, azure_ifindiscards_maximum, azure_ifindiscards_minimum, azure_ifindiscards_total</td>
    <td>Count</td>
    <td>The number of inbound packets that were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol.</td>
  </tr>
  <tr>
    <td>azure_ifinerrors_average, azure_ifinerrors_count, azure_ifinerrors_maximum, azure_ifinerrors_minimum, azure_ifinerrors_total</td>
    <td>Count</td>
    <td>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol.</td>
  </tr>
  <tr>
    <td>azure_ifinfcserrors_average, azure_ifinfcserrors_count, azure_ifinfcserrors_maximum, azure_ifinfcserrors_minimum, azure_ifinfcserrors_total</td>
    <td>Count</td>
    <td>Number of received packets which had errors in the frame check sequence (FCS), i.e., framing errors.</td>
  </tr>
  <tr>
    <td>azure_ifinmulticastpkts_average, azure_ifinmulticastpkts_count, azure_ifinmulticastpkts_maximum, azure_ifinmulticastpkts_minimum, azure_ifinmulticastpkts_total</td>
    <td>Count</td>
    <td>The number of packets, delivered by this sub-layer to a higher (sub-)layer, that were addressed to a multicast address at this sub-layer. For a MAC-layer protocol, this includes both Group and Functional addresses.</td>
  </tr>
  <tr>
    <td>azure_ifinoctets_average, azure_ifinoctets_count, azure_ifinoctets_maximum, azure_ifinoctets_minimum, azure_ifinoctets_total</td>
    <td>Count</td>
    <td>The total number of octets received on the interface, including framing characters.</td>
  </tr>
  <tr>
    <td>azure_ifinpkts_average, azure_ifinpkts_count, azure_ifinpkts_maximum, azure_ifinpkts_minimum, azure_ifinpkts_total</td>
    <td>Count</td>
    <td>The total number of packets received on the interface, including all unicast, multicast, broadcast and bad packets etc.</td>
  </tr>
  <tr>
    <td>azure_ifinunicastpkts_average, azure_ifinunicastpkts_count, azure_ifinunicastpkts_maximum, azure_ifinunicastpkts_minimum, azure_ifinunicastpkts_total</td>
    <td>Count</td>
    <td>The number of packets, delivered by this sub-layer to a higher (sub-)layer, that were not addressed to a multicast or broadcast address at this sub-layer.</td>
  </tr>
  <tr>
    <td>azure_ifoutbroadcastpkts_average, azure_ifoutbroadcastpkts_count, azure_ifoutbroadcastpkts_maximum, azure_ifoutbroadcastpkts_minimum, azure_ifoutbroadcastpkts_total</td>
    <td>Count</td>
    <td>The total number of packets that higher-level protocols requested be transmitted, and that were addressed to a broadcast address at this sub-layer, including those that were discarded or not sent.</td>
  </tr>
  <tr>
    <td>azure_ifoutdiscards_average, azure_ifoutdiscards_count, azure_ifoutdiscards_maximum, azure_ifoutdiscards_minimum, azure_ifoutdiscards_total</td>
    <td>Count</td>
    <td>The number of outbound packets that were chosen to be discarded even though no errors had been detected to prevent their being transmitted.</td>
  </tr>
  <tr>
    <td>azure_ifouterrors_average, azure_ifouterrors_count, azure_ifouterrors_maximum, azure_ifouterrors_minimum, azure_ifouterrors_total</td>
    <td>Count</td>
    <td>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors.</td>
  </tr>
  <tr>
    <td>azure_ifoutmulticastpkts_average, azure_ifoutmulticastpkts_count, azure_ifoutmulticastpkts_maximum, azure_ifoutmulticastpkts_minimum, azure_ifoutmulticastpkts_total</td>
    <td>Count</td>
    <td>The total number of packets that higher-level protocols requested be transmitted, and that were addressed to a multicast address at this sub-layer, including those that were discarded or not sent. For a MAC-layer protocol, this includes both Group and Functional addresses.</td>
  </tr>
  <tr>
    <td>azure_ifoutoctets_average, azure_ifoutoctets_count, azure_ifoutoctets_maximum, azure_ifoutoctets_minimum, azure_ifoutoctets_total</td>
    <td>Count</td>
    <td>The total number of octets transmitted out of the interface, including framing characters.</td>
  </tr>
  <tr>
    <td>azure_ifoutpkts_average, azure_ifoutpkts_count, azure_ifoutpkts_maximum, azure_ifoutpkts_minimum, azure_ifoutpkts_total</td>
    <td>Count</td>
    <td>The total number of packets transmitted out of the interface, including all unicast, multicast, broadcast, and bad packets etc.</td>
  </tr>
  <tr>
    <td>azure_ifoutunicastpkts_average, azure_ifoutunicastpkts_count, azure_ifoutunicastpkts_maximum, azure_ifoutunicastpkts_minimum, azure_ifoutunicastpkts_total</td>
    <td>Count</td>
    <td>The total number of packets that higher-level requested be transmitted, and that were not addressed to a multicast or broadcast address at this sub-layer, including those that were discarded or not sent.</td>
  </tr>
  <tr>
    <td>azure_interfaceoperstatus_average, azure_interfaceoperstatus_count, azure_interfaceoperstatus_maximum, azure_interfaceoperstatus_minimum, azure_interfaceoperstatus_total</td>
    <td>Unspecified</td>
    <td>The current operational state of the interface. State is represented in numerical form. Up: 0, Down: 1, Lower_layer_down: 2, Testing: 3, Unknown: 4, Dormant: 5, Not_present: 6.</td>
  </tr>
  <tr>
    <td>azure_lacperrors_average, azure_lacperrors_count, azure_lacperrors_maximum, azure_lacperrors_minimum, azure_lacperrors_total</td>
    <td>Count</td>
    <td>Number of LACPDU illegal packet errors.</td>
  </tr>
  <tr>
    <td>azure_lacpinpkts_average, azure_lacpinpkts_count, azure_lacpinpkts_maximum, azure_lacpinpkts_minimum, azure_lacpinpkts_total</td>
    <td>Count</td>
    <td>Number of LACPDUs received.</td>
  </tr>
  <tr>
    <td>azure_lacpoutpkts_average, azure_lacpoutpkts_count, azure_lacpoutpkts_maximum, azure_lacpoutpkts_minimum, azure_lacpoutpkts_total</td>
    <td>Count</td>
    <td>Number of LACPDUs transmitted.</td>
  </tr>
  <tr>
    <td>azure_lacprxerrors_average, azure_lacprxerrors_count, azure_lacprxerrors_maximum, azure_lacprxerrors_minimum, azure_lacprxerrors_total</td>
    <td>Count</td>
    <td>Number of LACPDU receive packet errors.</td>
  </tr>
  <tr>
    <td>azure_lacptxerrors_average, azure_lacptxerrors_count, azure_lacptxerrors_maximum, azure_lacptxerrors_minimum, azure_lacptxerrors_total</td>
    <td>Count</td>
    <td>Number of LACPDU transmit packet errors.</td>
  </tr>
  <tr>
    <td>azure_lacpunknownerrors_average, azure_lacpunknownerrors_count, azure_lacpunknownerrors_maximum, azure_lacpunknownerrors_minimum, azure_lacpunknownerrors_total</td>
    <td>Count</td>
    <td>Number of LACPDU unknown packet errors.</td>
  </tr>
  <tr>
    <td>azure_lldpframein_average, azure_lldpframein_count, azure_lldpframein_maximum, azure_lldpframein_minimum, azure_lldpframein_total</td>
    <td>Count</td>
    <td>The number of lldp frames received.</td>
  </tr>
  <tr>
    <td>azure_lldpframeout_average, azure_lldpframeout_count, azure_lldpframeout_maximum, azure_lldpframeout_minimum, azure_lldpframeout_total</td>
    <td>Count</td>
    <td>The number of frames transmitted out.</td>
  </tr>
  <tr>
    <td>azure_lldptlvunknown_average, azure_lldptlvunknown_count, azure_lldptlvunknown_maximum, azure_lldptlvunknown_minimum, azure_lldptlvunknown_total</td>
    <td>Count</td>
    <td>The number of frames received with unknown TLV.</td>
  </tr>
  <tr>
    <td>azure_memoryavailable_average, azure_memoryavailable_count, azure_memoryavailable_maximum, azure_memoryavailable_minimum, azure_memoryavailable_total</td>
    <td>Bytes</td>
    <td>The available memory physically installed, or logically allocated to the component.</td>
  </tr>
  <tr>
    <td>azure_memoryutilized_average, azure_memoryutilized_count, azure_memoryutilized_maximum, azure_memoryutilized_minimum, azure_memoryutilized_total</td>
    <td>Bytes</td>
    <td>The memory currently in use by processes running on the component, not considering reserved memory that is not available for use.</td>
  </tr>
  <tr>
    <td>azure_powersupplycapacity_average, azure_powersupplycapacity_count, azure_powersupplycapacity_maximum, azure_powersupplycapacity_minimum, azure_powersupplycapacity_total</td>
    <td>Unspecified</td>
    <td>Maximum power capacity of the power supply (watts).</td>
  </tr>
  <tr>
    <td>azure_powersupplyinputcurrent_average, azure_powersupplyinputcurrent_count, azure_powersupplyinputcurrent_maximum, azure_powersupplyinputcurrent_minimum, azure_powersupplyinputcurrent_total</td>
    <td>Unspecified</td>
    <td>The input current draw of the power supply (amps).</td>
  </tr>
  <tr>
    <td>azure_powersupplyinputvoltage_average, azure_powersupplyinputvoltage_count, azure_powersupplyinputvoltage_maximum, azure_powersupplyinputvoltage_minimum, azure_powersupplyinputvoltage_total</td>
    <td>Unspecified</td>
    <td>Input voltage to the power supply (volts).</td>
  </tr>
  <tr>
    <td>azure_powersupplyoutputcurrent_average, azure_powersupplyoutputcurrent_count, azure_powersupplyoutputcurrent_maximum, azure_powersupplyoutputcurrent_minimum, azure_powersupplyoutputcurrent_total</td>
    <td>Unspecified</td>
    <td>The output current supplied by the power supply (amps)</td>
  </tr>
  <tr>
    <td>azure_powersupplyoutputpower_average, azure_powersupplyoutputpower_count, azure_powersupplyoutputpower_maximum, azure_powersupplyoutputpower_minimum, azure_powersupplyoutputpower_total</td>
    <td>Unspecified</td>
    <td>Output power supplied by the power supply (watts)</td>
  </tr>
  <tr>
    <td>azure_powersupplyoutputvoltage_average, azure_powersupplyoutputvoltage_count, azure_powersupplyoutputvoltage_maximum, azure_powersupplyoutputvoltage_minimum, azure_powersupplyoutputvoltage_total</td>
    <td>Unspecified</td>
    <td>Output voltage supplied by the power supply (volts).</td>
  </tr>
  <tr>
    <td>azure_temperaturemax_average, azure_temperaturemax_count, azure_temperaturemax_maximum, azure_temperaturemax_minimum, azure_temperaturemax_total</td>
    <td>Unspecified</td>
    <td>Max temperature in degrees Celsius of the component. The maximum value of the statistic over the sampling period.</td>
  </tr>
</table>
