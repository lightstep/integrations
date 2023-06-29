---
title: Azure Microsoft.Network/virtualNetworks metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/virtualNetworks metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/virtualNetworks
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/virtualNetworks, **PUT DESCRIPTION HERE**. 

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
    <td>azure_bytesdroppedddos_average, azure_bytesdroppedddos_count, azure_bytesdroppedddos_maximum, azure_bytesdroppedddos_minimum, azure_bytesdroppedddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound bytes dropped DDoS</td>
  </tr>
  <tr>
    <td>azure_bytesforwardedddos_average, azure_bytesforwardedddos_count, azure_bytesforwardedddos_maximum, azure_bytesforwardedddos_minimum, azure_bytesforwardedddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound bytes forwarded DDoS</td>
  </tr>
  <tr>
    <td>azure_bytesinddos_average, azure_bytesinddos_count, azure_bytesinddos_maximum, azure_bytesinddos_minimum, azure_bytesinddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound bytes DDoS</td>
  </tr>
  <tr>
    <td>azure_ddostriggersynpackets_average, azure_ddostriggersynpackets_count, azure_ddostriggersynpackets_maximum, azure_ddostriggersynpackets_minimum, azure_ddostriggersynpackets_total</td>
    <td>CountPerSecond</td>
    <td>Inbound SYN packets to trigger DDoS mitigation</td>
  </tr>
  <tr>
    <td>azure_ddostriggertcppackets_average, azure_ddostriggertcppackets_count, azure_ddostriggertcppackets_maximum, azure_ddostriggertcppackets_minimum, azure_ddostriggertcppackets_total</td>
    <td>CountPerSecond</td>
    <td>Inbound TCP packets to trigger DDoS mitigation</td>
  </tr>
  <tr>
    <td>azure_ddostriggerudppackets_average, azure_ddostriggerudppackets_count, azure_ddostriggerudppackets_maximum, azure_ddostriggerudppackets_minimum, azure_ddostriggerudppackets_total</td>
    <td>CountPerSecond</td>
    <td>Inbound UDP packets to trigger DDoS mitigation</td>
  </tr>
  <tr>
    <td>azure_ifunderddosattack_average, azure_ifunderddosattack_count, azure_ifunderddosattack_maximum, azure_ifunderddosattack_minimum, azure_ifunderddosattack_total</td>
    <td>Count</td>
    <td>Under DDoS attack or not</td>
  </tr>
  <tr>
    <td>azure_packetsdroppedddos_average, azure_packetsdroppedddos_count, azure_packetsdroppedddos_maximum, azure_packetsdroppedddos_minimum, azure_packetsdroppedddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound packets dropped DDoS</td>
  </tr>
  <tr>
    <td>azure_packetsforwardedddos_average, azure_packetsforwardedddos_count, azure_packetsforwardedddos_maximum, azure_packetsforwardedddos_minimum, azure_packetsforwardedddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound packets forwarded DDoS</td>
  </tr>
  <tr>
    <td>azure_packetsinddos_average, azure_packetsinddos_count, azure_packetsinddos_maximum, azure_packetsinddos_minimum, azure_packetsinddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound packets DDoS</td>
  </tr>
  <tr>
    <td>azure_pingmeshaverageroundtripms_average, azure_pingmeshaverageroundtripms_count, azure_pingmeshaverageroundtripms_maximum, azure_pingmeshaverageroundtripms_minimum, azure_pingmeshaverageroundtripms_total</td>
    <td>MilliSeconds</td>
    <td>Round trip time for Pings sent to a destination VM</td>
  </tr>
  <tr>
    <td>azure_pingmeshprobesfailedpercent_average, azure_pingmeshprobesfailedpercent_count, azure_pingmeshprobesfailedpercent_maximum, azure_pingmeshprobesfailedpercent_minimum, azure_pingmeshprobesfailedpercent_total</td>
    <td>Percent</td>
    <td>Percent of number of failed Pings to total sent Pings of a destination VM</td>
  </tr>
  <tr>
    <td>azure_tcpbytesdroppedddos_average, azure_tcpbytesdroppedddos_count, azure_tcpbytesdroppedddos_maximum, azure_tcpbytesdroppedddos_minimum, azure_tcpbytesdroppedddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound TCP bytes dropped DDoS</td>
  </tr>
  <tr>
    <td>azure_tcpbytesforwardedddos_average, azure_tcpbytesforwardedddos_count, azure_tcpbytesforwardedddos_maximum, azure_tcpbytesforwardedddos_minimum, azure_tcpbytesforwardedddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound TCP bytes forwarded DDoS</td>
  </tr>
  <tr>
    <td>azure_tcpbytesinddos_average, azure_tcpbytesinddos_count, azure_tcpbytesinddos_maximum, azure_tcpbytesinddos_minimum, azure_tcpbytesinddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound TCP bytes DDoS</td>
  </tr>
  <tr>
    <td>azure_tcppacketsdroppedddos_average, azure_tcppacketsdroppedddos_count, azure_tcppacketsdroppedddos_maximum, azure_tcppacketsdroppedddos_minimum, azure_tcppacketsdroppedddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound TCP packets dropped DDoS</td>
  </tr>
  <tr>
    <td>azure_tcppacketsforwardedddos_average, azure_tcppacketsforwardedddos_count, azure_tcppacketsforwardedddos_maximum, azure_tcppacketsforwardedddos_minimum, azure_tcppacketsforwardedddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound TCP packets forwarded DDoS</td>
  </tr>
  <tr>
    <td>azure_tcppacketsinddos_average, azure_tcppacketsinddos_count, azure_tcppacketsinddos_maximum, azure_tcppacketsinddos_minimum, azure_tcppacketsinddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound TCP packets DDoS</td>
  </tr>
  <tr>
    <td>azure_udpbytesdroppedddos_average, azure_udpbytesdroppedddos_count, azure_udpbytesdroppedddos_maximum, azure_udpbytesdroppedddos_minimum, azure_udpbytesdroppedddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound UDP bytes dropped DDoS</td>
  </tr>
  <tr>
    <td>azure_udpbytesforwardedddos_average, azure_udpbytesforwardedddos_count, azure_udpbytesforwardedddos_maximum, azure_udpbytesforwardedddos_minimum, azure_udpbytesforwardedddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound UDP bytes forwarded DDoS</td>
  </tr>
  <tr>
    <td>azure_udpbytesinddos_average, azure_udpbytesinddos_count, azure_udpbytesinddos_maximum, azure_udpbytesinddos_minimum, azure_udpbytesinddos_total</td>
    <td>BytesPerSecond</td>
    <td>Inbound UDP bytes DDoS</td>
  </tr>
  <tr>
    <td>azure_udppacketsdroppedddos_average, azure_udppacketsdroppedddos_count, azure_udppacketsdroppedddos_maximum, azure_udppacketsdroppedddos_minimum, azure_udppacketsdroppedddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound UDP packets dropped DDoS</td>
  </tr>
  <tr>
    <td>azure_udppacketsforwardedddos_average, azure_udppacketsforwardedddos_count, azure_udppacketsforwardedddos_maximum, azure_udppacketsforwardedddos_minimum, azure_udppacketsforwardedddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound UDP packets forwarded DDoS</td>
  </tr>
  <tr>
    <td>azure_udppacketsinddos_average, azure_udppacketsinddos_count, azure_udppacketsinddos_maximum, azure_udppacketsinddos_minimum, azure_udppacketsinddos_total</td>
    <td>CountPerSecond</td>
    <td>Inbound UDP packets DDoS</td>
  </tr>
</table>
