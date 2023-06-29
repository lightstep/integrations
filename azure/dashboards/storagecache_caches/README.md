---
title: Azure Microsoft.StorageCache/caches metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.StorageCache/caches metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.StorageCache/caches
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.StorageCache/caches, **PUT DESCRIPTION HERE**. 

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
    <td>azure_clientiops_average, azure_clientiops_count, azure_clientiops_maximum, azure_clientiops_minimum, azure_clientiops_total</td>
    <td>Count</td>
    <td>The rate of client file operations processed by the Cache.</td>
  </tr>
  <tr>
    <td>azure_clientlatency_average, azure_clientlatency_count, azure_clientlatency_maximum, azure_clientlatency_minimum, azure_clientlatency_total</td>
    <td>MilliSeconds</td>
    <td>Average latency of client file operations to the Cache.</td>
  </tr>
  <tr>
    <td>azure_clientlockiops_average, azure_clientlockiops_count, azure_clientlockiops_maximum, azure_clientlockiops_minimum, azure_clientlockiops_total</td>
    <td>CountPerSecond</td>
    <td>Client file locking operations per second.</td>
  </tr>
  <tr>
    <td>azure_clientmetadatareadiops_average, azure_clientmetadatareadiops_count, azure_clientmetadatareadiops_maximum, azure_clientmetadatareadiops_minimum, azure_clientmetadatareadiops_total</td>
    <td>CountPerSecond</td>
    <td>The rate of client file operations sent to the Cache, excluding data reads, that do not modify persistent state.</td>
  </tr>
  <tr>
    <td>azure_clientmetadatawriteiops_average, azure_clientmetadatawriteiops_count, azure_clientmetadatawriteiops_maximum, azure_clientmetadatawriteiops_minimum, azure_clientmetadatawriteiops_total</td>
    <td>CountPerSecond</td>
    <td>The rate of client file operations sent to the Cache, excluding data writes, that modify persistent state.</td>
  </tr>
  <tr>
    <td>azure_clientreadiops_average, azure_clientreadiops_count, azure_clientreadiops_maximum, azure_clientreadiops_minimum, azure_clientreadiops_total</td>
    <td>CountPerSecond</td>
    <td>Client read operations per second.</td>
  </tr>
  <tr>
    <td>azure_clientreadthroughput_average, azure_clientreadthroughput_count, azure_clientreadthroughput_maximum, azure_clientreadthroughput_minimum, azure_clientreadthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Client read data transfer rate.</td>
  </tr>
  <tr>
    <td>azure_clientstatus_average, azure_clientstatus_count, azure_clientstatus_maximum, azure_clientstatus_minimum, azure_clientstatus_total</td>
    <td>Count</td>
    <td>Client connection information.</td>
  </tr>
  <tr>
    <td>azure_clientwriteiops_average, azure_clientwriteiops_count, azure_clientwriteiops_maximum, azure_clientwriteiops_minimum, azure_clientwriteiops_total</td>
    <td>CountPerSecond</td>
    <td>Client write operations per second.</td>
  </tr>
  <tr>
    <td>azure_clientwritethroughput_average, azure_clientwritethroughput_count, azure_clientwritethroughput_maximum, azure_clientwritethroughput_minimum, azure_clientwritethroughput_total</td>
    <td>BytesPerSecond</td>
    <td>Client write data transfer rate.</td>
  </tr>
  <tr>
    <td>azure_fileops_average, azure_fileops_count, azure_fileops_maximum, azure_fileops_minimum, azure_fileops_total</td>
    <td>CountPerSecond</td>
    <td>Number of file operations per second.</td>
  </tr>
  <tr>
    <td>azure_filereads_average, azure_filereads_count, azure_filereads_maximum, azure_filereads_minimum, azure_filereads_total</td>
    <td>BytesPerSecond</td>
    <td>Number of bytes per second read from a file.</td>
  </tr>
  <tr>
    <td>azure_fileupdates_average, azure_fileupdates_count, azure_fileupdates_maximum, azure_fileupdates_minimum, azure_fileupdates_total</td>
    <td>CountPerSecond</td>
    <td>Number of directory updates and metadata operations per second.</td>
  </tr>
  <tr>
    <td>azure_filewrites_average, azure_filewrites_count, azure_filewrites_maximum, azure_filewrites_minimum, azure_filewrites_total</td>
    <td>BytesPerSecond</td>
    <td>Number of bytes per second written to a file.</td>
  </tr>
  <tr>
    <td>azure_storagetargetaccesserrors_average, azure_storagetargetaccesserrors_count, azure_storagetargetaccesserrors_maximum, azure_storagetargetaccesserrors_minimum, azure_storagetargetaccesserrors_total</td>
    <td>Count</td>
    <td>The rate of access error responses received by the cache from a specific StorageTarget. For more details, see https://www.rfc-editor.org/rfc/rfc1813#section-2.6 (NFS3ERR_ACCES).</td>
  </tr>
  <tr>
    <td>azure_storagetargetasyncwritethroughput_average, azure_storagetargetasyncwritethroughput_count, azure_storagetargetasyncwritethroughput_maximum, azure_storagetargetasyncwritethroughput_minimum, azure_storagetargetasyncwritethroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The rate the Cache asynchronously writes data to a particular StorageTarget. These are opportunistic writes that do not cause clients to block.</td>
  </tr>
  <tr>
    <td>azure_storagetargetblocksrecycled_average, azure_storagetargetblocksrecycled_count, azure_storagetargetblocksrecycled_maximum, azure_storagetargetblocksrecycled_minimum, azure_storagetargetblocksrecycled_total</td>
    <td>Count</td>
    <td>Total number of 16k cache blocks recycled (freed) per Storage Target.</td>
  </tr>
  <tr>
    <td>azure_storagetargetfiletoolargeerrors_average, azure_storagetargetfiletoolargeerrors_count, azure_storagetargetfiletoolargeerrors_maximum, azure_storagetargetfiletoolargeerrors_minimum, azure_storagetargetfiletoolargeerrors_total</td>
    <td>Count</td>
    <td>The rate of file too large error responses received by the cache from a specific StorageTarget. For more details, see https://www.rfc-editor.org/rfc/rfc1813#section-2.6 (NFS3ERR_FBIG).</td>
  </tr>
  <tr>
    <td>azure_storagetargetfillthroughput_average, azure_storagetargetfillthroughput_count, azure_storagetargetfillthroughput_maximum, azure_storagetargetfillthroughput_minimum, azure_storagetargetfillthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The rate the Cache reads data from the StorageTarget to handle a cache miss.</td>
  </tr>
  <tr>
    <td>azure_storagetargetflushfailureerrors_average, azure_storagetargetflushfailureerrors_count, azure_storagetargetflushfailureerrors_maximum, azure_storagetargetflushfailureerrors_minimum, azure_storagetargetflushfailureerrors_total</td>
    <td>Count</td>
    <td>The rate of file flush request failures reported by the writeback state machine for a specific StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetfreereadspace_average, azure_storagetargetfreereadspace_count, azure_storagetargetfreereadspace_maximum, azure_storagetargetfreereadspace_minimum, azure_storagetargetfreereadspace_total</td>
    <td>Bytes</td>
    <td>Read space available for caching files associated with a storage target.</td>
  </tr>
  <tr>
    <td>azure_storagetargetfreewritespace_average, azure_storagetargetfreewritespace_count, azure_storagetargetfreewritespace_maximum, azure_storagetargetfreewritespace_minimum, azure_storagetargetfreewritespace_total</td>
    <td>Bytes</td>
    <td>Write space available for changed files associated with a storage target.</td>
  </tr>
  <tr>
    <td>azure_storagetargethealth_average, azure_storagetargethealth_count, azure_storagetargethealth_maximum, azure_storagetargethealth_minimum, azure_storagetargethealth_total</td>
    <td>Count</td>
    <td>Boolean results of connectivity test between the Cache and Storage Targets.</td>
  </tr>
  <tr>
    <td>azure_storagetargetiops_average, azure_storagetargetiops_count, azure_storagetargetiops_maximum, azure_storagetargetiops_minimum, azure_storagetargetiops_total</td>
    <td>Count</td>
    <td>The rate of all file operations the Cache sends to a particular StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetlatency_average, azure_storagetargetlatency_count, azure_storagetargetlatency_maximum, azure_storagetargetlatency_minimum, azure_storagetargetlatency_total</td>
    <td>MilliSeconds</td>
    <td>The average round trip latency of all the file operations the Cache sends to a partricular StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetmetadatareadiops_average, azure_storagetargetmetadatareadiops_count, azure_storagetargetmetadatareadiops_maximum, azure_storagetargetmetadatareadiops_minimum, azure_storagetargetmetadatareadiops_total</td>
    <td>CountPerSecond</td>
    <td>The rate of file operations that do not modify persistent state, and excluding the read operation, that the Cache sends to a particular StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetmetadatawriteiops_average, azure_storagetargetmetadatawriteiops_count, azure_storagetargetmetadatawriteiops_maximum, azure_storagetargetmetadatawriteiops_minimum, azure_storagetargetmetadatawriteiops_total</td>
    <td>CountPerSecond</td>
    <td>The rate of file operations that do modify persistent state and excluding the write operation, that the Cache sends to a particular StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetnospaceerrors_average, azure_storagetargetnospaceerrors_count, azure_storagetargetnospaceerrors_maximum, azure_storagetargetnospaceerrors_minimum, azure_storagetargetnospaceerrors_total</td>
    <td>Count</td>
    <td>The rate of no space available error responses received by the cache from a specific StorageTarget. For more details, see https://www.rfc-editor.org/rfc/rfc1813#section-2.6 (NFS3ERR_NOSPC).</td>
  </tr>
  <tr>
    <td>azure_storagetargetpermissionerrors_average, azure_storagetargetpermissionerrors_count, azure_storagetargetpermissionerrors_maximum, azure_storagetargetpermissionerrors_minimum, azure_storagetargetpermissionerrors_total</td>
    <td>Count</td>
    <td>The rate of permission error responses received by the cache from a specific StorageTarget. For more details, see https://www.rfc-editor.org/rfc/rfc1813#section-2.6 (NFS3ERR_PERM).</td>
  </tr>
  <tr>
    <td>azure_storagetargetquotalimiterrors_average, azure_storagetargetquotalimiterrors_count, azure_storagetargetquotalimiterrors_maximum, azure_storagetargetquotalimiterrors_minimum, azure_storagetargetquotalimiterrors_total</td>
    <td>Count</td>
    <td>The rate of quota limit error responses received by the cache from a specific StorageTarget. For more details, see https://www.rfc-editor.org/rfc/rfc1813#section-2.6 (NFS3ERR_DQUOT).</td>
  </tr>
  <tr>
    <td>azure_storagetargetreadaheadthroughput_average, azure_storagetargetreadaheadthroughput_count, azure_storagetargetreadaheadthroughput_maximum, azure_storagetargetreadaheadthroughput_minimum, azure_storagetargetreadaheadthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The rate the Cache opportunisticly reads data from the StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetreadiops_average, azure_storagetargetreadiops_count, azure_storagetargetreadiops_maximum, azure_storagetargetreadiops_minimum, azure_storagetargetreadiops_total</td>
    <td>CountPerSecond</td>
    <td>The rate of file read operations the Cache sends to a particular StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetreadonlyerrors_average, azure_storagetargetreadonlyerrors_count, azure_storagetargetreadonlyerrors_maximum, azure_storagetargetreadonlyerrors_minimum, azure_storagetargetreadonlyerrors_total</td>
    <td>Count</td>
    <td>The rate of read-only filesystem error responses received by the cache from a specific StorageTarget. For more details, see https://www.rfc-editor.org/rfc/rfc1813#section-2.6 (NFS3ERR_ROFS).</td>
  </tr>
  <tr>
    <td>azure_storagetargetrecyclerate_average, azure_storagetargetrecyclerate_count, azure_storagetargetrecyclerate_maximum, azure_storagetargetrecyclerate_minimum, azure_storagetargetrecyclerate_total</td>
    <td>BytesPerSecond</td>
    <td>Cache space recycle rate associated with a storage target in the HPC Cache. This is the rate at which existing data is cleared from the cache to make room for new data.</td>
  </tr>
  <tr>
    <td>azure_storagetargetrequesttoosmallerrors_average, azure_storagetargetrequesttoosmallerrors_count, azure_storagetargetrequesttoosmallerrors_maximum, azure_storagetargetrequesttoosmallerrors_minimum, azure_storagetargetrequesttoosmallerrors_total</td>
    <td>Count</td>
    <td>The rate of request too small error responses received by the cache from a specific StorageTarget. For more details, see https://www.rfc-editor.org/rfc/rfc1813#section-2.6 (NFS3ERR_TOOSMALL).</td>
  </tr>
  <tr>
    <td>azure_storagetargetretryableflusherrors_average, azure_storagetargetretryableflusherrors_count, azure_storagetargetretryableflusherrors_maximum, azure_storagetargetretryableflusherrors_minimum, azure_storagetargetretryableflusherrors_total</td>
    <td>Count</td>
    <td>The rate of retryable file flush errors reported by the writeback state machine for a specific StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetspaceallocation_average, azure_storagetargetspaceallocation_count, azure_storagetargetspaceallocation_maximum, azure_storagetargetspaceallocation_minimum, azure_storagetargetspaceallocation_total</td>
    <td>Bytes</td>
    <td>Total space (read and write) allocated for a storage target.</td>
  </tr>
  <tr>
    <td>azure_storagetargetsyncwritethroughput_average, azure_storagetargetsyncwritethroughput_count, azure_storagetargetsyncwritethroughput_maximum, azure_storagetargetsyncwritethroughput_minimum, azure_storagetargetsyncwritethroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The rate the Cache synchronously writes data to a particular StorageTarget. These are writes that do cause clients to block.</td>
  </tr>
  <tr>
    <td>azure_storagetargettotalcacheops_average, azure_storagetargettotalcacheops_count, azure_storagetargettotalcacheops_maximum, azure_storagetargettotalcacheops_minimum, azure_storagetargettotalcacheops_total</td>
    <td>Count</td>
    <td>The rate of operations the cache is servicing for the namespace represented by a specific StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargettotalreadspace_average, azure_storagetargettotalreadspace_count, azure_storagetargettotalreadspace_maximum, azure_storagetargettotalreadspace_minimum, azure_storagetargettotalreadspace_total</td>
    <td>Bytes</td>
    <td>Total read space allocated for caching files associated with a storage target.</td>
  </tr>
  <tr>
    <td>azure_storagetargettotalreadthroughput_average, azure_storagetargettotalreadthroughput_count, azure_storagetargettotalreadthroughput_maximum, azure_storagetargettotalreadthroughput_minimum, azure_storagetargettotalreadthroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The total rate that the Cache reads data from a particular StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargettotalwritespace_average, azure_storagetargettotalwritespace_count, azure_storagetargettotalwritespace_maximum, azure_storagetargettotalwritespace_minimum, azure_storagetargettotalwritespace_total</td>
    <td>Bytes</td>
    <td>Total write space allocated for changed files associated with a storage target.</td>
  </tr>
  <tr>
    <td>azure_storagetargettotalwritethroughput_average, azure_storagetargettotalwritethroughput_count, azure_storagetargettotalwritethroughput_maximum, azure_storagetargettotalwritethroughput_minimum, azure_storagetargettotalwritethroughput_total</td>
    <td>BytesPerSecond</td>
    <td>The total rate that the Cache writes data to a particular StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetunrecoverableflusherrors_average, azure_storagetargetunrecoverableflusherrors_count, azure_storagetargetunrecoverableflusherrors_maximum, azure_storagetargetunrecoverableflusherrors_minimum, azure_storagetargetunrecoverableflusherrors_total</td>
    <td>Count</td>
    <td>The rate of unrecoverable file flush errors reported by the writeback state machine for a specific StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetupdatefoundasynccacheops_average, azure_storagetargetupdatefoundasynccacheops_count, azure_storagetargetupdatefoundasynccacheops_maximum, azure_storagetargetupdatefoundasynccacheops_minimum, azure_storagetargetupdatefoundasynccacheops_total</td>
    <td>Count</td>
    <td>The rate of file updates discovered by asynchronous verification operations sent by the cache to a specific StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetupdatefoundsynccacheops_average, azure_storagetargetupdatefoundsynccacheops_count, azure_storagetargetupdatefoundsynccacheops_maximum, azure_storagetargetupdatefoundsynccacheops_minimum, azure_storagetargetupdatefoundsynccacheops_total</td>
    <td>Count</td>
    <td>The rate of file updates discovered by synchronous verification operations sent by the cache to a specific StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetusedreadspace_average, azure_storagetargetusedreadspace_count, azure_storagetargetusedreadspace_maximum, azure_storagetargetusedreadspace_minimum, azure_storagetargetusedreadspace_total</td>
    <td>Bytes</td>
    <td>Read space used by cached files associated with a storage target.</td>
  </tr>
  <tr>
    <td>azure_storagetargetusedwritespace_average, azure_storagetargetusedwritespace_count, azure_storagetargetusedwritespace_maximum, azure_storagetargetusedwritespace_minimum, azure_storagetargetusedwritespace_total</td>
    <td>Bytes</td>
    <td>Write space used by changed files associated with a storage target.</td>
  </tr>
  <tr>
    <td>azure_storagetargetverificationasynccacheops_average, azure_storagetargetverificationasynccacheops_count, azure_storagetargetverificationasynccacheops_maximum, azure_storagetargetverificationasynccacheops_minimum, azure_storagetargetverificationasynccacheops_total</td>
    <td>Count</td>
    <td>The rate of asynchronous verification operations sent by the cache to a specific StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetverificationsynccacheops_average, azure_storagetargetverificationsynccacheops_count, azure_storagetargetverificationsynccacheops_maximum, azure_storagetargetverificationsynccacheops_minimum, azure_storagetargetverificationsynccacheops_total</td>
    <td>Count</td>
    <td>The rate of synchronous verification operations sent by the cache to a specific StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_storagetargetwriteiops_average, azure_storagetargetwriteiops_count, azure_storagetargetwriteiops_maximum, azure_storagetargetwriteiops_minimum, azure_storagetargetwriteiops_total</td>
    <td>Count</td>
    <td>The rate of the file write operations the Cache sends to a particular StorageTarget.</td>
  </tr>
  <tr>
    <td>azure_totalblocksrecycled_average, azure_totalblocksrecycled_count, azure_totalblocksrecycled_maximum, azure_totalblocksrecycled_minimum, azure_totalblocksrecycled_total</td>
    <td>Count</td>
    <td>Total number of 16k cache blocks recycled (freed) for the HPC Cache.</td>
  </tr>
  <tr>
    <td>azure_totalfreereadspace_average, azure_totalfreereadspace_count, azure_totalfreereadspace_maximum, azure_totalfreereadspace_minimum, azure_totalfreereadspace_total</td>
    <td>Bytes</td>
    <td>Total space available for caching read files.</td>
  </tr>
  <tr>
    <td>azure_totalfreewritespace_average, azure_totalfreewritespace_count, azure_totalfreewritespace_maximum, azure_totalfreewritespace_minimum, azure_totalfreewritespace_total</td>
    <td>Bytes</td>
    <td>Total write space available to store changed data in the cache.</td>
  </tr>
  <tr>
    <td>azure_totalrecyclerate_average, azure_totalrecyclerate_count, azure_totalrecyclerate_maximum, azure_totalrecyclerate_minimum, azure_totalrecyclerate_total</td>
    <td>BytesPerSecond</td>
    <td>Total cache space recycle rate in the HPC Cache. This is the rate at which existing data is cleared from the cache to make room for new data.</td>
  </tr>
  <tr>
    <td>azure_totalusedreadspace_average, azure_totalusedreadspace_count, azure_totalusedreadspace_maximum, azure_totalusedreadspace_minimum, azure_totalusedreadspace_total</td>
    <td>Bytes</td>
    <td>Total read space used by changed files for the HPC Cache.</td>
  </tr>
  <tr>
    <td>azure_totalusedwritespace_average, azure_totalusedwritespace_count, azure_totalusedwritespace_maximum, azure_totalusedwritespace_minimum, azure_totalusedwritespace_total</td>
    <td>Bytes</td>
    <td>Total write space used by changed files for the HPC Cache.</td>
  </tr>
  <tr>
    <td>azure_uptime_average, azure_uptime_count, azure_uptime_maximum, azure_uptime_minimum, azure_uptime_total</td>
    <td>Count</td>
    <td>Boolean results of connectivity test between the Cache and monitoring system.</td>
  </tr>
</table>
