---
title: Azure Microsoft.TimeSeriesInsights/environments metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.TimeSeriesInsights/environments metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.TimeSeriesInsights/environments
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.TimeSeriesInsights/environments, **PUT DESCRIPTION HERE**. 

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
    <td>azure_ingressreceivedbytes_average, azure_ingressreceivedbytes_count, azure_ingressreceivedbytes_maximum, azure_ingressreceivedbytes_minimum, azure_ingressreceivedbytes_total</td>
    <td>Bytes</td>
    <td>Count of bytes read from all event sources</td>
  </tr>
  <tr>
    <td>azure_ingressreceivedinvalidmessages_average, azure_ingressreceivedinvalidmessages_count, azure_ingressreceivedinvalidmessages_maximum, azure_ingressreceivedinvalidmessages_minimum, azure_ingressreceivedinvalidmessages_total</td>
    <td>Count</td>
    <td>Count of invalid messages read from all Event hub or IoT hub event sources</td>
  </tr>
  <tr>
    <td>azure_ingressreceivedmessages_average, azure_ingressreceivedmessages_count, azure_ingressreceivedmessages_maximum, azure_ingressreceivedmessages_minimum, azure_ingressreceivedmessages_total</td>
    <td>Count</td>
    <td>Count of messages read from all Event hub or IoT hub event sources</td>
  </tr>
  <tr>
    <td>azure_ingressreceivedmessagescountlag_average, azure_ingressreceivedmessagescountlag_count, azure_ingressreceivedmessagescountlag_maximum, azure_ingressreceivedmessagescountlag_minimum, azure_ingressreceivedmessagescountlag_total</td>
    <td>Count</td>
    <td>Difference between the sequence number of last enqueued message in the event source partition and sequence number of messages being processed in Ingress</td>
  </tr>
  <tr>
    <td>azure_ingressreceivedmessagestimelag_average, azure_ingressreceivedmessagestimelag_count, azure_ingressreceivedmessagestimelag_maximum, azure_ingressreceivedmessagestimelag_minimum, azure_ingressreceivedmessagestimelag_total</td>
    <td>Seconds</td>
    <td>Difference between the time that the message is enqueued in the event source and the time it is processed in Ingress</td>
  </tr>
  <tr>
    <td>azure_ingressstoredbytes_average, azure_ingressstoredbytes_count, azure_ingressstoredbytes_maximum, azure_ingressstoredbytes_minimum, azure_ingressstoredbytes_total</td>
    <td>Bytes</td>
    <td>Total size of events successfully processed and available for query</td>
  </tr>
  <tr>
    <td>azure_ingressstoredevents_average, azure_ingressstoredevents_count, azure_ingressstoredevents_maximum, azure_ingressstoredevents_minimum, azure_ingressstoredevents_total</td>
    <td>Count</td>
    <td>Count of flattened events successfully processed and available for query</td>
  </tr>
  <tr>
    <td>azure_warmstoragemaxproperties_average, azure_warmstoragemaxproperties_count, azure_warmstoragemaxproperties_maximum, azure_warmstoragemaxproperties_minimum, azure_warmstoragemaxproperties_total</td>
    <td>Count</td>
    <td>Maximum number of properties used allowed by the environment for S1/S2 SKU and maximum number of properties allowed by Warm Store for PAYG SKU</td>
  </tr>
  <tr>
    <td>azure_warmstorageusedproperties_average, azure_warmstorageusedproperties_count, azure_warmstorageusedproperties_maximum, azure_warmstorageusedproperties_minimum, azure_warmstorageusedproperties_total</td>
    <td>Count</td>
    <td>Number of properties used by the environment for S1/S2 SKU and number of properties used by Warm Store for PAYG SKU</td>
  </tr>
</table>
