---
title: Azure Microsoft.Logic/Workflows metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Logic/Workflows metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Logic/Workflows
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Logic/Workflows, **PUT DESCRIPTION HERE**. 

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
    <td>azure_actionlatency_average, azure_actionlatency_count, azure_actionlatency_maximum, azure_actionlatency_minimum, azure_actionlatency_total</td>
    <td>Seconds</td>
    <td>Latency of completed workflow actions.</td>
  </tr>
  <tr>
    <td>azure_actionscompleted_average, azure_actionscompleted_count, azure_actionscompleted_maximum, azure_actionscompleted_minimum, azure_actionscompleted_total</td>
    <td>Count</td>
    <td>Number of workflow actions completed.</td>
  </tr>
  <tr>
    <td>azure_actionsfailed_average, azure_actionsfailed_count, azure_actionsfailed_maximum, azure_actionsfailed_minimum, azure_actionsfailed_total</td>
    <td>Count</td>
    <td>Number of workflow actions failed.</td>
  </tr>
  <tr>
    <td>azure_actionsskipped_average, azure_actionsskipped_count, azure_actionsskipped_maximum, azure_actionsskipped_minimum, azure_actionsskipped_total</td>
    <td>Count</td>
    <td>Number of workflow actions skipped.</td>
  </tr>
  <tr>
    <td>azure_actionsstarted_average, azure_actionsstarted_count, azure_actionsstarted_maximum, azure_actionsstarted_minimum, azure_actionsstarted_total</td>
    <td>Count</td>
    <td>Number of workflow actions started.</td>
  </tr>
  <tr>
    <td>azure_actionssucceeded_average, azure_actionssucceeded_count, azure_actionssucceeded_maximum, azure_actionssucceeded_minimum, azure_actionssucceeded_total</td>
    <td>Count</td>
    <td>Number of workflow actions succeeded.</td>
  </tr>
  <tr>
    <td>azure_actionsuccesslatency_average, azure_actionsuccesslatency_count, azure_actionsuccesslatency_maximum, azure_actionsuccesslatency_minimum, azure_actionsuccesslatency_total</td>
    <td>Seconds</td>
    <td>Latency of succeeded workflow actions.</td>
  </tr>
  <tr>
    <td>azure_actionthrottledevents_average, azure_actionthrottledevents_count, azure_actionthrottledevents_maximum, azure_actionthrottledevents_minimum, azure_actionthrottledevents_total</td>
    <td>Count</td>
    <td>Number of workflow action throttled events..</td>
  </tr>
  <tr>
    <td>azure_billableactionexecutions_average, azure_billableactionexecutions_count, azure_billableactionexecutions_maximum, azure_billableactionexecutions_minimum, azure_billableactionexecutions_total</td>
    <td>Count</td>
    <td>Number of workflow action executions getting billed.</td>
  </tr>
  <tr>
    <td>azure_billabletriggerexecutions_average, azure_billabletriggerexecutions_count, azure_billabletriggerexecutions_maximum, azure_billabletriggerexecutions_minimum, azure_billabletriggerexecutions_total</td>
    <td>Count</td>
    <td>Number of workflow trigger executions getting billed.</td>
  </tr>
  <tr>
    <td>azure_billingusagenativeoperation_average, azure_billingusagenativeoperation_count, azure_billingusagenativeoperation_maximum, azure_billingusagenativeoperation_minimum, azure_billingusagenativeoperation_total</td>
    <td>Count</td>
    <td>Number of native operation executions getting billed.</td>
  </tr>
  <tr>
    <td>azure_billingusagestandardconnector_average, azure_billingusagestandardconnector_count, azure_billingusagestandardconnector_maximum, azure_billingusagestandardconnector_minimum, azure_billingusagestandardconnector_total</td>
    <td>Count</td>
    <td>Number of standard connector executions getting billed.</td>
  </tr>
  <tr>
    <td>azure_billingusagestorageconsumption_average, azure_billingusagestorageconsumption_count, azure_billingusagestorageconsumption_maximum, azure_billingusagestorageconsumption_minimum, azure_billingusagestorageconsumption_total</td>
    <td>Count</td>
    <td>Number of storage consumption executions getting billed.</td>
  </tr>
  <tr>
    <td>azure_runfailurepercentage_average, azure_runfailurepercentage_count, azure_runfailurepercentage_maximum, azure_runfailurepercentage_minimum, azure_runfailurepercentage_total</td>
    <td>Percent</td>
    <td>Percentage of workflow runs failed.</td>
  </tr>
  <tr>
    <td>azure_runlatency_average, azure_runlatency_count, azure_runlatency_maximum, azure_runlatency_minimum, azure_runlatency_total</td>
    <td>Seconds</td>
    <td>Latency of completed workflow runs.</td>
  </tr>
  <tr>
    <td>azure_runscancelled_average, azure_runscancelled_count, azure_runscancelled_maximum, azure_runscancelled_minimum, azure_runscancelled_total</td>
    <td>Count</td>
    <td>Number of workflow runs cancelled.</td>
  </tr>
  <tr>
    <td>azure_runscompleted_average, azure_runscompleted_count, azure_runscompleted_maximum, azure_runscompleted_minimum, azure_runscompleted_total</td>
    <td>Count</td>
    <td>Number of workflow runs completed.</td>
  </tr>
  <tr>
    <td>azure_runsfailed_average, azure_runsfailed_count, azure_runsfailed_maximum, azure_runsfailed_minimum, azure_runsfailed_total</td>
    <td>Count</td>
    <td>Number of workflow runs failed.</td>
  </tr>
  <tr>
    <td>azure_runsstarted_average, azure_runsstarted_count, azure_runsstarted_maximum, azure_runsstarted_minimum, azure_runsstarted_total</td>
    <td>Count</td>
    <td>Number of workflow runs started.</td>
  </tr>
  <tr>
    <td>azure_runssucceeded_average, azure_runssucceeded_count, azure_runssucceeded_maximum, azure_runssucceeded_minimum, azure_runssucceeded_total</td>
    <td>Count</td>
    <td>Number of workflow runs succeeded.</td>
  </tr>
  <tr>
    <td>azure_runstartthrottledevents_average, azure_runstartthrottledevents_count, azure_runstartthrottledevents_maximum, azure_runstartthrottledevents_minimum, azure_runstartthrottledevents_total</td>
    <td>Count</td>
    <td>Number of workflow run start throttled events.</td>
  </tr>
  <tr>
    <td>azure_runsuccesslatency_average, azure_runsuccesslatency_count, azure_runsuccesslatency_maximum, azure_runsuccesslatency_minimum, azure_runsuccesslatency_total</td>
    <td>Seconds</td>
    <td>Latency of succeeded workflow runs.</td>
  </tr>
  <tr>
    <td>azure_runthrottledevents_average, azure_runthrottledevents_count, azure_runthrottledevents_maximum, azure_runthrottledevents_minimum, azure_runthrottledevents_total</td>
    <td>Count</td>
    <td>Number of workflow action or trigger throttled events.</td>
  </tr>
  <tr>
    <td>azure_totalbillableexecutions_average, azure_totalbillableexecutions_count, azure_totalbillableexecutions_maximum, azure_totalbillableexecutions_minimum, azure_totalbillableexecutions_total</td>
    <td>Count</td>
    <td>Number of workflow executions getting billed.</td>
  </tr>
  <tr>
    <td>azure_triggerfirelatency_average, azure_triggerfirelatency_count, azure_triggerfirelatency_maximum, azure_triggerfirelatency_minimum, azure_triggerfirelatency_total</td>
    <td>Seconds</td>
    <td>Latency of fired workflow triggers.</td>
  </tr>
  <tr>
    <td>azure_triggerlatency_average, azure_triggerlatency_count, azure_triggerlatency_maximum, azure_triggerlatency_minimum, azure_triggerlatency_total</td>
    <td>Seconds</td>
    <td>Latency of completed workflow triggers.</td>
  </tr>
  <tr>
    <td>azure_triggerscompleted_average, azure_triggerscompleted_count, azure_triggerscompleted_maximum, azure_triggerscompleted_minimum, azure_triggerscompleted_total</td>
    <td>Count</td>
    <td>Number of workflow triggers completed.</td>
  </tr>
  <tr>
    <td>azure_triggersfailed_average, azure_triggersfailed_count, azure_triggersfailed_maximum, azure_triggersfailed_minimum, azure_triggersfailed_total</td>
    <td>Count</td>
    <td>Number of workflow triggers failed.</td>
  </tr>
  <tr>
    <td>azure_triggersfired_average, azure_triggersfired_count, azure_triggersfired_maximum, azure_triggersfired_minimum, azure_triggersfired_total</td>
    <td>Count</td>
    <td>Number of workflow triggers fired.</td>
  </tr>
  <tr>
    <td>azure_triggersskipped_average, azure_triggersskipped_count, azure_triggersskipped_maximum, azure_triggersskipped_minimum, azure_triggersskipped_total</td>
    <td>Count</td>
    <td>Number of workflow triggers skipped.</td>
  </tr>
  <tr>
    <td>azure_triggersstarted_average, azure_triggersstarted_count, azure_triggersstarted_maximum, azure_triggersstarted_minimum, azure_triggersstarted_total</td>
    <td>Count</td>
    <td>Number of workflow triggers started.</td>
  </tr>
  <tr>
    <td>azure_triggerssucceeded_average, azure_triggerssucceeded_count, azure_triggerssucceeded_maximum, azure_triggerssucceeded_minimum, azure_triggerssucceeded_total</td>
    <td>Count</td>
    <td>Number of workflow triggers succeeded.</td>
  </tr>
  <tr>
    <td>azure_triggersuccesslatency_average, azure_triggersuccesslatency_count, azure_triggersuccesslatency_maximum, azure_triggersuccesslatency_minimum, azure_triggersuccesslatency_total</td>
    <td>Seconds</td>
    <td>Latency of succeeded workflow triggers.</td>
  </tr>
  <tr>
    <td>azure_triggerthrottledevents_average, azure_triggerthrottledevents_count, azure_triggerthrottledevents_maximum, azure_triggerthrottledevents_minimum, azure_triggerthrottledevents_total</td>
    <td>Count</td>
    <td>Number of workflow trigger throttled events.</td>
  </tr>
</table>
