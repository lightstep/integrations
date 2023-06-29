---
title: Azure Microsoft.DataFactory/factories metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DataFactory/factories metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DataFactory/factories
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DataFactory/factories, **PUT DESCRIPTION HERE**. 

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
    <td>azure_activitycancelledruns_average, azure_activitycancelledruns_count, azure_activitycancelledruns_maximum, azure_activitycancelledruns_minimum, azure_activitycancelledruns_total</td>
    <td>Count</td>
    <td>Cancelled activity runs metrics</td>
  </tr>
  <tr>
    <td>azure_activityfailedruns_average, azure_activityfailedruns_count, azure_activityfailedruns_maximum, azure_activityfailedruns_minimum, azure_activityfailedruns_total</td>
    <td>Count</td>
    <td>Failed activity runs metrics</td>
  </tr>
  <tr>
    <td>azure_activitysucceededruns_average, azure_activitysucceededruns_count, azure_activitysucceededruns_maximum, azure_activitysucceededruns_minimum, azure_activitysucceededruns_total</td>
    <td>Count</td>
    <td>Succeeded activity runs metrics</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimecelerytasktimeouterror_average, azure_airflowintegrationruntimecelerytasktimeouterror_count, azure_airflowintegrationruntimecelerytasktimeouterror_maximum, azure_airflowintegrationruntimecelerytasktimeouterror_minimum, azure_airflowintegrationruntimecelerytasktimeouterror_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Celery Task Timeout Error</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimecollectdbdags_average, azure_airflowintegrationruntimecollectdbdags_count, azure_airflowintegrationruntimecollectdbdags_maximum, azure_airflowintegrationruntimecollectdbdags_minimum, azure_airflowintegrationruntimecollectdbdags_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime Collect DB Dags</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimecpupercentage_average, azure_airflowintegrationruntimecpupercentage_count, azure_airflowintegrationruntimecpupercentage_maximum, azure_airflowintegrationruntimecpupercentage_minimum, azure_airflowintegrationruntimecpupercentage_total</td>
    <td>Percent</td>
    <td>Airflow Integration Runtime Cpu Percentage</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimecpuusage_average, azure_airflowintegrationruntimecpuusage_count, azure_airflowintegrationruntimecpuusage_maximum, azure_airflowintegrationruntimecpuusage_minimum, azure_airflowintegrationruntimecpuusage_total</td>
    <td>Millicores</td>
    <td>Airflow Integration Runtime Memory Usage</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagbagsize_average, azure_airflowintegrationruntimedagbagsize_count, azure_airflowintegrationruntimedagbagsize_maximum, azure_airflowintegrationruntimedagbagsize_minimum, azure_airflowintegrationruntimedagbagsize_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Dag Bag Size</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagcallbackexceptions_average, azure_airflowintegrationruntimedagcallbackexceptions_count, azure_airflowintegrationruntimedagcallbackexceptions_maximum, azure_airflowintegrationruntimedagcallbackexceptions_minimum, azure_airflowintegrationruntimedagcallbackexceptions_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Dag Callback Exceptions</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagfilerefresherror_average, azure_airflowintegrationruntimedagfilerefresherror_count, azure_airflowintegrationruntimedagfilerefresherror_maximum, azure_airflowintegrationruntimedagfilerefresherror_minimum, azure_airflowintegrationruntimedagfilerefresherror_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime DAG File Refresh Error</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagprocessingimporterrors_average, azure_airflowintegrationruntimedagprocessingimporterrors_count, azure_airflowintegrationruntimedagprocessingimporterrors_maximum, azure_airflowintegrationruntimedagprocessingimporterrors_minimum, azure_airflowintegrationruntimedagprocessingimporterrors_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime DAG Processing Import Errors</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagprocessinglastduration_average, azure_airflowintegrationruntimedagprocessinglastduration_count, azure_airflowintegrationruntimedagprocessinglastduration_maximum, azure_airflowintegrationruntimedagprocessinglastduration_minimum, azure_airflowintegrationruntimedagprocessinglastduration_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime DAG Processing Last Duration</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagprocessinglastrunsecondsago_average, azure_airflowintegrationruntimedagprocessinglastrunsecondsago_count, azure_airflowintegrationruntimedagprocessinglastrunsecondsago_maximum, azure_airflowintegrationruntimedagprocessinglastrunsecondsago_minimum, azure_airflowintegrationruntimedagprocessinglastrunsecondsago_total</td>
    <td>Seconds</td>
    <td>Airflow Integration Runtime DAG Processing Last Run Seconds Ago</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagprocessingmanagerstalls_average, azure_airflowintegrationruntimedagprocessingmanagerstalls_count, azure_airflowintegrationruntimedagprocessingmanagerstalls_maximum, azure_airflowintegrationruntimedagprocessingmanagerstalls_minimum, azure_airflowintegrationruntimedagprocessingmanagerstalls_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime DAG ProcessingManager Stalls</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagprocessingprocesses_average, azure_airflowintegrationruntimedagprocessingprocesses_count, azure_airflowintegrationruntimedagprocessingprocesses_maximum, azure_airflowintegrationruntimedagprocessingprocesses_minimum, azure_airflowintegrationruntimedagprocessingprocesses_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime DAG Processing Processes</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagprocessingprocessortimeouts_average, azure_airflowintegrationruntimedagprocessingprocessortimeouts_count, azure_airflowintegrationruntimedagprocessingprocessortimeouts_maximum, azure_airflowintegrationruntimedagprocessingprocessortimeouts_minimum, azure_airflowintegrationruntimedagprocessingprocessortimeouts_total</td>
    <td>Seconds</td>
    <td>Airflow Integration Runtime DAG Processing Processor Timeouts</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagprocessingtotalparsetime_average, azure_airflowintegrationruntimedagprocessingtotalparsetime_count, azure_airflowintegrationruntimedagprocessingtotalparsetime_maximum, azure_airflowintegrationruntimedagprocessingtotalparsetime_minimum, azure_airflowintegrationruntimedagprocessingtotalparsetime_total</td>
    <td>Seconds</td>
    <td>Airflow Integration Runtime DAG Processing Total Parse Time</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagrundependencycheck_average, azure_airflowintegrationruntimedagrundependencycheck_count, azure_airflowintegrationruntimedagrundependencycheck_maximum, azure_airflowintegrationruntimedagrundependencycheck_minimum, azure_airflowintegrationruntimedagrundependencycheck_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime DAG Run Dependency Check</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagrundurationfailed_average, azure_airflowintegrationruntimedagrundurationfailed_count, azure_airflowintegrationruntimedagrundurationfailed_maximum, azure_airflowintegrationruntimedagrundurationfailed_minimum, azure_airflowintegrationruntimedagrundurationfailed_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime DAG Run Duration Failed</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagrundurationsuccess_average, azure_airflowintegrationruntimedagrundurationsuccess_count, azure_airflowintegrationruntimedagrundurationsuccess_maximum, azure_airflowintegrationruntimedagrundurationsuccess_minimum, azure_airflowintegrationruntimedagrundurationsuccess_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime DAG Run Duration Success</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagrunfirsttaskschedulingdelay_average, azure_airflowintegrationruntimedagrunfirsttaskschedulingdelay_count, azure_airflowintegrationruntimedagrunfirsttaskschedulingdelay_maximum, azure_airflowintegrationruntimedagrunfirsttaskschedulingdelay_minimum, azure_airflowintegrationruntimedagrunfirsttaskschedulingdelay_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime DAG Run First Task Scheduling Delay</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimedagrunscheduledelay_average, azure_airflowintegrationruntimedagrunscheduledelay_count, azure_airflowintegrationruntimedagrunscheduledelay_maximum, azure_airflowintegrationruntimedagrunscheduledelay_minimum, azure_airflowintegrationruntimedagrunscheduledelay_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime DAG Run Schedule Delay</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeexecutoropenslots_average, azure_airflowintegrationruntimeexecutoropenslots_count, azure_airflowintegrationruntimeexecutoropenslots_maximum, azure_airflowintegrationruntimeexecutoropenslots_minimum, azure_airflowintegrationruntimeexecutoropenslots_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Executor Open Slots</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeexecutorqueuedtasks_average, azure_airflowintegrationruntimeexecutorqueuedtasks_count, azure_airflowintegrationruntimeexecutorqueuedtasks_maximum, azure_airflowintegrationruntimeexecutorqueuedtasks_minimum, azure_airflowintegrationruntimeexecutorqueuedtasks_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Executor Queued Tasks</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeexecutorrunningtasks_average, azure_airflowintegrationruntimeexecutorrunningtasks_count, azure_airflowintegrationruntimeexecutorrunningtasks_maximum, azure_airflowintegrationruntimeexecutorrunningtasks_minimum, azure_airflowintegrationruntimeexecutorrunningtasks_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Executor Running Tasks</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimejobend_average, azure_airflowintegrationruntimejobend_count, azure_airflowintegrationruntimejobend_maximum, azure_airflowintegrationruntimejobend_minimum, azure_airflowintegrationruntimejobend_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Job End</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimejobheartbeatfailure_average, azure_airflowintegrationruntimejobheartbeatfailure_count, azure_airflowintegrationruntimejobheartbeatfailure_maximum, azure_airflowintegrationruntimejobheartbeatfailure_minimum, azure_airflowintegrationruntimejobheartbeatfailure_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Heartbeat Failure</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimejobstart_average, azure_airflowintegrationruntimejobstart_count, azure_airflowintegrationruntimejobstart_maximum, azure_airflowintegrationruntimejobstart_minimum, azure_airflowintegrationruntimejobstart_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Job Start</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimememorypercentage_average, azure_airflowintegrationruntimememorypercentage_count, azure_airflowintegrationruntimememorypercentage_maximum, azure_airflowintegrationruntimememorypercentage_minimum, azure_airflowintegrationruntimememorypercentage_total</td>
    <td>Percent</td>
    <td>Airflow Integration Runtime Memory Percentage</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeoperatorfailures_average, azure_airflowintegrationruntimeoperatorfailures_count, azure_airflowintegrationruntimeoperatorfailures_maximum, azure_airflowintegrationruntimeoperatorfailures_minimum, azure_airflowintegrationruntimeoperatorfailures_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Operator Failures</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeoperatorsuccesses_average, azure_airflowintegrationruntimeoperatorsuccesses_count, azure_airflowintegrationruntimeoperatorsuccesses_maximum, azure_airflowintegrationruntimeoperatorsuccesses_minimum, azure_airflowintegrationruntimeoperatorsuccesses_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Operator Successes</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimepoolopenslots_average, azure_airflowintegrationruntimepoolopenslots_count, azure_airflowintegrationruntimepoolopenslots_maximum, azure_airflowintegrationruntimepoolopenslots_minimum, azure_airflowintegrationruntimepoolopenslots_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Pool Open Slots</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimepoolqueuedslots_average, azure_airflowintegrationruntimepoolqueuedslots_count, azure_airflowintegrationruntimepoolqueuedslots_maximum, azure_airflowintegrationruntimepoolqueuedslots_minimum, azure_airflowintegrationruntimepoolqueuedslots_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Pool Queued Slots</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimepoolrunningslots_average, azure_airflowintegrationruntimepoolrunningslots_count, azure_airflowintegrationruntimepoolrunningslots_maximum, azure_airflowintegrationruntimepoolrunningslots_minimum, azure_airflowintegrationruntimepoolrunningslots_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Pool Running Slots</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimepoolstarvingtasks_average, azure_airflowintegrationruntimepoolstarvingtasks_count, azure_airflowintegrationruntimepoolstarvingtasks_maximum, azure_airflowintegrationruntimepoolstarvingtasks_minimum, azure_airflowintegrationruntimepoolstarvingtasks_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Pool Starving Tasks</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulercriticalsectionbusy_average, azure_airflowintegrationruntimeschedulercriticalsectionbusy_count, azure_airflowintegrationruntimeschedulercriticalsectionbusy_maximum, azure_airflowintegrationruntimeschedulercriticalsectionbusy_minimum, azure_airflowintegrationruntimeschedulercriticalsectionbusy_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Critical Section Busy</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulercriticalsectionduration_average, azure_airflowintegrationruntimeschedulercriticalsectionduration_count, azure_airflowintegrationruntimeschedulercriticalsectionduration_maximum, azure_airflowintegrationruntimeschedulercriticalsectionduration_minimum, azure_airflowintegrationruntimeschedulercriticalsectionduration_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime Scheduler Critical Section Duration</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulerfailedslaemailattempts_average, azure_airflowintegrationruntimeschedulerfailedslaemailattempts_count, azure_airflowintegrationruntimeschedulerfailedslaemailattempts_maximum, azure_airflowintegrationruntimeschedulerfailedslaemailattempts_minimum, azure_airflowintegrationruntimeschedulerfailedslaemailattempts_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Failed SLA Email Attempts</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulerheartbeat_average, azure_airflowintegrationruntimeschedulerheartbeat_count, azure_airflowintegrationruntimeschedulerheartbeat_maximum, azure_airflowintegrationruntimeschedulerheartbeat_minimum, azure_airflowintegrationruntimeschedulerheartbeat_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Heartbeats</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulerorphanedtasksadopted_average, azure_airflowintegrationruntimeschedulerorphanedtasksadopted_count, azure_airflowintegrationruntimeschedulerorphanedtasksadopted_maximum, azure_airflowintegrationruntimeschedulerorphanedtasksadopted_minimum, azure_airflowintegrationruntimeschedulerorphanedtasksadopted_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Orphaned Tasks Adopted</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulerorphanedtaskscleared_average, azure_airflowintegrationruntimeschedulerorphanedtaskscleared_count, azure_airflowintegrationruntimeschedulerorphanedtaskscleared_maximum, azure_airflowintegrationruntimeschedulerorphanedtaskscleared_minimum, azure_airflowintegrationruntimeschedulerorphanedtaskscleared_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Orphaned Tasks Cleared</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulertasksexecutable_average, azure_airflowintegrationruntimeschedulertasksexecutable_count, azure_airflowintegrationruntimeschedulertasksexecutable_maximum, azure_airflowintegrationruntimeschedulertasksexecutable_minimum, azure_airflowintegrationruntimeschedulertasksexecutable_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Tasks Executable</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulertaskskilledexternally_average, azure_airflowintegrationruntimeschedulertaskskilledexternally_count, azure_airflowintegrationruntimeschedulertaskskilledexternally_maximum, azure_airflowintegrationruntimeschedulertaskskilledexternally_minimum, azure_airflowintegrationruntimeschedulertaskskilledexternally_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Tasks Killed Externally</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulertasksrunning_average, azure_airflowintegrationruntimeschedulertasksrunning_count, azure_airflowintegrationruntimeschedulertasksrunning_maximum, azure_airflowintegrationruntimeschedulertasksrunning_minimum, azure_airflowintegrationruntimeschedulertasksrunning_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Tasks Running</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimeschedulertasksstarving_average, azure_airflowintegrationruntimeschedulertasksstarving_count, azure_airflowintegrationruntimeschedulertasksstarving_maximum, azure_airflowintegrationruntimeschedulertasksstarving_minimum, azure_airflowintegrationruntimeschedulertasksstarving_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Scheduler Tasks Starving</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimestartedtaskinstances_average, azure_airflowintegrationruntimestartedtaskinstances_count, azure_airflowintegrationruntimestartedtaskinstances_maximum, azure_airflowintegrationruntimestartedtaskinstances_minimum, azure_airflowintegrationruntimestartedtaskinstances_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Started Task Instances</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetaskinstancecreatedusingoperator_average, azure_airflowintegrationruntimetaskinstancecreatedusingoperator_count, azure_airflowintegrationruntimetaskinstancecreatedusingoperator_maximum, azure_airflowintegrationruntimetaskinstancecreatedusingoperator_minimum, azure_airflowintegrationruntimetaskinstancecreatedusingoperator_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Task Instance Created Using Operator</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetaskinstanceduration_average, azure_airflowintegrationruntimetaskinstanceduration_count, azure_airflowintegrationruntimetaskinstanceduration_maximum, azure_airflowintegrationruntimetaskinstanceduration_minimum, azure_airflowintegrationruntimetaskinstanceduration_total</td>
    <td>Milliseconds</td>
    <td>Airflow Integration Runtime Task Instance Duration</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetaskinstancefailures_average, azure_airflowintegrationruntimetaskinstancefailures_count, azure_airflowintegrationruntimetaskinstancefailures_maximum, azure_airflowintegrationruntimetaskinstancefailures_minimum, azure_airflowintegrationruntimetaskinstancefailures_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Task Instance Failures</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetaskinstancefinished_average, azure_airflowintegrationruntimetaskinstancefinished_count, azure_airflowintegrationruntimetaskinstancefinished_maximum, azure_airflowintegrationruntimetaskinstancefinished_minimum, azure_airflowintegrationruntimetaskinstancefinished_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Task Instance Finished</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetaskinstancepreviouslysucceeded_average, azure_airflowintegrationruntimetaskinstancepreviouslysucceeded_count, azure_airflowintegrationruntimetaskinstancepreviouslysucceeded_maximum, azure_airflowintegrationruntimetaskinstancepreviouslysucceeded_minimum, azure_airflowintegrationruntimetaskinstancepreviouslysucceeded_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Task Instance Previously Succeeded</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetaskinstancesuccesses_average, azure_airflowintegrationruntimetaskinstancesuccesses_count, azure_airflowintegrationruntimetaskinstancesuccesses_maximum, azure_airflowintegrationruntimetaskinstancesuccesses_minimum, azure_airflowintegrationruntimetaskinstancesuccesses_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Task Instance Successes</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetaskremovedfromdag_average, azure_airflowintegrationruntimetaskremovedfromdag_count, azure_airflowintegrationruntimetaskremovedfromdag_maximum, azure_airflowintegrationruntimetaskremovedfromdag_minimum, azure_airflowintegrationruntimetaskremovedfromdag_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Task Removed From DAG</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetaskrestoredtodag_average, azure_airflowintegrationruntimetaskrestoredtodag_count, azure_airflowintegrationruntimetaskrestoredtodag_maximum, azure_airflowintegrationruntimetaskrestoredtodag_minimum, azure_airflowintegrationruntimetaskrestoredtodag_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Task Restored To DAG</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetriggersblockedmainthread_average, azure_airflowintegrationruntimetriggersblockedmainthread_count, azure_airflowintegrationruntimetriggersblockedmainthread_maximum, azure_airflowintegrationruntimetriggersblockedmainthread_minimum, azure_airflowintegrationruntimetriggersblockedmainthread_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Triggers Blocked Main Thread</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetriggersfailed_average, azure_airflowintegrationruntimetriggersfailed_count, azure_airflowintegrationruntimetriggersfailed_maximum, azure_airflowintegrationruntimetriggersfailed_minimum, azure_airflowintegrationruntimetriggersfailed_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Triggers Failed</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetriggersrunning_average, azure_airflowintegrationruntimetriggersrunning_count, azure_airflowintegrationruntimetriggersrunning_maximum, azure_airflowintegrationruntimetriggersrunning_minimum, azure_airflowintegrationruntimetriggersrunning_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Triggers Running</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimetriggerssucceeded_average, azure_airflowintegrationruntimetriggerssucceeded_count, azure_airflowintegrationruntimetriggerssucceeded_maximum, azure_airflowintegrationruntimetriggerssucceeded_minimum, azure_airflowintegrationruntimetriggerssucceeded_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Triggers Succeeded</td>
  </tr>
  <tr>
    <td>azure_airflowintegrationruntimezombieskilled_average, azure_airflowintegrationruntimezombieskilled_count, azure_airflowintegrationruntimezombieskilled_maximum, azure_airflowintegrationruntimezombieskilled_minimum, azure_airflowintegrationruntimezombieskilled_total</td>
    <td>Count</td>
    <td>Airflow Integration Runtime Zombie Tasks Killed</td>
  </tr>
  <tr>
    <td>azure_factorysizeingbunits_average, azure_factorysizeingbunits_count, azure_factorysizeingbunits_maximum, azure_factorysizeingbunits_minimum, azure_factorysizeingbunits_total</td>
    <td>Count</td>
    <td>Total factory size (GB unit)</td>
  </tr>
  <tr>
    <td>azure_integrationruntimeavailablememory_average, azure_integrationruntimeavailablememory_count, azure_integrationruntimeavailablememory_maximum, azure_integrationruntimeavailablememory_minimum, azure_integrationruntimeavailablememory_total</td>
    <td>Bytes</td>
    <td>Integration runtime available memory</td>
  </tr>
  <tr>
    <td>azure_integrationruntimeavailablenodenumber_average, azure_integrationruntimeavailablenodenumber_count, azure_integrationruntimeavailablenodenumber_maximum, azure_integrationruntimeavailablenodenumber_minimum, azure_integrationruntimeavailablenodenumber_total</td>
    <td>Count</td>
    <td>Integration runtime available node count</td>
  </tr>
  <tr>
    <td>azure_integrationruntimeaveragetaskpickupdelay_average, azure_integrationruntimeaveragetaskpickupdelay_count, azure_integrationruntimeaveragetaskpickupdelay_maximum, azure_integrationruntimeaveragetaskpickupdelay_minimum, azure_integrationruntimeaveragetaskpickupdelay_total</td>
    <td>Seconds</td>
    <td>Integration runtime queue duration</td>
  </tr>
  <tr>
    <td>azure_integrationruntimecopyavailablecapacitypercentage_average, azure_integrationruntimecopyavailablecapacitypercentage_count, azure_integrationruntimecopyavailablecapacitypercentage_maximum, azure_integrationruntimecopyavailablecapacitypercentage_minimum, azure_integrationruntimecopyavailablecapacitypercentage_total</td>
    <td>Percent</td>
    <td>Integration runtime copy available capacity percentage</td>
  </tr>
  <tr>
    <td>azure_integrationruntimecopycapacityutilization_average, azure_integrationruntimecopycapacityutilization_count, azure_integrationruntimecopycapacityutilization_maximum, azure_integrationruntimecopycapacityutilization_minimum, azure_integrationruntimecopycapacityutilization_total</td>
    <td>Percent</td>
    <td>Integration runtime copy capacity utilization</td>
  </tr>
  <tr>
    <td>azure_integrationruntimecopywaitingqueuelength_average, azure_integrationruntimecopywaitingqueuelength_count, azure_integrationruntimecopywaitingqueuelength_maximum, azure_integrationruntimecopywaitingqueuelength_minimum, azure_integrationruntimecopywaitingqueuelength_total</td>
    <td>Count</td>
    <td>Integration runtime copy waiting queue length</td>
  </tr>
  <tr>
    <td>azure_integrationruntimecpupercentage_average, azure_integrationruntimecpupercentage_count, azure_integrationruntimecpupercentage_maximum, azure_integrationruntimecpupercentage_minimum, azure_integrationruntimecpupercentage_total</td>
    <td>Percent</td>
    <td>Integration runtime CPU utilization</td>
  </tr>
  <tr>
    <td>azure_integrationruntimeexternalavailablecapacitypercentage_average, azure_integrationruntimeexternalavailablecapacitypercentage_count, azure_integrationruntimeexternalavailablecapacitypercentage_maximum, azure_integrationruntimeexternalavailablecapacitypercentage_minimum, azure_integrationruntimeexternalavailablecapacitypercentage_total</td>
    <td>Percent</td>
    <td>Integration runtime external available capacity percentage</td>
  </tr>
  <tr>
    <td>azure_integrationruntimeexternalcapacityutilization_average, azure_integrationruntimeexternalcapacityutilization_count, azure_integrationruntimeexternalcapacityutilization_maximum, azure_integrationruntimeexternalcapacityutilization_minimum, azure_integrationruntimeexternalcapacityutilization_total</td>
    <td>Percent</td>
    <td>Integration runtime external capacity utilization</td>
  </tr>
  <tr>
    <td>azure_integrationruntimeexternalwaitingqueuelength_average, azure_integrationruntimeexternalwaitingqueuelength_count, azure_integrationruntimeexternalwaitingqueuelength_maximum, azure_integrationruntimeexternalwaitingqueuelength_minimum, azure_integrationruntimeexternalwaitingqueuelength_total</td>
    <td>Count</td>
    <td>Integration runtime external waiting queue length</td>
  </tr>
  <tr>
    <td>azure_integrationruntimepipelineavailablecapacitypercentage_average, azure_integrationruntimepipelineavailablecapacitypercentage_count, azure_integrationruntimepipelineavailablecapacitypercentage_maximum, azure_integrationruntimepipelineavailablecapacitypercentage_minimum, azure_integrationruntimepipelineavailablecapacitypercentage_total</td>
    <td>Percent</td>
    <td>Integration runtime pipeline available capacity percentage</td>
  </tr>
  <tr>
    <td>azure_integrationruntimepipelinecapacityutilization_average, azure_integrationruntimepipelinecapacityutilization_count, azure_integrationruntimepipelinecapacityutilization_maximum, azure_integrationruntimepipelinecapacityutilization_minimum, azure_integrationruntimepipelinecapacityutilization_total</td>
    <td>Percent</td>
    <td>Integration runtime pipeline capacity utilization</td>
  </tr>
  <tr>
    <td>azure_integrationruntimepipelinewaitingqueuelength_average, azure_integrationruntimepipelinewaitingqueuelength_count, azure_integrationruntimepipelinewaitingqueuelength_maximum, azure_integrationruntimepipelinewaitingqueuelength_minimum, azure_integrationruntimepipelinewaitingqueuelength_total</td>
    <td>Count</td>
    <td>Integration runtime pipeline waiting queue length</td>
  </tr>
  <tr>
    <td>azure_integrationruntimequeuelength_average, azure_integrationruntimequeuelength_count, azure_integrationruntimequeuelength_maximum, azure_integrationruntimequeuelength_minimum, azure_integrationruntimequeuelength_total</td>
    <td>Count</td>
    <td>Integration runtime queue length</td>
  </tr>
  <tr>
    <td>azure_maxallowedfactorysizeingbunits_average, azure_maxallowedfactorysizeingbunits_count, azure_maxallowedfactorysizeingbunits_maximum, azure_maxallowedfactorysizeingbunits_minimum, azure_maxallowedfactorysizeingbunits_total</td>
    <td>Count</td>
    <td>Maximum allowed factory size (GB unit)</td>
  </tr>
  <tr>
    <td>azure_maxallowedresourcecount_average, azure_maxallowedresourcecount_count, azure_maxallowedresourcecount_maximum, azure_maxallowedresourcecount_minimum, azure_maxallowedresourcecount_total</td>
    <td>Count</td>
    <td>Maximum allowed entities count</td>
  </tr>
  <tr>
    <td>azure_pipelinecancelledruns_average, azure_pipelinecancelledruns_count, azure_pipelinecancelledruns_maximum, azure_pipelinecancelledruns_minimum, azure_pipelinecancelledruns_total</td>
    <td>Count</td>
    <td>Cancelled pipeline runs metrics</td>
  </tr>
  <tr>
    <td>azure_pipelineelapsedtimeruns_average, azure_pipelineelapsedtimeruns_count, azure_pipelineelapsedtimeruns_maximum, azure_pipelineelapsedtimeruns_minimum, azure_pipelineelapsedtimeruns_total</td>
    <td>Count</td>
    <td>Elapsed Time Pipeline Runs Metrics</td>
  </tr>
  <tr>
    <td>azure_pipelinefailedruns_average, azure_pipelinefailedruns_count, azure_pipelinefailedruns_maximum, azure_pipelinefailedruns_minimum, azure_pipelinefailedruns_total</td>
    <td>Count</td>
    <td>Failed pipeline runs metrics</td>
  </tr>
  <tr>
    <td>azure_pipelinesucceededruns_average, azure_pipelinesucceededruns_count, azure_pipelinesucceededruns_maximum, azure_pipelinesucceededruns_minimum, azure_pipelinesucceededruns_total</td>
    <td>Count</td>
    <td>Succeeded pipeline runs metrics</td>
  </tr>
  <tr>
    <td>azure_resourcecount_average, azure_resourcecount_count, azure_resourcecount_maximum, azure_resourcecount_minimum, azure_resourcecount_total</td>
    <td>Count</td>
    <td>Total entities count</td>
  </tr>
  <tr>
    <td>azure_ssisintegrationruntimestartcancel_average, azure_ssisintegrationruntimestartcancel_count, azure_ssisintegrationruntimestartcancel_maximum, azure_ssisintegrationruntimestartcancel_minimum, azure_ssisintegrationruntimestartcancel_total</td>
    <td>Count</td>
    <td>Cancelled SSIS integration runtime start metrics</td>
  </tr>
  <tr>
    <td>azure_ssisintegrationruntimestartfailed_average, azure_ssisintegrationruntimestartfailed_count, azure_ssisintegrationruntimestartfailed_maximum, azure_ssisintegrationruntimestartfailed_minimum, azure_ssisintegrationruntimestartfailed_total</td>
    <td>Count</td>
    <td>Failed SSIS integration runtime start metrics</td>
  </tr>
  <tr>
    <td>azure_ssisintegrationruntimestartsucceeded_average, azure_ssisintegrationruntimestartsucceeded_count, azure_ssisintegrationruntimestartsucceeded_maximum, azure_ssisintegrationruntimestartsucceeded_minimum, azure_ssisintegrationruntimestartsucceeded_total</td>
    <td>Count</td>
    <td>Succeeded SSIS integration runtime start metrics</td>
  </tr>
  <tr>
    <td>azure_ssisintegrationruntimestopstuck_average, azure_ssisintegrationruntimestopstuck_count, azure_ssisintegrationruntimestopstuck_maximum, azure_ssisintegrationruntimestopstuck_minimum, azure_ssisintegrationruntimestopstuck_total</td>
    <td>Count</td>
    <td>Stuck SSIS integration runtime stop metrics</td>
  </tr>
  <tr>
    <td>azure_ssisintegrationruntimestopsucceeded_average, azure_ssisintegrationruntimestopsucceeded_count, azure_ssisintegrationruntimestopsucceeded_maximum, azure_ssisintegrationruntimestopsucceeded_minimum, azure_ssisintegrationruntimestopsucceeded_total</td>
    <td>Count</td>
    <td>Succeeded SSIS integration runtime stop metrics</td>
  </tr>
  <tr>
    <td>azure_ssispackageexecutioncancel_average, azure_ssispackageexecutioncancel_count, azure_ssispackageexecutioncancel_maximum, azure_ssispackageexecutioncancel_minimum, azure_ssispackageexecutioncancel_total</td>
    <td>Count</td>
    <td>Cancelled SSIS package execution metrics</td>
  </tr>
  <tr>
    <td>azure_ssispackageexecutionfailed_average, azure_ssispackageexecutionfailed_count, azure_ssispackageexecutionfailed_maximum, azure_ssispackageexecutionfailed_minimum, azure_ssispackageexecutionfailed_total</td>
    <td>Count</td>
    <td>Failed SSIS package execution metrics</td>
  </tr>
  <tr>
    <td>azure_ssispackageexecutionsucceeded_average, azure_ssispackageexecutionsucceeded_count, azure_ssispackageexecutionsucceeded_maximum, azure_ssispackageexecutionsucceeded_minimum, azure_ssispackageexecutionsucceeded_total</td>
    <td>Count</td>
    <td>Succeeded SSIS package execution metrics</td>
  </tr>
  <tr>
    <td>azure_triggercancelledruns_average, azure_triggercancelledruns_count, azure_triggercancelledruns_maximum, azure_triggercancelledruns_minimum, azure_triggercancelledruns_total</td>
    <td>Count</td>
    <td>Cancelled trigger runs metrics</td>
  </tr>
  <tr>
    <td>azure_triggerfailedruns_average, azure_triggerfailedruns_count, azure_triggerfailedruns_maximum, azure_triggerfailedruns_minimum, azure_triggerfailedruns_total</td>
    <td>Count</td>
    <td>Failed trigger runs metrics</td>
  </tr>
  <tr>
    <td>azure_triggersucceededruns_average, azure_triggersucceededruns_count, azure_triggersucceededruns_maximum, azure_triggersucceededruns_minimum, azure_triggersucceededruns_total</td>
    <td>Count</td>
    <td>Succeeded trigger runs metrics</td>
  </tr>
</table>
