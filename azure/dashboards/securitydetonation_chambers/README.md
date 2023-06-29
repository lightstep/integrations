---
title: Azure microsoft.securitydetonation/chambers metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure microsoft.securitydetonation/chambers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: microsoft.securitydetonation/chambers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for microsoft.securitydetonation/chambers, **PUT DESCRIPTION HERE**. 

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
    <td>azure_capacityutilization_average, azure_capacityutilization_count, azure_capacityutilization_maximum, azure_capacityutilization_minimum, azure_capacityutilization_total</td>
    <td>Percent</td>
    <td>The percentage of the allocated capacity the resource is actively using.</td>
  </tr>
  <tr>
    <td>azure_cpuutilization_average, azure_cpuutilization_count, azure_cpuutilization_maximum, azure_cpuutilization_minimum, azure_cpuutilization_total</td>
    <td>Percent</td>
    <td>The percentage of the CPU that is being utilized across the resource.</td>
  </tr>
  <tr>
    <td>azure_createsubmissionapiresult_average, azure_createsubmissionapiresult_count, azure_createsubmissionapiresult_maximum, azure_createsubmissionapiresult_minimum, azure_createsubmissionapiresult_total</td>
    <td>Count</td>
    <td>The total number of CreateSubmission API requests, with return code.</td>
  </tr>
  <tr>
    <td>azure_percentfreediskspace_average, azure_percentfreediskspace_count, azure_percentfreediskspace_maximum, azure_percentfreediskspace_minimum, azure_percentfreediskspace_total</td>
    <td>Percent</td>
    <td>The percent amount of available disk space across the resource.</td>
  </tr>
  <tr>
    <td>azure_submissionduration_average, azure_submissionduration_count, azure_submissionduration_maximum, azure_submissionduration_minimum, azure_submissionduration_total</td>
    <td>MilliSeconds</td>
    <td>The submission duration (processing time), from creation to completion.</td>
  </tr>
  <tr>
    <td>azure_submissionscompleted_average, azure_submissionscompleted_count, azure_submissionscompleted_maximum, azure_submissionscompleted_minimum, azure_submissionscompleted_total</td>
    <td>Count</td>
    <td>The number of completed submissions / Hr.</td>
  </tr>
  <tr>
    <td>azure_submissionsfailed_average, azure_submissionsfailed_count, azure_submissionsfailed_maximum, azure_submissionsfailed_minimum, azure_submissionsfailed_total</td>
    <td>Count</td>
    <td>The number of failed submissions / Hr.</td>
  </tr>
  <tr>
    <td>azure_submissionsoutstanding_average, azure_submissionsoutstanding_count, azure_submissionsoutstanding_maximum, azure_submissionsoutstanding_minimum, azure_submissionsoutstanding_total</td>
    <td>Count</td>
    <td>The average number of outstanding submissions that are queued for processing.</td>
  </tr>
  <tr>
    <td>azure_submissionssucceeded_average, azure_submissionssucceeded_count, azure_submissionssucceeded_maximum, azure_submissionssucceeded_minimum, azure_submissionssucceeded_total</td>
    <td>Count</td>
    <td>The number of successful submissions / Hr.</td>
  </tr>
</table>
