---
title: Azure Microsoft.Network/dnsForwardingRulesets metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Network/dnsForwardingRulesets metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Network/dnsForwardingRulesets
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Network/dnsForwardingRulesets, **PUT DESCRIPTION HERE**. 

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
    <td>azure_forwardingrulecount_average, azure_forwardingrulecount_count, azure_forwardingrulecount_maximum, azure_forwardingrulecount_minimum, azure_forwardingrulecount_total</td>
    <td>Count</td>
    <td>This metric indicates the number of forwarding rules present in each DNS forwarding ruleset.</td>
  </tr>
  <tr>
    <td>azure_virtualnetworklinkcount_average, azure_virtualnetworklinkcount_count, azure_virtualnetworklinkcount_maximum, azure_virtualnetworklinkcount_minimum, azure_virtualnetworklinkcount_total</td>
    <td>Count</td>
    <td>This metric indicates the number of associated virtual network links to a DNS forwarding ruleset.</td>
  </tr>
</table>
