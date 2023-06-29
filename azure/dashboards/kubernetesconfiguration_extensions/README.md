---
title: Azure microsoft.kubernetesconfiguration/extensions metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.kubernetesconfiguration/extensions metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.kubernetesconfiguration/extensions
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.kubernetesconfiguration/extensions, **PUT DESCRIPTION HERE**. 

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
    <td>azure_activesessioncount_average, azure_activesessioncount_count, azure_activesessioncount_maximum, azure_activesessioncount_minimum, azure_activesessioncount_total</td>
    <td>Count</td>
    <td>Number of Active PDU Sessions</td>
  </tr>
  <tr>
    <td>azure_authattempt_average, azure_authattempt_count, azure_authattempt_maximum, azure_authattempt_minimum, azure_authattempt_total</td>
    <td>Count</td>
    <td>Authentication attempts rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_authfailure_average, azure_authfailure_count, azure_authfailure_maximum, azure_authfailure_minimum, azure_authfailure_total</td>
    <td>Count</td>
    <td>Authentication failure rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_authsuccess_average, azure_authsuccess_count, azure_authsuccess_maximum, azure_authsuccess_minimum, azure_authsuccess_total</td>
    <td>Count</td>
    <td>Authentication success rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_connectednodebs_average, azure_connectednodebs_count, azure_connectednodebs_maximum, azure_connectednodebs_minimum, azure_connectednodebs_total</td>
    <td>Count</td>
    <td>Number of connected gNodeBs or eNodeBs</td>
  </tr>
  <tr>
    <td>azure_deregistrationattempt_average, azure_deregistrationattempt_count, azure_deregistrationattempt_maximum, azure_deregistrationattempt_minimum, azure_deregistrationattempt_total</td>
    <td>Count</td>
    <td>UE deregistration attempts rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_deregistrationsuccess_average, azure_deregistrationsuccess_count, azure_deregistrationsuccess_maximum, azure_deregistrationsuccess_minimum, azure_deregistrationsuccess_total</td>
    <td>Count</td>
    <td>UE deregistration success rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_pagingattempt_average, azure_pagingattempt_count, azure_pagingattempt_maximum, azure_pagingattempt_minimum, azure_pagingattempt_total</td>
    <td>Count</td>
    <td>Paging attempts rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_pagingfailure_average, azure_pagingfailure_count, azure_pagingfailure_maximum, azure_pagingfailure_minimum, azure_pagingfailure_total</td>
    <td>Count</td>
    <td>Paging failure rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_provisionedsubscribers_average, azure_provisionedsubscribers_count, azure_provisionedsubscribers_maximum, azure_provisionedsubscribers_minimum, azure_provisionedsubscribers_total</td>
    <td>Count</td>
    <td>Number of provisioned subscribers</td>
  </tr>
  <tr>
    <td>azure_ransetupfailure_average, azure_ransetupfailure_count, azure_ransetupfailure_maximum, azure_ransetupfailure_minimum, azure_ransetupfailure_total</td>
    <td>Count</td>
    <td>RAN setup failure rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_ransetuprequest_average, azure_ransetuprequest_count, azure_ransetuprequest_maximum, azure_ransetuprequest_minimum, azure_ransetuprequest_total</td>
    <td>Count</td>
    <td>RAN setup reuests rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_ransetupresponse_average, azure_ransetupresponse_count, azure_ransetupresponse_maximum, azure_ransetupresponse_minimum, azure_ransetupresponse_total</td>
    <td>Count</td>
    <td>RAN setup response rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_registeredsubscribers_average, azure_registeredsubscribers_count, azure_registeredsubscribers_maximum, azure_registeredsubscribers_minimum, azure_registeredsubscribers_total</td>
    <td>Count</td>
    <td>Number of registered subscribers</td>
  </tr>
  <tr>
    <td>azure_registeredsubscribersconnected_average, azure_registeredsubscribersconnected_count, azure_registeredsubscribersconnected_maximum, azure_registeredsubscribersconnected_minimum, azure_registeredsubscribersconnected_total</td>
    <td>Count</td>
    <td>Number of registered and connected subscribers</td>
  </tr>
  <tr>
    <td>azure_registeredsubscribersidle_average, azure_registeredsubscribersidle_count, azure_registeredsubscribersidle_maximum, azure_registeredsubscribersidle_minimum, azure_registeredsubscribersidle_total</td>
    <td>Count</td>
    <td>Number of registered and idle subscribers</td>
  </tr>
  <tr>
    <td>azure_registrationattempt_average, azure_registrationattempt_count, azure_registrationattempt_maximum, azure_registrationattempt_minimum, azure_registrationattempt_total</td>
    <td>Count</td>
    <td>Registration attempts rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_registrationfailure_average, azure_registrationfailure_count, azure_registrationfailure_maximum, azure_registrationfailure_minimum, azure_registrationfailure_total</td>
    <td>Count</td>
    <td>Registration failure rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_registrationsuccess_average, azure_registrationsuccess_count, azure_registrationsuccess_maximum, azure_registrationsuccess_minimum, azure_registrationsuccess_total</td>
    <td>Count</td>
    <td>Registration success rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_servicerequestattempt_average, azure_servicerequestattempt_count, azure_servicerequestattempt_maximum, azure_servicerequestattempt_minimum, azure_servicerequestattempt_total</td>
    <td>Count</td>
    <td>Service request attempts rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_servicerequestfailure_average, azure_servicerequestfailure_count, azure_servicerequestfailure_maximum, azure_servicerequestfailure_minimum, azure_servicerequestfailure_total</td>
    <td>Count</td>
    <td>Service request failure rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_servicerequestsuccess_average, azure_servicerequestsuccess_count, azure_servicerequestsuccess_maximum, azure_servicerequestsuccess_minimum, azure_servicerequestsuccess_total</td>
    <td>Count</td>
    <td>Service request success rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_sessionestablishmentattempt_average, azure_sessionestablishmentattempt_count, azure_sessionestablishmentattempt_maximum, azure_sessionestablishmentattempt_minimum, azure_sessionestablishmentattempt_total</td>
    <td>Count</td>
    <td>PDU session establishment attempts rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_sessionestablishmentfailure_average, azure_sessionestablishmentfailure_count, azure_sessionestablishmentfailure_maximum, azure_sessionestablishmentfailure_minimum, azure_sessionestablishmentfailure_total</td>
    <td>Count</td>
    <td>PDU session establishment failure rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_sessionestablishmentsuccess_average, azure_sessionestablishmentsuccess_count, azure_sessionestablishmentsuccess_maximum, azure_sessionestablishmentsuccess_minimum, azure_sessionestablishmentsuccess_total</td>
    <td>Count</td>
    <td>PDU session establishment success rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_sessionrelease_average, azure_sessionrelease_count, azure_sessionrelease_maximum, azure_sessionrelease_minimum, azure_sessionrelease_total</td>
    <td>Count</td>
    <td>Session release rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_uecontextreleasecommand_average, azure_uecontextreleasecommand_count, azure_uecontextreleasecommand_maximum, azure_uecontextreleasecommand_minimum, azure_uecontextreleasecommand_total</td>
    <td>Count</td>
    <td>UE context release command message rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_uecontextreleasecomplete_average, azure_uecontextreleasecomplete_count, azure_uecontextreleasecomplete_maximum, azure_uecontextreleasecomplete_minimum, azure_uecontextreleasecomplete_total</td>
    <td>Count</td>
    <td>UE context release complete message rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_uecontextreleaserequest_average, azure_uecontextreleaserequest_count, azure_uecontextreleaserequest_maximum, azure_uecontextreleaserequest_minimum, azure_uecontextreleaserequest_total</td>
    <td>Count</td>
    <td>UE context release request message rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_userplanebandwidth_average, azure_userplanebandwidth_count, azure_userplanebandwidth_maximum, azure_userplanebandwidth_minimum, azure_userplanebandwidth_total</td>
    <td>BitsPerSecond</td>
    <td>User plane bandwidth in bits/second.</td>
  </tr>
  <tr>
    <td>azure_userplanepacketdroprate_average, azure_userplanepacketdroprate_count, azure_userplanepacketdroprate_maximum, azure_userplanepacketdroprate_minimum, azure_userplanepacketdroprate_total</td>
    <td>CountPerSecond</td>
    <td>User plane packet drop rate (packets/sec)</td>
  </tr>
  <tr>
    <td>azure_userplanepacketrate_average, azure_userplanepacketrate_count, azure_userplanepacketrate_maximum, azure_userplanepacketrate_minimum, azure_userplanepacketrate_total</td>
    <td>CountPerSecond</td>
    <td>User plane packet rate (packets/sec)</td>
  </tr>
  <tr>
    <td>azure_xnhandoverattempt_average, azure_xnhandoverattempt_count, azure_xnhandoverattempt_maximum, azure_xnhandoverattempt_minimum, azure_xnhandoverattempt_total</td>
    <td>Count</td>
    <td>Handover attempts rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_xnhandoverfailure_average, azure_xnhandoverfailure_count, azure_xnhandoverfailure_maximum, azure_xnhandoverfailure_minimum, azure_xnhandoverfailure_total</td>
    <td>Count</td>
    <td>Handover failure rate (per minute)</td>
  </tr>
  <tr>
    <td>azure_xnhandoversuccess_average, azure_xnhandoversuccess_count, azure_xnhandoversuccess_maximum, azure_xnhandoversuccess_minimum, azure_xnhandoversuccess_total</td>
    <td>Count</td>
    <td>Handover success rate (per minute)</td>
  </tr>
</table>
