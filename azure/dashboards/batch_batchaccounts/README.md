---
title: Azure Microsoft.Batch/batchaccounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Batch/batchaccounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Batch/batchaccounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Batch/batchaccounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_corecount_average, azure_corecount_count, azure_corecount_maximum, azure_corecount_minimum, azure_corecount_total</td>
    <td>Count</td>
    <td>Total number of dedicated cores in the batch account</td>
  </tr>
  <tr>
    <td>azure_creatingnodecount_average, azure_creatingnodecount_count, azure_creatingnodecount_maximum, azure_creatingnodecount_minimum, azure_creatingnodecount_total</td>
    <td>Count</td>
    <td>Number of nodes being created</td>
  </tr>
  <tr>
    <td>azure_idlenodecount_average, azure_idlenodecount_count, azure_idlenodecount_maximum, azure_idlenodecount_minimum, azure_idlenodecount_total</td>
    <td>Count</td>
    <td>Number of idle nodes</td>
  </tr>
  <tr>
    <td>azure_jobdeletecompleteevent_average, azure_jobdeletecompleteevent_count, azure_jobdeletecompleteevent_maximum, azure_jobdeletecompleteevent_minimum, azure_jobdeletecompleteevent_total</td>
    <td>Count</td>
    <td>Total number of jobs that have been successfully deleted.</td>
  </tr>
  <tr>
    <td>azure_jobdeletestartevent_average, azure_jobdeletestartevent_count, azure_jobdeletestartevent_maximum, azure_jobdeletestartevent_minimum, azure_jobdeletestartevent_total</td>
    <td>Count</td>
    <td>Total number of jobs that have been requested to be deleted.</td>
  </tr>
  <tr>
    <td>azure_jobdisablecompleteevent_average, azure_jobdisablecompleteevent_count, azure_jobdisablecompleteevent_maximum, azure_jobdisablecompleteevent_minimum, azure_jobdisablecompleteevent_total</td>
    <td>Count</td>
    <td>Total number of jobs that have been successfully disabled.</td>
  </tr>
  <tr>
    <td>azure_jobdisablestartevent_average, azure_jobdisablestartevent_count, azure_jobdisablestartevent_maximum, azure_jobdisablestartevent_minimum, azure_jobdisablestartevent_total</td>
    <td>Count</td>
    <td>Total number of jobs that have been requested to be disabled.</td>
  </tr>
  <tr>
    <td>azure_jobstartevent_average, azure_jobstartevent_count, azure_jobstartevent_maximum, azure_jobstartevent_minimum, azure_jobstartevent_total</td>
    <td>Count</td>
    <td>Total number of jobs that have been successfully started.</td>
  </tr>
  <tr>
    <td>azure_jobterminatecompleteevent_average, azure_jobterminatecompleteevent_count, azure_jobterminatecompleteevent_maximum, azure_jobterminatecompleteevent_minimum, azure_jobterminatecompleteevent_total</td>
    <td>Count</td>
    <td>Total number of jobs that have been successfully terminated.</td>
  </tr>
  <tr>
    <td>azure_jobterminatestartevent_average, azure_jobterminatestartevent_count, azure_jobterminatestartevent_maximum, azure_jobterminatestartevent_minimum, azure_jobterminatestartevent_total</td>
    <td>Count</td>
    <td>Total number of jobs that have been requested to be terminated.</td>
  </tr>
  <tr>
    <td>azure_leavingpoolnodecount_average, azure_leavingpoolnodecount_count, azure_leavingpoolnodecount_maximum, azure_leavingpoolnodecount_minimum, azure_leavingpoolnodecount_total</td>
    <td>Count</td>
    <td>Number of nodes leaving the Pool</td>
  </tr>
  <tr>
    <td>azure_lowprioritycorecount_average, azure_lowprioritycorecount_count, azure_lowprioritycorecount_maximum, azure_lowprioritycorecount_minimum, azure_lowprioritycorecount_total</td>
    <td>Count</td>
    <td>Total number of low-priority cores in the batch account</td>
  </tr>
  <tr>
    <td>azure_offlinenodecount_average, azure_offlinenodecount_count, azure_offlinenodecount_maximum, azure_offlinenodecount_minimum, azure_offlinenodecount_total</td>
    <td>Count</td>
    <td>Number of offline nodes</td>
  </tr>
  <tr>
    <td>azure_poolcreateevent_average, azure_poolcreateevent_count, azure_poolcreateevent_maximum, azure_poolcreateevent_minimum, azure_poolcreateevent_total</td>
    <td>Count</td>
    <td>Total number of pools that have been created</td>
  </tr>
  <tr>
    <td>azure_pooldeletecompleteevent_average, azure_pooldeletecompleteevent_count, azure_pooldeletecompleteevent_maximum, azure_pooldeletecompleteevent_minimum, azure_pooldeletecompleteevent_total</td>
    <td>Count</td>
    <td>Total number of pool deletes that have completed</td>
  </tr>
  <tr>
    <td>azure_pooldeletestartevent_average, azure_pooldeletestartevent_count, azure_pooldeletestartevent_maximum, azure_pooldeletestartevent_minimum, azure_pooldeletestartevent_total</td>
    <td>Count</td>
    <td>Total number of pool deletes that have started</td>
  </tr>
  <tr>
    <td>azure_poolresizecompleteevent_average, azure_poolresizecompleteevent_count, azure_poolresizecompleteevent_maximum, azure_poolresizecompleteevent_minimum, azure_poolresizecompleteevent_total</td>
    <td>Count</td>
    <td>Total number of pool resizes that have completed</td>
  </tr>
  <tr>
    <td>azure_poolresizestartevent_average, azure_poolresizestartevent_count, azure_poolresizestartevent_maximum, azure_poolresizestartevent_minimum, azure_poolresizestartevent_total</td>
    <td>Count</td>
    <td>Total number of pool resizes that have started</td>
  </tr>
  <tr>
    <td>azure_preemptednodecount_average, azure_preemptednodecount_count, azure_preemptednodecount_maximum, azure_preemptednodecount_minimum, azure_preemptednodecount_total</td>
    <td>Count</td>
    <td>Number of preempted nodes</td>
  </tr>
  <tr>
    <td>azure_rebootingnodecount_average, azure_rebootingnodecount_count, azure_rebootingnodecount_maximum, azure_rebootingnodecount_minimum, azure_rebootingnodecount_total</td>
    <td>Count</td>
    <td>Number of rebooting nodes</td>
  </tr>
  <tr>
    <td>azure_reimagingnodecount_average, azure_reimagingnodecount_count, azure_reimagingnodecount_maximum, azure_reimagingnodecount_minimum, azure_reimagingnodecount_total</td>
    <td>Count</td>
    <td>Number of reimaging nodes</td>
  </tr>
  <tr>
    <td>azure_runningnodecount_average, azure_runningnodecount_count, azure_runningnodecount_maximum, azure_runningnodecount_minimum, azure_runningnodecount_total</td>
    <td>Count</td>
    <td>Number of running nodes</td>
  </tr>
  <tr>
    <td>azure_startingnodecount_average, azure_startingnodecount_count, azure_startingnodecount_maximum, azure_startingnodecount_minimum, azure_startingnodecount_total</td>
    <td>Count</td>
    <td>Number of nodes starting</td>
  </tr>
  <tr>
    <td>azure_starttaskfailednodecount_average, azure_starttaskfailednodecount_count, azure_starttaskfailednodecount_maximum, azure_starttaskfailednodecount_minimum, azure_starttaskfailednodecount_total</td>
    <td>Count</td>
    <td>Number of nodes where the Start Task has failed</td>
  </tr>
  <tr>
    <td>azure_taskcompleteevent_average, azure_taskcompleteevent_count, azure_taskcompleteevent_maximum, azure_taskcompleteevent_minimum, azure_taskcompleteevent_total</td>
    <td>Count</td>
    <td>Total number of tasks that have completed</td>
  </tr>
  <tr>
    <td>azure_taskfailevent_average, azure_taskfailevent_count, azure_taskfailevent_maximum, azure_taskfailevent_minimum, azure_taskfailevent_total</td>
    <td>Count</td>
    <td>Total number of tasks that have completed in a failed state</td>
  </tr>
  <tr>
    <td>azure_taskstartevent_average, azure_taskstartevent_count, azure_taskstartevent_maximum, azure_taskstartevent_minimum, azure_taskstartevent_total</td>
    <td>Count</td>
    <td>Total number of tasks that have started</td>
  </tr>
  <tr>
    <td>azure_totallowprioritynodecount_average, azure_totallowprioritynodecount_count, azure_totallowprioritynodecount_maximum, azure_totallowprioritynodecount_minimum, azure_totallowprioritynodecount_total</td>
    <td>Count</td>
    <td>Total number of low-priority nodes in the batch account</td>
  </tr>
  <tr>
    <td>azure_totalnodecount_average, azure_totalnodecount_count, azure_totalnodecount_maximum, azure_totalnodecount_minimum, azure_totalnodecount_total</td>
    <td>Count</td>
    <td>Total number of dedicated nodes in the batch account</td>
  </tr>
  <tr>
    <td>azure_unusablenodecount_average, azure_unusablenodecount_count, azure_unusablenodecount_maximum, azure_unusablenodecount_minimum, azure_unusablenodecount_total</td>
    <td>Count</td>
    <td>Number of unusable nodes</td>
  </tr>
  <tr>
    <td>azure_waitingforstarttasknodecount_average, azure_waitingforstarttasknodecount_count, azure_waitingforstarttasknodecount_maximum, azure_waitingforstarttasknodecount_minimum, azure_waitingforstarttasknodecount_total</td>
    <td>Count</td>
    <td>Number of nodes waiting for the Start Task to complete</td>
  </tr>
</table>
