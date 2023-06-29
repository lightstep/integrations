---
title: Azure Microsoft.Network/dnsResolvers metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/dnsResolvers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/dnsResolvers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/dnsResolvers, **PUT DESCRIPTION HERE**. 

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
    <td>azure_inboundendpointcount_average, azure_inboundendpointcount_count, azure_inboundendpointcount_maximum, azure_inboundendpointcount_minimum, azure_inboundendpointcount_total</td>
    <td>Count</td>
    <td>This metric indicates the number of inbound endpoints created for a DNS Resolver.</td>
  </tr>
  <tr>
    <td>azure_outboundendpointcount_average, azure_outboundendpointcount_count, azure_outboundendpointcount_maximum, azure_outboundendpointcount_minimum, azure_outboundendpointcount_total</td>
    <td>Count</td>
    <td>This metric indicates the number of outbound endpoints created for a DNS Resolver.</td>
  </tr>
  <tr>
    <td>azure_qps_average, azure_qps_count, azure_qps_maximum, azure_qps_minimum, azure_qps_total</td>
    <td>Count</td>
    <td>This metric indicates the queries per second for a DNS Resolver. (Can be aggregated per EndpointId)</td>
  </tr>
</table>
