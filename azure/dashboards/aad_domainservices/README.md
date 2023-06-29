---
title: Azure Microsoft.AAD/DomainServices metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.AAD/DomainServices metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.AAD/DomainServices
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.AAD/DomainServices, **PUT DESCRIPTION HERE**. 

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
    <td>azure_\directoryservices(ntds)\ldap_searches/sec_average, azure_\directoryservices(ntds)\ldap_searches/sec_count, azure_\directoryservices(ntds)\ldap_searches/sec_maximum, azure_\directoryservices(ntds)\ldap_searches/sec_minimum, azure_\directoryservices(ntds)\ldap_searches/sec_total</td>
    <td>CountPerSecond</td>
    <td>This metric indicates the average number of searches per second for the NTDS object. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\directoryservices(ntds)\ldap_successful_binds/sec_average, azure_\directoryservices(ntds)\ldap_successful_binds/sec_count, azure_\directoryservices(ntds)\ldap_successful_binds/sec_maximum, azure_\directoryservices(ntds)\ldap_successful_binds/sec_minimum, azure_\directoryservices(ntds)\ldap_successful_binds/sec_total</td>
    <td>CountPerSecond</td>
    <td>This metric indicates the number of LDAP successful binds per second for the NTDS object. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\dns\total_query_received/sec_average, azure_\dns\total_query_received/sec_count, azure_\dns\total_query_received/sec_maximum, azure_\dns\total_query_received/sec_minimum, azure_\dns\total_query_received/sec_total</td>
    <td>CountPerSecond</td>
    <td>This metric indicates the average number of queries received by DNS server in each second. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\dns\total_response_sent/sec_average, azure_\dns\total_response_sent/sec_count, azure_\dns\total_response_sent/sec_maximum, azure_\dns\total_response_sent/sec_minimum, azure_\dns\total_response_sent/sec_total</td>
    <td>CountPerSecond</td>
    <td>This metric indicates the average number of reponses sent by DNS server in each second. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\memory%_committed_bytes_in_use_average, azure_\memory%_committed_bytes_in_use_count, azure_\memory%_committed_bytes_in_use_maximum, azure_\memory%_committed_bytes_in_use_minimum, azure_\memory%_committed_bytes_in_use_total</td>
    <td>Percent</td>
    <td>This metric indicates the ratio of Memory\Committed Bytes to the Memory\Commit Limit. Committed memory is the physical memory in use for which space has been reserved in the paging file should it need to be written to disk. The commit limit is determined by the size of the paging file. If the paging file is enlarged, the commit limit increases, and the ratio is reduced. This counter displays the current percentage value only; it is not an average. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\process(dns)%_processor_time_average, azure_\process(dns)%_processor_time_count, azure_\process(dns)%_processor_time_maximum, azure_\process(dns)%_processor_time_minimum, azure_\process(dns)%_processor_time_total</td>
    <td>Percent</td>
    <td>This metric indicates the percentage of elapsed time that all of dns process threads used the processor to execute instructions. An instruction is the basic unit of execution in a computer, a thread is the object that executes instructions, and a process is the object created when a program is run. Code executed to handle some hardware interrupts and trap conditions are included in this count. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\process(lsass)%_processor_time_average, azure_\process(lsass)%_processor_time_count, azure_\process(lsass)%_processor_time_maximum, azure_\process(lsass)%_processor_time_minimum, azure_\process(lsass)%_processor_time_total</td>
    <td>Percent</td>
    <td>This metric indicates the percentage of elapsed time that all of lsass process threads used the processor to execute instructions. An instruction is the basic unit of execution in a computer, a thread is the object that executes instructions, and a process is the object created when a program is run. Code executed to handle some hardware interrupts and trap conditions are included in this count. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\processor(_total)%_processor_time_average, azure_\processor(_total)%_processor_time_count, azure_\processor(_total)%_processor_time_maximum, azure_\processor(_total)%_processor_time_minimum, azure_\processor(_total)%_processor_time_total</td>
    <td>Percent</td>
    <td>This metric indicates the percentage of elapsed time that the processor spends to execute a non-Idle thread. It is calculated by measuring the percentage of time that the processor spends executing the idle thread and then subtracting that value from 100%. (Each processor has an idle thread that consumes cycles when no other threads are ready to run). This counter is the primary indicator of processor activity, and displays the average percentage of busy time observed during the sample interval. It should be noted that the accounting calculation of whether the processor is idle is performed at an internal sampling interval of the system clock (10ms). On todays fast processors, % Processor Time can therefore underestimate the processor utilization as the processor may be spending a lot of time servicing threads between the system clock sampling interval. Workload based timer applications are one example  of applications  which are more likely to be measured inaccurately as timers are signaled just after the sample is taken. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\security_system-wide_statistics\kerberos_authentications_average, azure_\security_system-wide_statistics\kerberos_authentications_count, azure_\security_system-wide_statistics\kerberos_authentications_maximum, azure_\security_system-wide_statistics\kerberos_authentications_minimum, azure_\security_system-wide_statistics\kerberos_authentications_total</td>
    <td>CountPerSecond</td>
    <td>This metric indicates the number of times that clients use a ticket to authenticate to this computer per second. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
  <tr>
    <td>azure_\security_system-wide_statistics\ntlm_authentications_average, azure_\security_system-wide_statistics\ntlm_authentications_count, azure_\security_system-wide_statistics\ntlm_authentications_maximum, azure_\security_system-wide_statistics\ntlm_authentications_minimum, azure_\security_system-wide_statistics\ntlm_authentications_total</td>
    <td>CountPerSecond</td>
    <td>This metric indicates the number of NTLM authentications processed per second for the Active Directory on this domain contrller or for local accounts on this member server. It is backed by performance counter data from the domain controller, and can be filtered or splitted by role instance.</td>
  </tr>
</table>
