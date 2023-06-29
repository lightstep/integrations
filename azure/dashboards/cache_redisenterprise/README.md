---
title: Azure Microsoft.Cache/redisEnterprise metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Cache/redisEnterprise metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Cache/redisEnterprise
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Cache/redisEnterprise, **PUT DESCRIPTION HERE**. 

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
    <td>azure_cachehits_average, azure_cachehits_count, azure_cachehits_maximum, azure_cachehits_minimum, azure_cachehits_total</td>
    <td>Count</td>
    <td>The number of successful key lookups. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_cachelatency_average, azure_cachelatency_count, azure_cachelatency_maximum, azure_cachelatency_minimum, azure_cachelatency_total</td>
    <td>Count</td>
    <td>The latency to the cache in microseconds. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_cachemisses_average, azure_cachemisses_count, azure_cachemisses_maximum, azure_cachemisses_minimum, azure_cachemisses_total</td>
    <td>Count</td>
    <td>The number of failed key lookups. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_cacheread_average, azure_cacheread_count, azure_cacheread_maximum, azure_cacheread_minimum, azure_cacheread_total</td>
    <td>BytesPerSecond</td>
    <td>The amount of data read from the cache in Megabytes per second (MB/s). For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_cachewrite_average, azure_cachewrite_count, azure_cachewrite_maximum, azure_cachewrite_minimum, azure_cachewrite_total</td>
    <td>BytesPerSecond</td>
    <td>The amount of data written to the cache in Megabytes per second (MB/s). For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_connectedclients_average, azure_connectedclients_count, azure_connectedclients_maximum, azure_connectedclients_minimum, azure_connectedclients_total</td>
    <td>Count</td>
    <td>The number of client connections to the cache. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_errors_average, azure_errors_count, azure_errors_maximum, azure_errors_minimum, azure_errors_total</td>
    <td>Count</td>
    <td>The number errors that occured on the cache. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_evictedkeys_average, azure_evictedkeys_count, azure_evictedkeys_maximum, azure_evictedkeys_minimum, azure_evictedkeys_total</td>
    <td>Count</td>
    <td>The number of items evicted from the cache. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_expiredkeys_average, azure_expiredkeys_count, azure_expiredkeys_maximum, azure_expiredkeys_minimum, azure_expiredkeys_total</td>
    <td>Count</td>
    <td>The number of items expired from the cache. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_georeplicationhealthy_average, azure_georeplicationhealthy_count, azure_georeplicationhealthy_maximum, azure_georeplicationhealthy_minimum, azure_georeplicationhealthy_total</td>
    <td>Count</td>
    <td>The health of geo replication in an Active Geo-Replication group. 0 represents Unhealthy and 1 represents Healthy. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_getcommands_average, azure_getcommands_count, azure_getcommands_maximum, azure_getcommands_minimum, azure_getcommands_total</td>
    <td>Count</td>
    <td>The number of get operations from the cache. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_operationspersecond_average, azure_operationspersecond_count, azure_operationspersecond_maximum, azure_operationspersecond_minimum, azure_operationspersecond_total</td>
    <td>Count</td>
    <td>The number of instantaneous operations per second executed on the cache. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_percentprocessortime_average, azure_percentprocessortime_count, azure_percentprocessortime_maximum, azure_percentprocessortime_minimum, azure_percentprocessortime_total</td>
    <td>Percent</td>
    <td>The CPU utilization of the Azure Redis Cache server as a percentage. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_serverload_average, azure_serverload_count, azure_serverload_maximum, azure_serverload_minimum, azure_serverload_total</td>
    <td>Percent</td>
    <td>The percentage of cycles in which the Redis server is busy processing and not waiting idle for messages. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_setcommands_average, azure_setcommands_count, azure_setcommands_maximum, azure_setcommands_minimum, azure_setcommands_total</td>
    <td>Count</td>
    <td>The number of set operations to the cache. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_totalcommandsprocessed_average, azure_totalcommandsprocessed_count, azure_totalcommandsprocessed_maximum, azure_totalcommandsprocessed_minimum, azure_totalcommandsprocessed_total</td>
    <td>Count</td>
    <td>The total number of commands processed by the cache server. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_totalkeys_average, azure_totalkeys_count, azure_totalkeys_maximum, azure_totalkeys_minimum, azure_totalkeys_total</td>
    <td>Count</td>
    <td>The total number of items in the cache. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_usedmemory_average, azure_usedmemory_count, azure_usedmemory_maximum, azure_usedmemory_minimum, azure_usedmemory_total</td>
    <td>Bytes</td>
    <td>The amount of cache memory used for key/value pairs in the cache in MB. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
  <tr>
    <td>azure_usedmemorypercentage_average, azure_usedmemorypercentage_count, azure_usedmemorypercentage_maximum, azure_usedmemorypercentage_minimum, azure_usedmemorypercentage_total</td>
    <td>Percent</td>
    <td>The percentage of cache memory used for key/value pairs. For more details, see https://aka.ms/redis/enterprise/metrics.</td>
  </tr>
</table>
