---
title: Azure Microsoft.Relay/namespaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Relay/namespaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Relay/namespaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Relay/namespaces, **PUT DESCRIPTION HERE**. 

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
    <td>azure_activeconnections_average, azure_activeconnections_count, azure_activeconnections_maximum, azure_activeconnections_minimum, azure_activeconnections_total</td>
    <td>Count</td>
    <td>Total ActiveConnections for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_activelisteners_average, azure_activelisteners_count, azure_activelisteners_maximum, azure_activelisteners_minimum, azure_activelisteners_total</td>
    <td>Count</td>
    <td>Total ActiveListeners for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_bytestransferred_average, azure_bytestransferred_count, azure_bytestransferred_maximum, azure_bytestransferred_minimum, azure_bytestransferred_total</td>
    <td>Bytes</td>
    <td>Total BytesTransferred for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_listenerconnections-clienterror_average, azure_listenerconnections-clienterror_count, azure_listenerconnections-clienterror_maximum, azure_listenerconnections-clienterror_minimum, azure_listenerconnections-clienterror_total</td>
    <td>Count</td>
    <td>ClientError on ListenerConnections for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_listenerconnections-servererror_average, azure_listenerconnections-servererror_count, azure_listenerconnections-servererror_maximum, azure_listenerconnections-servererror_minimum, azure_listenerconnections-servererror_total</td>
    <td>Count</td>
    <td>ServerError on ListenerConnections for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_listenerconnections-success_average, azure_listenerconnections-success_count, azure_listenerconnections-success_maximum, azure_listenerconnections-success_minimum, azure_listenerconnections-success_total</td>
    <td>Count</td>
    <td>Successful ListenerConnections for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_listenerconnections-totalrequests_average, azure_listenerconnections-totalrequests_count, azure_listenerconnections-totalrequests_maximum, azure_listenerconnections-totalrequests_minimum, azure_listenerconnections-totalrequests_total</td>
    <td>Count</td>
    <td>Total ListenerConnections for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_listenerdisconnects_average, azure_listenerdisconnects_count, azure_listenerdisconnects_maximum, azure_listenerdisconnects_minimum, azure_listenerdisconnects_total</td>
    <td>Count</td>
    <td>Total ListenerDisconnects for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_senderconnections-clienterror_average, azure_senderconnections-clienterror_count, azure_senderconnections-clienterror_maximum, azure_senderconnections-clienterror_minimum, azure_senderconnections-clienterror_total</td>
    <td>Count</td>
    <td>ClientError on SenderConnections for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_senderconnections-servererror_average, azure_senderconnections-servererror_count, azure_senderconnections-servererror_maximum, azure_senderconnections-servererror_minimum, azure_senderconnections-servererror_total</td>
    <td>Count</td>
    <td>ServerError on SenderConnections for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_senderconnections-success_average, azure_senderconnections-success_count, azure_senderconnections-success_maximum, azure_senderconnections-success_minimum, azure_senderconnections-success_total</td>
    <td>Count</td>
    <td>Successful SenderConnections for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_senderconnections-totalrequests_average, azure_senderconnections-totalrequests_count, azure_senderconnections-totalrequests_maximum, azure_senderconnections-totalrequests_minimum, azure_senderconnections-totalrequests_total</td>
    <td>Count</td>
    <td>Total SenderConnections requests for Microsoft.Relay.</td>
  </tr>
  <tr>
    <td>azure_senderdisconnects_average, azure_senderdisconnects_count, azure_senderdisconnects_maximum, azure_senderdisconnects_minimum, azure_senderdisconnects_total</td>
    <td>Count</td>
    <td>Total SenderDisconnects for Microsoft.Relay.</td>
  </tr>
</table>
