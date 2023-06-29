---
title: Azure Microsoft.SignalRService/WebPubSub/replicas metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.SignalRService/WebPubSub/replicas metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.SignalRService/WebPubSub/replicas
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.SignalRService/WebPubSub/replicas, **PUT DESCRIPTION HERE**. 

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
    <td>azure_connectionclosecount_average, azure_connectionclosecount_count, azure_connectionclosecount_maximum, azure_connectionclosecount_minimum, azure_connectionclosecount_total</td>
    <td>Count</td>
    <td>The count of connections closed by various reasons.</td>
  </tr>
  <tr>
    <td>azure_connectionopencount_average, azure_connectionopencount_count, azure_connectionopencount_maximum, azure_connectionopencount_minimum, azure_connectionopencount_total</td>
    <td>Count</td>
    <td>The count of new connections opened.</td>
  </tr>
  <tr>
    <td>azure_connectionquotautilization_average, azure_connectionquotautilization_count, azure_connectionquotautilization_maximum, azure_connectionquotautilization_minimum, azure_connectionquotautilization_total</td>
    <td>Percent</td>
    <td>The percentage of connection connected relative to connection quota.</td>
  </tr>
  <tr>
    <td>azure_inboundtraffic_average, azure_inboundtraffic_count, azure_inboundtraffic_maximum, azure_inboundtraffic_minimum, azure_inboundtraffic_total</td>
    <td>Bytes</td>
    <td>The traffic originating from outside to inside of the service. It is aggregated by adding all the bytes of the traffic.</td>
  </tr>
  <tr>
    <td>azure_outboundtraffic_average, azure_outboundtraffic_count, azure_outboundtraffic_maximum, azure_outboundtraffic_minimum, azure_outboundtraffic_total</td>
    <td>Bytes</td>
    <td>The traffic originating from inside to outside of the service. It is aggregated by adding all the bytes of the traffic.</td>
  </tr>
  <tr>
    <td>azure_serverload_average, azure_serverload_count, azure_serverload_maximum, azure_serverload_minimum, azure_serverload_total</td>
    <td>Percent</td>
    <td>WebPubSub server load.</td>
  </tr>
  <tr>
    <td>azure_totalconnectioncount_average, azure_totalconnectioncount_count, azure_totalconnectioncount_maximum, azure_totalconnectioncount_minimum, azure_totalconnectioncount_total</td>
    <td>Count</td>
    <td>The number of user connections established to the service. It is aggregated by adding all the online connections.</td>
  </tr>
</table>
