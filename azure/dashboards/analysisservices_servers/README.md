---
title: Azure Microsoft.AnalysisServices/servers metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.AnalysisServices/servers metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.AnalysisServices/servers
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.AnalysisServices/servers, **PUT DESCRIPTION HERE**. 

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
    <td>azure_cleanercurrentprice_average, azure_cleanercurrentprice_count, azure_cleanercurrentprice_maximum, azure_cleanercurrentprice_minimum, azure_cleanercurrentprice_total</td>
    <td>Count</td>
    <td>Current price of memory, $/byte/time, normalized to 1000.</td>
  </tr>
  <tr>
    <td>azure_cleanermemorynonshrinkable_average, azure_cleanermemorynonshrinkable_count, azure_cleanermemorynonshrinkable_maximum, azure_cleanermemorynonshrinkable_minimum, azure_cleanermemorynonshrinkable_total</td>
    <td>Bytes</td>
    <td>Amount of memory, in bytes, not subject to purging by the background cleaner.</td>
  </tr>
  <tr>
    <td>azure_cleanermemoryshrinkable_average, azure_cleanermemoryshrinkable_count, azure_cleanermemoryshrinkable_maximum, azure_cleanermemoryshrinkable_minimum, azure_cleanermemoryshrinkable_total</td>
    <td>Bytes</td>
    <td>Amount of memory, in bytes, subject to purging by the background cleaner.</td>
  </tr>
  <tr>
    <td>azure_commandpoolbusythreads_average, azure_commandpoolbusythreads_count, azure_commandpoolbusythreads_maximum, azure_commandpoolbusythreads_minimum, azure_commandpoolbusythreads_total</td>
    <td>Count</td>
    <td>Number of busy threads in the command thread pool.</td>
  </tr>
  <tr>
    <td>azure_commandpoolidlethreads_average, azure_commandpoolidlethreads_count, azure_commandpoolidlethreads_maximum, azure_commandpoolidlethreads_minimum, azure_commandpoolidlethreads_total</td>
    <td>Count</td>
    <td>Number of idle threads in the command thread pool.</td>
  </tr>
  <tr>
    <td>azure_commandpooljobqueuelength_average, azure_commandpooljobqueuelength_count, azure_commandpooljobqueuelength_maximum, azure_commandpooljobqueuelength_minimum, azure_commandpooljobqueuelength_total</td>
    <td>Count</td>
    <td>Number of jobs in the queue of the command thread pool.</td>
  </tr>
  <tr>
    <td>azure_currentconnections_average, azure_currentconnections_count, azure_currentconnections_maximum, azure_currentconnections_minimum, azure_currentconnections_total</td>
    <td>Count</td>
    <td>Current number of client connections established.</td>
  </tr>
  <tr>
    <td>azure_currentusersessions_average, azure_currentusersessions_count, azure_currentusersessions_maximum, azure_currentusersessions_minimum, azure_currentusersessions_total</td>
    <td>Count</td>
    <td>Current number of user sessions established.</td>
  </tr>
  <tr>
    <td>azure_longparsingbusythreads_average, azure_longparsingbusythreads_count, azure_longparsingbusythreads_maximum, azure_longparsingbusythreads_minimum, azure_longparsingbusythreads_total</td>
    <td>Count</td>
    <td>Number of busy threads in the long parsing thread pool.</td>
  </tr>
  <tr>
    <td>azure_longparsingidlethreads_average, azure_longparsingidlethreads_count, azure_longparsingidlethreads_maximum, azure_longparsingidlethreads_minimum, azure_longparsingidlethreads_total</td>
    <td>Count</td>
    <td>Number of idle threads in the long parsing thread pool.</td>
  </tr>
  <tr>
    <td>azure_longparsingjobqueuelength_average, azure_longparsingjobqueuelength_count, azure_longparsingjobqueuelength_maximum, azure_longparsingjobqueuelength_minimum, azure_longparsingjobqueuelength_total</td>
    <td>Count</td>
    <td>Number of jobs in the queue of the long parsing thread pool.</td>
  </tr>
  <tr>
    <td>azure_mashup_engine_memory_metric_average, azure_mashup_engine_memory_metric_count, azure_mashup_engine_memory_metric_maximum, azure_mashup_engine_memory_metric_minimum, azure_mashup_engine_memory_metric_total</td>
    <td>Bytes</td>
    <td>Memory usage by mashup engine processes</td>
  </tr>
  <tr>
    <td>azure_mashup_engine_private_bytes_metric_average, azure_mashup_engine_private_bytes_metric_count, azure_mashup_engine_private_bytes_metric_maximum, azure_mashup_engine_private_bytes_metric_minimum, azure_mashup_engine_private_bytes_metric_total</td>
    <td>Bytes</td>
    <td>Private bytes usage by mashup engine processes.</td>
  </tr>
  <tr>
    <td>azure_mashup_engine_qpu_metric_average, azure_mashup_engine_qpu_metric_count, azure_mashup_engine_qpu_metric_maximum, azure_mashup_engine_qpu_metric_minimum, azure_mashup_engine_qpu_metric_total</td>
    <td>Count</td>
    <td>QPU usage by mashup engine processes</td>
  </tr>
  <tr>
    <td>azure_mashup_engine_virtual_bytes_metric_average, azure_mashup_engine_virtual_bytes_metric_count, azure_mashup_engine_virtual_bytes_metric_maximum, azure_mashup_engine_virtual_bytes_metric_minimum, azure_mashup_engine_virtual_bytes_metric_total</td>
    <td>Bytes</td>
    <td>Virtual bytes usage by mashup engine processes.</td>
  </tr>
  <tr>
    <td>azure_memory_metric_average, azure_memory_metric_count, azure_memory_metric_maximum, azure_memory_metric_minimum, azure_memory_metric_total</td>
    <td>Bytes</td>
    <td>Memory. Range 0-25 GB for S1, 0-50 GB for S2 and 0-100 GB for S4</td>
  </tr>
  <tr>
    <td>azure_memory_thrashing_metric_average, azure_memory_thrashing_metric_count, azure_memory_thrashing_metric_maximum, azure_memory_thrashing_metric_minimum, azure_memory_thrashing_metric_total</td>
    <td>Percent</td>
    <td>Average memory thrashing.</td>
  </tr>
  <tr>
    <td>azure_memorylimithard_average, azure_memorylimithard_count, azure_memorylimithard_maximum, azure_memorylimithard_minimum, azure_memorylimithard_total</td>
    <td>Bytes</td>
    <td>Hard memory limit, from configuration file.</td>
  </tr>
  <tr>
    <td>azure_memorylimithigh_average, azure_memorylimithigh_count, azure_memorylimithigh_maximum, azure_memorylimithigh_minimum, azure_memorylimithigh_total</td>
    <td>Bytes</td>
    <td>High memory limit, from configuration file.</td>
  </tr>
  <tr>
    <td>azure_memorylimitlow_average, azure_memorylimitlow_count, azure_memorylimitlow_maximum, azure_memorylimitlow_minimum, azure_memorylimitlow_total</td>
    <td>Bytes</td>
    <td>Low memory limit, from configuration file.</td>
  </tr>
  <tr>
    <td>azure_memorylimitvertipaq_average, azure_memorylimitvertipaq_count, azure_memorylimitvertipaq_maximum, azure_memorylimitvertipaq_minimum, azure_memorylimitvertipaq_total</td>
    <td>Bytes</td>
    <td>In-memory limit, from configuration file.</td>
  </tr>
  <tr>
    <td>azure_memoryusage_average, azure_memoryusage_count, azure_memoryusage_maximum, azure_memoryusage_minimum, azure_memoryusage_total</td>
    <td>Bytes</td>
    <td>Memory usage of the server process as used in calculating cleaner memory price. Equal to counter Process\PrivateBytes plus the size of memory-mapped data, ignoring any memory which was mapped or allocated by the xVelocity in-memory analytics engine (VertiPaq) in excess of the xVelocity engine Memory Limit.</td>
  </tr>
  <tr>
    <td>azure_private_bytes_metric_average, azure_private_bytes_metric_count, azure_private_bytes_metric_maximum, azure_private_bytes_metric_minimum, azure_private_bytes_metric_total</td>
    <td>Bytes</td>
    <td>Private bytes.</td>
  </tr>
  <tr>
    <td>azure_processingpoolbusyiojobthreads_average, azure_processingpoolbusyiojobthreads_count, azure_processingpoolbusyiojobthreads_maximum, azure_processingpoolbusyiojobthreads_minimum, azure_processingpoolbusyiojobthreads_total</td>
    <td>Count</td>
    <td>Number of threads running I/O jobs in the processing thread pool.</td>
  </tr>
  <tr>
    <td>azure_processingpoolbusynoniothreads_average, azure_processingpoolbusynoniothreads_count, azure_processingpoolbusynoniothreads_maximum, azure_processingpoolbusynoniothreads_minimum, azure_processingpoolbusynoniothreads_total</td>
    <td>Count</td>
    <td>Number of threads running non-I/O jobs in the processing thread pool.</td>
  </tr>
  <tr>
    <td>azure_processingpoolidleiojobthreads_average, azure_processingpoolidleiojobthreads_count, azure_processingpoolidleiojobthreads_maximum, azure_processingpoolidleiojobthreads_minimum, azure_processingpoolidleiojobthreads_total</td>
    <td>Count</td>
    <td>Number of idle threads for I/O jobs in the processing thread pool.</td>
  </tr>
  <tr>
    <td>azure_processingpoolidlenoniothreads_average, azure_processingpoolidlenoniothreads_count, azure_processingpoolidlenoniothreads_maximum, azure_processingpoolidlenoniothreads_minimum, azure_processingpoolidlenoniothreads_total</td>
    <td>Count</td>
    <td>Number of idle threads in the processing thread pool dedicated to non-I/O jobs.</td>
  </tr>
  <tr>
    <td>azure_processingpooliojobqueuelength_average, azure_processingpooliojobqueuelength_count, azure_processingpooliojobqueuelength_maximum, azure_processingpooliojobqueuelength_minimum, azure_processingpooliojobqueuelength_total</td>
    <td>Count</td>
    <td>Number of I/O jobs in the queue of the processing thread pool.</td>
  </tr>
  <tr>
    <td>azure_processingpooljobqueuelength_average, azure_processingpooljobqueuelength_count, azure_processingpooljobqueuelength_maximum, azure_processingpooljobqueuelength_minimum, azure_processingpooljobqueuelength_total</td>
    <td>Count</td>
    <td>Number of non-I/O jobs in the queue of the processing thread pool.</td>
  </tr>
  <tr>
    <td>azure_qpu_metric_average, azure_qpu_metric_count, azure_qpu_metric_maximum, azure_qpu_metric_minimum, azure_qpu_metric_total</td>
    <td>Count</td>
    <td>QPU. Range 0-100 for S1, 0-200 for S2 and 0-400 for S4</td>
  </tr>
  <tr>
    <td>azure_querypoolbusythreads_average, azure_querypoolbusythreads_count, azure_querypoolbusythreads_maximum, azure_querypoolbusythreads_minimum, azure_querypoolbusythreads_total</td>
    <td>Count</td>
    <td>Number of busy threads in the query thread pool.</td>
  </tr>
  <tr>
    <td>azure_querypoolidlethreads_average, azure_querypoolidlethreads_count, azure_querypoolidlethreads_maximum, azure_querypoolidlethreads_minimum, azure_querypoolidlethreads_total</td>
    <td>Count</td>
    <td>Number of idle threads for I/O jobs in the processing thread pool.</td>
  </tr>
  <tr>
    <td>azure_querypooljobqueuelength_average, azure_querypooljobqueuelength_count, azure_querypooljobqueuelength_maximum, azure_querypooljobqueuelength_minimum, azure_querypooljobqueuelength_total</td>
    <td>Count</td>
    <td>Number of jobs in the queue of the query thread pool.</td>
  </tr>
  <tr>
    <td>azure_quota_average, azure_quota_count, azure_quota_maximum, azure_quota_minimum, azure_quota_total</td>
    <td>Bytes</td>
    <td>Current memory quota, in bytes. Memory quota is also known as a memory grant or memory reservation.</td>
  </tr>
  <tr>
    <td>azure_quotablocked_average, azure_quotablocked_count, azure_quotablocked_maximum, azure_quotablocked_minimum, azure_quotablocked_total</td>
    <td>Count</td>
    <td>Current number of quota requests that are blocked until other memory quotas are freed.</td>
  </tr>
  <tr>
    <td>azure_rowsconvertedpersec_average, azure_rowsconvertedpersec_count, azure_rowsconvertedpersec_maximum, azure_rowsconvertedpersec_minimum, azure_rowsconvertedpersec_total</td>
    <td>CountPerSecond</td>
    <td>Rate of rows converted during processing.</td>
  </tr>
  <tr>
    <td>azure_rowsreadpersec_average, azure_rowsreadpersec_count, azure_rowsreadpersec_maximum, azure_rowsreadpersec_minimum, azure_rowsreadpersec_total</td>
    <td>CountPerSecond</td>
    <td>Rate of rows read from all relational databases.</td>
  </tr>
  <tr>
    <td>azure_rowswrittenpersec_average, azure_rowswrittenpersec_count, azure_rowswrittenpersec_maximum, azure_rowswrittenpersec_minimum, azure_rowswrittenpersec_total</td>
    <td>CountPerSecond</td>
    <td>Rate of rows written during processing.</td>
  </tr>
  <tr>
    <td>azure_shortparsingbusythreads_average, azure_shortparsingbusythreads_count, azure_shortparsingbusythreads_maximum, azure_shortparsingbusythreads_minimum, azure_shortparsingbusythreads_total</td>
    <td>Count</td>
    <td>Number of busy threads in the short parsing thread pool.</td>
  </tr>
  <tr>
    <td>azure_shortparsingidlethreads_average, azure_shortparsingidlethreads_count, azure_shortparsingidlethreads_maximum, azure_shortparsingidlethreads_minimum, azure_shortparsingidlethreads_total</td>
    <td>Count</td>
    <td>Number of idle threads in the short parsing thread pool.</td>
  </tr>
  <tr>
    <td>azure_shortparsingjobqueuelength_average, azure_shortparsingjobqueuelength_count, azure_shortparsingjobqueuelength_maximum, azure_shortparsingjobqueuelength_minimum, azure_shortparsingjobqueuelength_total</td>
    <td>Count</td>
    <td>Number of jobs in the queue of the short parsing thread pool.</td>
  </tr>
  <tr>
    <td>azure_successfullconnectionspersec_average, azure_successfullconnectionspersec_count, azure_successfullconnectionspersec_maximum, azure_successfullconnectionspersec_minimum, azure_successfullconnectionspersec_total</td>
    <td>CountPerSecond</td>
    <td>Rate of successful connection completions.</td>
  </tr>
  <tr>
    <td>azure_totalconnectionfailures_average, azure_totalconnectionfailures_count, azure_totalconnectionfailures_maximum, azure_totalconnectionfailures_minimum, azure_totalconnectionfailures_total</td>
    <td>Count</td>
    <td>Total failed connection attempts.</td>
  </tr>
  <tr>
    <td>azure_totalconnectionrequests_average, azure_totalconnectionrequests_count, azure_totalconnectionrequests_maximum, azure_totalconnectionrequests_minimum, azure_totalconnectionrequests_total</td>
    <td>Count</td>
    <td>Total connection requests. These are arrivals.</td>
  </tr>
  <tr>
    <td>azure_vertipaqnonpaged_average, azure_vertipaqnonpaged_count, azure_vertipaqnonpaged_maximum, azure_vertipaqnonpaged_minimum, azure_vertipaqnonpaged_total</td>
    <td>Bytes</td>
    <td>Bytes of memory locked in the working set for use by the in-memory engine.</td>
  </tr>
  <tr>
    <td>azure_vertipaqpaged_average, azure_vertipaqpaged_count, azure_vertipaqpaged_maximum, azure_vertipaqpaged_minimum, azure_vertipaqpaged_total</td>
    <td>Bytes</td>
    <td>Bytes of paged memory in use for in-memory data.</td>
  </tr>
  <tr>
    <td>azure_virtual_bytes_metric_average, azure_virtual_bytes_metric_count, azure_virtual_bytes_metric_maximum, azure_virtual_bytes_metric_minimum, azure_virtual_bytes_metric_total</td>
    <td>Bytes</td>
    <td>Virtual bytes.</td>
  </tr>
</table>
