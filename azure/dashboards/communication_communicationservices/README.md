---
title: Azure Microsoft.Communication/CommunicationServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Communication/CommunicationServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Communication/CommunicationServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Communication/CommunicationServices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_apirequestauthentication_average, azure_apirequestauthentication_count, azure_apirequestauthentication_maximum, azure_apirequestauthentication_minimum, azure_apirequestauthentication_total</td>
    <td>Count</td>
    <td>Count of all requests against the Communication Services Authentication endpoint.</td>
  </tr>
  <tr>
    <td>azure_apirequestcallautomation_average, azure_apirequestcallautomation_count, azure_apirequestcallautomation_maximum, azure_apirequestcallautomation_minimum, azure_apirequestcallautomation_total</td>
    <td>Count</td>
    <td>Count of all requests against the Communication Call Automation endpoint.</td>
  </tr>
  <tr>
    <td>azure_apirequestcallrecording_average, azure_apirequestcallrecording_count, azure_apirequestcallrecording_maximum, azure_apirequestcallrecording_minimum, azure_apirequestcallrecording_total</td>
    <td>Count</td>
    <td>Count of all requests against the Communication Services Call Recording endpoint.</td>
  </tr>
  <tr>
    <td>azure_apirequestchat_average, azure_apirequestchat_count, azure_apirequestchat_maximum, azure_apirequestchat_minimum, azure_apirequestchat_total</td>
    <td>Count</td>
    <td>Count of all requests against the Communication Services Chat endpoint.</td>
  </tr>
  <tr>
    <td>azure_apirequestnetworktraversal_average, azure_apirequestnetworktraversal_count, azure_apirequestnetworktraversal_maximum, azure_apirequestnetworktraversal_minimum, azure_apirequestnetworktraversal_total</td>
    <td>Count</td>
    <td>Count of all requests against the Communication Services Network Traversal endpoint.</td>
  </tr>
  <tr>
    <td>azure_apirequestrooms_average, azure_apirequestrooms_count, azure_apirequestrooms_maximum, azure_apirequestrooms_minimum, azure_apirequestrooms_total</td>
    <td>Count</td>
    <td>Count of all requests against the Communication Services Rooms endpoint.</td>
  </tr>
  <tr>
    <td>azure_apirequestrouter_average, azure_apirequestrouter_count, azure_apirequestrouter_maximum, azure_apirequestrouter_minimum, azure_apirequestrouter_total</td>
    <td>Count</td>
    <td>Count of all requests against the Communication Services Job Router endpoint.</td>
  </tr>
  <tr>
    <td>azure_apirequests_average, azure_apirequests_count, azure_apirequests_maximum, azure_apirequests_minimum, azure_apirequests_total</td>
    <td>Count</td>
    <td>Email Communication Services API request metric for the data-plane API surface.</td>
  </tr>
  <tr>
    <td>azure_apirequestsms_average, azure_apirequestsms_count, azure_apirequestsms_maximum, azure_apirequestsms_minimum, azure_apirequestsms_total</td>
    <td>Count</td>
    <td>Count of all requests against the Communication Services SMS endpoint.</td>
  </tr>
  <tr>
    <td>azure_deliverystatusupdate_average, azure_deliverystatusupdate_count, azure_deliverystatusupdate_maximum, azure_deliverystatusupdate_minimum, azure_deliverystatusupdate_total</td>
    <td>Count</td>
    <td>Email Communication Services message delivery results.</td>
  </tr>
  <tr>
    <td>azure_userengagement_average, azure_userengagement_count, azure_userengagement_maximum, azure_userengagement_minimum, azure_userengagement_total</td>
    <td>Count</td>
    <td>Email Communication Services user engagement metrics.</td>
  </tr>
</table>
