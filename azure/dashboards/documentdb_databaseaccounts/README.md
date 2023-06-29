---
title: Azure Microsoft.DocumentDB/DatabaseAccounts metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.DocumentDB/DatabaseAccounts metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.DocumentDB/DatabaseAccounts
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.DocumentDB/DatabaseAccounts, **PUT DESCRIPTION HERE**. 

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
    <td>azure_addregion_average, azure_addregion_count, azure_addregion_maximum, azure_addregion_minimum, azure_addregion_total</td>
    <td>Count</td>
    <td>Region Added</td>
  </tr>
  <tr>
    <td>azure_autoscalemaxthroughput_average, azure_autoscalemaxthroughput_count, azure_autoscalemaxthroughput_maximum, azure_autoscalemaxthroughput_minimum, azure_autoscalemaxthroughput_total</td>
    <td>Count</td>
    <td>Autoscale Max Throughput</td>
  </tr>
  <tr>
    <td>azure_availablestorage_average, azure_availablestorage_count, azure_availablestorage_maximum, azure_availablestorage_minimum, azure_availablestorage_total</td>
    <td>Bytes</td>
    <td>"Available Storage"will be removed from Azure Monitor at the end of September 2023. Cosmos DB collection storage size is now unlimited. The only restriction is that the storage size for each logical partition key is 20GB. You can enable PartitionKeyStatistics in Diagnostic Log to know the storage consumption for top partition keys. For more info about Cosmos DB storage quota, please check this doc https://docs.microsoft.com/azure/cosmos-db/concepts-limits. After deprecation, the remaining alert rules still defined on the deprecated metric will be automatically disabled post the deprecation date.</td>
  </tr>
  <tr>
    <td>azure_cassandraconnectionclosures_average, azure_cassandraconnectionclosures_count, azure_cassandraconnectionclosures_maximum, azure_cassandraconnectionclosures_minimum, azure_cassandraconnectionclosures_total</td>
    <td>Count</td>
    <td>Number of Cassandra connections that were closed, reported at a 1 minute granularity</td>
  </tr>
  <tr>
    <td>azure_cassandraconnectoravgreplicationlatency_average, azure_cassandraconnectoravgreplicationlatency_count, azure_cassandraconnectoravgreplicationlatency_maximum, azure_cassandraconnectoravgreplicationlatency_minimum, azure_cassandraconnectoravgreplicationlatency_total</td>
    <td>MilliSeconds</td>
    <td>Cassandra Connector Average ReplicationLatency</td>
  </tr>
  <tr>
    <td>azure_cassandraconnectorreplicationhealthstatus_average, azure_cassandraconnectorreplicationhealthstatus_count, azure_cassandraconnectorreplicationhealthstatus_maximum, azure_cassandraconnectorreplicationhealthstatus_minimum, azure_cassandraconnectorreplicationhealthstatus_total</td>
    <td>Count</td>
    <td>Cassandra Connector Replication Health Status</td>
  </tr>
  <tr>
    <td>azure_cassandrakeyspacecreate_average, azure_cassandrakeyspacecreate_count, azure_cassandrakeyspacecreate_maximum, azure_cassandrakeyspacecreate_minimum, azure_cassandrakeyspacecreate_total</td>
    <td>Count</td>
    <td>Cassandra Keyspace Created</td>
  </tr>
  <tr>
    <td>azure_cassandrakeyspacedelete_average, azure_cassandrakeyspacedelete_count, azure_cassandrakeyspacedelete_maximum, azure_cassandrakeyspacedelete_minimum, azure_cassandrakeyspacedelete_total</td>
    <td>Count</td>
    <td>Cassandra Keyspace Deleted</td>
  </tr>
  <tr>
    <td>azure_cassandrakeyspacethroughputupdate_average, azure_cassandrakeyspacethroughputupdate_count, azure_cassandrakeyspacethroughputupdate_maximum, azure_cassandrakeyspacethroughputupdate_minimum, azure_cassandrakeyspacethroughputupdate_total</td>
    <td>Count</td>
    <td>Cassandra Keyspace Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_cassandrakeyspaceupdate_average, azure_cassandrakeyspaceupdate_count, azure_cassandrakeyspaceupdate_maximum, azure_cassandrakeyspaceupdate_minimum, azure_cassandrakeyspaceupdate_total</td>
    <td>Count</td>
    <td>Cassandra Keyspace Updated</td>
  </tr>
  <tr>
    <td>azure_cassandrarequestcharges_average, azure_cassandrarequestcharges_count, azure_cassandrarequestcharges_maximum, azure_cassandrarequestcharges_minimum, azure_cassandrarequestcharges_total</td>
    <td>Count</td>
    <td>RUs consumed for Cassandra requests made</td>
  </tr>
  <tr>
    <td>azure_cassandrarequests_average, azure_cassandrarequests_count, azure_cassandrarequests_maximum, azure_cassandrarequests_minimum, azure_cassandrarequests_total</td>
    <td>Count</td>
    <td>Number of Cassandra requests made</td>
  </tr>
  <tr>
    <td>azure_cassandratablecreate_average, azure_cassandratablecreate_count, azure_cassandratablecreate_maximum, azure_cassandratablecreate_minimum, azure_cassandratablecreate_total</td>
    <td>Count</td>
    <td>Cassandra Table Created</td>
  </tr>
  <tr>
    <td>azure_cassandratabledelete_average, azure_cassandratabledelete_count, azure_cassandratabledelete_maximum, azure_cassandratabledelete_minimum, azure_cassandratabledelete_total</td>
    <td>Count</td>
    <td>Cassandra Table Deleted</td>
  </tr>
  <tr>
    <td>azure_cassandratablethroughputupdate_average, azure_cassandratablethroughputupdate_count, azure_cassandratablethroughputupdate_maximum, azure_cassandratablethroughputupdate_minimum, azure_cassandratablethroughputupdate_total</td>
    <td>Count</td>
    <td>Cassandra Table Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_cassandratableupdate_average, azure_cassandratableupdate_count, azure_cassandratableupdate_maximum, azure_cassandratableupdate_minimum, azure_cassandratableupdate_total</td>
    <td>Count</td>
    <td>Cassandra Table Updated</td>
  </tr>
  <tr>
    <td>azure_createaccount_average, azure_createaccount_count, azure_createaccount_maximum, azure_createaccount_minimum, azure_createaccount_total</td>
    <td>Count</td>
    <td>Account Created</td>
  </tr>
  <tr>
    <td>azure_datausage_average, azure_datausage_count, azure_datausage_maximum, azure_datausage_minimum, azure_datausage_total</td>
    <td>Bytes</td>
    <td>Total data usage reported at 5 minutes granularity</td>
  </tr>
  <tr>
    <td>azure_dedicatedgatewayaveragecpuusage_average, azure_dedicatedgatewayaveragecpuusage_count, azure_dedicatedgatewayaveragecpuusage_maximum, azure_dedicatedgatewayaveragecpuusage_minimum, azure_dedicatedgatewayaveragecpuusage_total</td>
    <td>Percent</td>
    <td>Average CPU usage across dedicated gateway instances</td>
  </tr>
  <tr>
    <td>azure_dedicatedgatewayaveragememoryusage_average, azure_dedicatedgatewayaveragememoryusage_count, azure_dedicatedgatewayaveragememoryusage_maximum, azure_dedicatedgatewayaveragememoryusage_minimum, azure_dedicatedgatewayaveragememoryusage_total</td>
    <td>Bytes</td>
    <td>Average memory usage across dedicated gateway instances, which is used for both routing requests and caching data</td>
  </tr>
  <tr>
    <td>azure_dedicatedgatewaycpuusage_average, azure_dedicatedgatewaycpuusage_count, azure_dedicatedgatewaycpuusage_maximum, azure_dedicatedgatewaycpuusage_minimum, azure_dedicatedgatewaycpuusage_total</td>
    <td>Percent</td>
    <td>CPU usage across dedicated gateway instances</td>
  </tr>
  <tr>
    <td>azure_dedicatedgatewaymaximumcpuusage_average, azure_dedicatedgatewaymaximumcpuusage_count, azure_dedicatedgatewaymaximumcpuusage_maximum, azure_dedicatedgatewaymaximumcpuusage_minimum, azure_dedicatedgatewaymaximumcpuusage_total</td>
    <td>Percent</td>
    <td>Average Maximum CPU usage across dedicated gateway instances</td>
  </tr>
  <tr>
    <td>azure_dedicatedgatewaymemoryusage_average, azure_dedicatedgatewaymemoryusage_count, azure_dedicatedgatewaymemoryusage_maximum, azure_dedicatedgatewaymemoryusage_minimum, azure_dedicatedgatewaymemoryusage_total</td>
    <td>Bytes</td>
    <td>Memory usage across dedicated gateway instances</td>
  </tr>
  <tr>
    <td>azure_dedicatedgatewayrequests_average, azure_dedicatedgatewayrequests_count, azure_dedicatedgatewayrequests_maximum, azure_dedicatedgatewayrequests_minimum, azure_dedicatedgatewayrequests_total</td>
    <td>Count</td>
    <td>Requests at the dedicated gateway</td>
  </tr>
  <tr>
    <td>azure_deleteaccount_average, azure_deleteaccount_count, azure_deleteaccount_maximum, azure_deleteaccount_minimum, azure_deleteaccount_total</td>
    <td>Count</td>
    <td>Account Deleted</td>
  </tr>
  <tr>
    <td>azure_documentcount_average, azure_documentcount_count, azure_documentcount_maximum, azure_documentcount_minimum, azure_documentcount_total</td>
    <td>Count</td>
    <td>Total document count reported at 5 minutes, 1 hour and 1 day granularity</td>
  </tr>
  <tr>
    <td>azure_documentquota_average, azure_documentquota_count, azure_documentquota_maximum, azure_documentquota_minimum, azure_documentquota_total</td>
    <td>Bytes</td>
    <td>Total storage quota reported at 5 minutes granularity</td>
  </tr>
  <tr>
    <td>azure_gremlindatabasecreate_average, azure_gremlindatabasecreate_count, azure_gremlindatabasecreate_maximum, azure_gremlindatabasecreate_minimum, azure_gremlindatabasecreate_total</td>
    <td>Count</td>
    <td>Gremlin Database Created</td>
  </tr>
  <tr>
    <td>azure_gremlindatabasedelete_average, azure_gremlindatabasedelete_count, azure_gremlindatabasedelete_maximum, azure_gremlindatabasedelete_minimum, azure_gremlindatabasedelete_total</td>
    <td>Count</td>
    <td>Gremlin Database Deleted</td>
  </tr>
  <tr>
    <td>azure_gremlindatabasethroughputupdate_average, azure_gremlindatabasethroughputupdate_count, azure_gremlindatabasethroughputupdate_maximum, azure_gremlindatabasethroughputupdate_minimum, azure_gremlindatabasethroughputupdate_total</td>
    <td>Count</td>
    <td>Gremlin Database Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_gremlindatabaseupdate_average, azure_gremlindatabaseupdate_count, azure_gremlindatabaseupdate_maximum, azure_gremlindatabaseupdate_minimum, azure_gremlindatabaseupdate_total</td>
    <td>Count</td>
    <td>Gremlin Database Updated</td>
  </tr>
  <tr>
    <td>azure_gremlingraphcreate_average, azure_gremlingraphcreate_count, azure_gremlingraphcreate_maximum, azure_gremlingraphcreate_minimum, azure_gremlingraphcreate_total</td>
    <td>Count</td>
    <td>Gremlin Graph Created</td>
  </tr>
  <tr>
    <td>azure_gremlingraphdelete_average, azure_gremlingraphdelete_count, azure_gremlingraphdelete_maximum, azure_gremlingraphdelete_minimum, azure_gremlingraphdelete_total</td>
    <td>Count</td>
    <td>Gremlin Graph Deleted</td>
  </tr>
  <tr>
    <td>azure_gremlingraphthroughputupdate_average, azure_gremlingraphthroughputupdate_count, azure_gremlingraphthroughputupdate_maximum, azure_gremlingraphthroughputupdate_minimum, azure_gremlingraphthroughputupdate_total</td>
    <td>Count</td>
    <td>Gremlin Graph Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_gremlingraphupdate_average, azure_gremlingraphupdate_count, azure_gremlingraphupdate_maximum, azure_gremlingraphupdate_minimum, azure_gremlingraphupdate_total</td>
    <td>Count</td>
    <td>Gremlin Graph Updated</td>
  </tr>
  <tr>
    <td>azure_gremlinrequestcharges_average, azure_gremlinrequestcharges_count, azure_gremlinrequestcharges_maximum, azure_gremlinrequestcharges_minimum, azure_gremlinrequestcharges_total</td>
    <td>Count</td>
    <td>Request Units consumed for Gremlin requests made</td>
  </tr>
  <tr>
    <td>azure_gremlinrequests_average, azure_gremlinrequests_count, azure_gremlinrequests_maximum, azure_gremlinrequests_minimum, azure_gremlinrequests_total</td>
    <td>Count</td>
    <td>Number of Gremlin requests made</td>
  </tr>
  <tr>
    <td>azure_indexusage_average, azure_indexusage_count, azure_indexusage_maximum, azure_indexusage_minimum, azure_indexusage_total</td>
    <td>Bytes</td>
    <td>Total index usage reported at 5 minutes granularity</td>
  </tr>
  <tr>
    <td>azure_integratedcacheevictedentriessize_average, azure_integratedcacheevictedentriessize_count, azure_integratedcacheevictedentriessize_maximum, azure_integratedcacheevictedentriessize_minimum, azure_integratedcacheevictedentriessize_total</td>
    <td>Bytes</td>
    <td>Size of the entries evicted from the integrated cache</td>
  </tr>
  <tr>
    <td>azure_integratedcacheitemexpirationcount_average, azure_integratedcacheitemexpirationcount_count, azure_integratedcacheitemexpirationcount_maximum, azure_integratedcacheitemexpirationcount_minimum, azure_integratedcacheitemexpirationcount_total</td>
    <td>Count</td>
    <td>Number of items evicted from the integrated cache due to TTL expiration</td>
  </tr>
  <tr>
    <td>azure_integratedcacheitemhitrate_average, azure_integratedcacheitemhitrate_count, azure_integratedcacheitemhitrate_maximum, azure_integratedcacheitemhitrate_minimum, azure_integratedcacheitemhitrate_total</td>
    <td>Percent</td>
    <td>Number of point reads that used the integrated cache divided by number of point reads routed through the dedicated gateway with eventual consistency</td>
  </tr>
  <tr>
    <td>azure_integratedcachequeryexpirationcount_average, azure_integratedcachequeryexpirationcount_count, azure_integratedcachequeryexpirationcount_maximum, azure_integratedcachequeryexpirationcount_minimum, azure_integratedcachequeryexpirationcount_total</td>
    <td>Count</td>
    <td>Number of queries evicted from the integrated cache due to TTL expiration</td>
  </tr>
  <tr>
    <td>azure_integratedcachequeryhitrate_average, azure_integratedcachequeryhitrate_count, azure_integratedcachequeryhitrate_maximum, azure_integratedcachequeryhitrate_minimum, azure_integratedcachequeryhitrate_total</td>
    <td>Percent</td>
    <td>Number of queries that used the integrated cache divided by number of queries routed through the dedicated gateway with eventual consistency</td>
  </tr>
  <tr>
    <td>azure_materializedviewcatchupgapinminutes_average, azure_materializedviewcatchupgapinminutes_count, azure_materializedviewcatchupgapinminutes_maximum, azure_materializedviewcatchupgapinminutes_minimum, azure_materializedviewcatchupgapinminutes_total</td>
    <td>Count</td>
    <td>Maximum time difference in minutes between data in source container and data propagated to materialized view</td>
  </tr>
  <tr>
    <td>azure_materializedviewsbuilderaveragecpuusage_average, azure_materializedviewsbuilderaveragecpuusage_count, azure_materializedviewsbuilderaveragecpuusage_maximum, azure_materializedviewsbuilderaveragecpuusage_minimum, azure_materializedviewsbuilderaveragecpuusage_total</td>
    <td>Percent</td>
    <td>Average CPU usage across materialized view builder instances, which are used for populating data in materialized views</td>
  </tr>
  <tr>
    <td>azure_materializedviewsbuilderaveragememoryusage_average, azure_materializedviewsbuilderaveragememoryusage_count, azure_materializedviewsbuilderaveragememoryusage_maximum, azure_materializedviewsbuilderaveragememoryusage_minimum, azure_materializedviewsbuilderaveragememoryusage_total</td>
    <td>Bytes</td>
    <td>Average memory usage across materialized view builder instances, which are used for populating data in materialized views</td>
  </tr>
  <tr>
    <td>azure_materializedviewsbuildermaximumcpuusage_average, azure_materializedviewsbuildermaximumcpuusage_count, azure_materializedviewsbuildermaximumcpuusage_maximum, azure_materializedviewsbuildermaximumcpuusage_minimum, azure_materializedviewsbuildermaximumcpuusage_total</td>
    <td>Percent</td>
    <td>Average Maximum CPU usage across materialized view builder instances, which are used for populating data in materialized views</td>
  </tr>
  <tr>
    <td>azure_metadatarequests_average, azure_metadatarequests_count, azure_metadatarequests_maximum, azure_metadatarequests_minimum, azure_metadatarequests_total</td>
    <td>Count</td>
    <td>Count of metadata requests. Cosmos DB maintains system metadata collection for each account, that allows you to enumerate collections, databases, etc, and their configurations, free of charge.</td>
  </tr>
  <tr>
    <td>azure_mongocollectioncreate_average, azure_mongocollectioncreate_count, azure_mongocollectioncreate_maximum, azure_mongocollectioncreate_minimum, azure_mongocollectioncreate_total</td>
    <td>Count</td>
    <td>Mongo Collection Created</td>
  </tr>
  <tr>
    <td>azure_mongocollectiondelete_average, azure_mongocollectiondelete_count, azure_mongocollectiondelete_maximum, azure_mongocollectiondelete_minimum, azure_mongocollectiondelete_total</td>
    <td>Count</td>
    <td>Mongo Collection Deleted</td>
  </tr>
  <tr>
    <td>azure_mongocollectionthroughputupdate_average, azure_mongocollectionthroughputupdate_count, azure_mongocollectionthroughputupdate_maximum, azure_mongocollectionthroughputupdate_minimum, azure_mongocollectionthroughputupdate_total</td>
    <td>Count</td>
    <td>Mongo Collection Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_mongocollectionupdate_average, azure_mongocollectionupdate_count, azure_mongocollectionupdate_maximum, azure_mongocollectionupdate_minimum, azure_mongocollectionupdate_total</td>
    <td>Count</td>
    <td>Mongo Collection Updated</td>
  </tr>
  <tr>
    <td>azure_mongodatabasedelete_average, azure_mongodatabasedelete_count, azure_mongodatabasedelete_maximum, azure_mongodatabasedelete_minimum, azure_mongodatabasedelete_total</td>
    <td>Count</td>
    <td>Mongo Database Deleted</td>
  </tr>
  <tr>
    <td>azure_mongodatabasethroughputupdate_average, azure_mongodatabasethroughputupdate_count, azure_mongodatabasethroughputupdate_maximum, azure_mongodatabasethroughputupdate_minimum, azure_mongodatabasethroughputupdate_total</td>
    <td>Count</td>
    <td>Mongo Database Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_mongodbdatabasecreate_average, azure_mongodbdatabasecreate_count, azure_mongodbdatabasecreate_maximum, azure_mongodbdatabasecreate_minimum, azure_mongodbdatabasecreate_total</td>
    <td>Count</td>
    <td>Mongo Database Created</td>
  </tr>
  <tr>
    <td>azure_mongodbdatabaseupdate_average, azure_mongodbdatabaseupdate_count, azure_mongodbdatabaseupdate_maximum, azure_mongodbdatabaseupdate_minimum, azure_mongodbdatabaseupdate_total</td>
    <td>Count</td>
    <td>Mongo Database Updated</td>
  </tr>
  <tr>
    <td>azure_mongorequestcharge_average, azure_mongorequestcharge_count, azure_mongorequestcharge_maximum, azure_mongorequestcharge_minimum, azure_mongorequestcharge_total</td>
    <td>Count</td>
    <td>Mongo Request Units Consumed</td>
  </tr>
  <tr>
    <td>azure_mongorequests_average, azure_mongorequests_count, azure_mongorequests_maximum, azure_mongorequests_minimum, azure_mongorequests_total</td>
    <td>Count</td>
    <td>Number of Mongo Requests Made</td>
  </tr>
  <tr>
    <td>azure_normalizedruconsumption_average, azure_normalizedruconsumption_count, azure_normalizedruconsumption_maximum, azure_normalizedruconsumption_minimum, azure_normalizedruconsumption_total</td>
    <td>Percent</td>
    <td>Max RU consumption percentage per minute</td>
  </tr>
  <tr>
    <td>azure_offlineregion_average, azure_offlineregion_count, azure_offlineregion_maximum, azure_offlineregion_minimum, azure_offlineregion_total</td>
    <td>Count</td>
    <td>Region Offlined</td>
  </tr>
  <tr>
    <td>azure_onlineregion_average, azure_onlineregion_count, azure_onlineregion_maximum, azure_onlineregion_minimum, azure_onlineregion_total</td>
    <td>Count</td>
    <td>Region Onlined</td>
  </tr>
  <tr>
    <td>azure_physicalpartitionsizeinfo_average, azure_physicalpartitionsizeinfo_count, azure_physicalpartitionsizeinfo_maximum, azure_physicalpartitionsizeinfo_minimum, azure_physicalpartitionsizeinfo_total</td>
    <td>Bytes</td>
    <td>Physical Partition Size in bytes</td>
  </tr>
  <tr>
    <td>azure_physicalpartitionthroughputinfo_average, azure_physicalpartitionthroughputinfo_count, azure_physicalpartitionthroughputinfo_maximum, azure_physicalpartitionthroughputinfo_minimum, azure_physicalpartitionthroughputinfo_total</td>
    <td>Count</td>
    <td>Physical Partition Throughput</td>
  </tr>
  <tr>
    <td>azure_provisionedthroughput_average, azure_provisionedthroughput_count, azure_provisionedthroughput_maximum, azure_provisionedthroughput_minimum, azure_provisionedthroughput_total</td>
    <td>Count</td>
    <td>Provisioned Throughput</td>
  </tr>
  <tr>
    <td>azure_regionfailover_average, azure_regionfailover_count, azure_regionfailover_maximum, azure_regionfailover_minimum, azure_regionfailover_total</td>
    <td>Count</td>
    <td>Region Failed Over</td>
  </tr>
  <tr>
    <td>azure_removeregion_average, azure_removeregion_count, azure_removeregion_maximum, azure_removeregion_minimum, azure_removeregion_total</td>
    <td>Count</td>
    <td>Region Removed</td>
  </tr>
  <tr>
    <td>azure_replicationlatency_average, azure_replicationlatency_count, azure_replicationlatency_maximum, azure_replicationlatency_minimum, azure_replicationlatency_total</td>
    <td>MilliSeconds</td>
    <td>P99 Replication Latency across source and target regions for geo-enabled account</td>
  </tr>
  <tr>
    <td>azure_serversidelatency_average, azure_serversidelatency_count, azure_serversidelatency_maximum, azure_serversidelatency_minimum, azure_serversidelatency_total</td>
    <td>MilliSeconds</td>
    <td>Server Side Latency</td>
  </tr>
  <tr>
    <td>azure_serversidelatencydirect_average, azure_serversidelatencydirect_count, azure_serversidelatencydirect_maximum, azure_serversidelatencydirect_minimum, azure_serversidelatencydirect_total</td>
    <td>MilliSeconds</td>
    <td>Server Side Latency in Direct Connection Mode</td>
  </tr>
  <tr>
    <td>azure_serversidelatencygateway_average, azure_serversidelatencygateway_count, azure_serversidelatencygateway_maximum, azure_serversidelatencygateway_minimum, azure_serversidelatencygateway_total</td>
    <td>MilliSeconds</td>
    <td>Server Side Latency in Gateway Connection Mode</td>
  </tr>
  <tr>
    <td>azure_serviceavailability_average, azure_serviceavailability_count, azure_serviceavailability_maximum, azure_serviceavailability_minimum, azure_serviceavailability_total</td>
    <td>Percent</td>
    <td>Account requests availability at one hour, day or month granularity</td>
  </tr>
  <tr>
    <td>azure_sqlcontainercreate_average, azure_sqlcontainercreate_count, azure_sqlcontainercreate_maximum, azure_sqlcontainercreate_minimum, azure_sqlcontainercreate_total</td>
    <td>Count</td>
    <td>Sql Container Created</td>
  </tr>
  <tr>
    <td>azure_sqlcontainerdelete_average, azure_sqlcontainerdelete_count, azure_sqlcontainerdelete_maximum, azure_sqlcontainerdelete_minimum, azure_sqlcontainerdelete_total</td>
    <td>Count</td>
    <td>Sql Container Deleted</td>
  </tr>
  <tr>
    <td>azure_sqlcontainerthroughputupdate_average, azure_sqlcontainerthroughputupdate_count, azure_sqlcontainerthroughputupdate_maximum, azure_sqlcontainerthroughputupdate_minimum, azure_sqlcontainerthroughputupdate_total</td>
    <td>Count</td>
    <td>Sql Container Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_sqlcontainerupdate_average, azure_sqlcontainerupdate_count, azure_sqlcontainerupdate_maximum, azure_sqlcontainerupdate_minimum, azure_sqlcontainerupdate_total</td>
    <td>Count</td>
    <td>Sql Container Updated</td>
  </tr>
  <tr>
    <td>azure_sqldatabasecreate_average, azure_sqldatabasecreate_count, azure_sqldatabasecreate_maximum, azure_sqldatabasecreate_minimum, azure_sqldatabasecreate_total</td>
    <td>Count</td>
    <td>Sql Database Created</td>
  </tr>
  <tr>
    <td>azure_sqldatabasedelete_average, azure_sqldatabasedelete_count, azure_sqldatabasedelete_maximum, azure_sqldatabasedelete_minimum, azure_sqldatabasedelete_total</td>
    <td>Count</td>
    <td>Sql Database Deleted</td>
  </tr>
  <tr>
    <td>azure_sqldatabasethroughputupdate_average, azure_sqldatabasethroughputupdate_count, azure_sqldatabasethroughputupdate_maximum, azure_sqldatabasethroughputupdate_minimum, azure_sqldatabasethroughputupdate_total</td>
    <td>Count</td>
    <td>Sql Database Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_sqldatabaseupdate_average, azure_sqldatabaseupdate_count, azure_sqldatabaseupdate_maximum, azure_sqldatabaseupdate_minimum, azure_sqldatabaseupdate_total</td>
    <td>Count</td>
    <td>Sql Database Updated</td>
  </tr>
  <tr>
    <td>azure_tabletablecreate_average, azure_tabletablecreate_count, azure_tabletablecreate_maximum, azure_tabletablecreate_minimum, azure_tabletablecreate_total</td>
    <td>Count</td>
    <td>AzureTable Table Created</td>
  </tr>
  <tr>
    <td>azure_tabletabledelete_average, azure_tabletabledelete_count, azure_tabletabledelete_maximum, azure_tabletabledelete_minimum, azure_tabletabledelete_total</td>
    <td>Count</td>
    <td>AzureTable Table Deleted</td>
  </tr>
  <tr>
    <td>azure_tabletablethroughputupdate_average, azure_tabletablethroughputupdate_count, azure_tabletablethroughputupdate_maximum, azure_tabletablethroughputupdate_minimum, azure_tabletablethroughputupdate_total</td>
    <td>Count</td>
    <td>AzureTable Table Throughput Updated</td>
  </tr>
  <tr>
    <td>azure_tabletableupdate_average, azure_tabletableupdate_count, azure_tabletableupdate_maximum, azure_tabletableupdate_minimum, azure_tabletableupdate_total</td>
    <td>Count</td>
    <td>AzureTable Table Updated</td>
  </tr>
  <tr>
    <td>azure_totalrequests_average, azure_totalrequests_count, azure_totalrequests_maximum, azure_totalrequests_minimum, azure_totalrequests_total</td>
    <td>Count</td>
    <td>Number of requests made</td>
  </tr>
  <tr>
    <td>azure_totalrequestspreview_average, azure_totalrequestspreview_count, azure_totalrequestspreview_maximum, azure_totalrequestspreview_minimum, azure_totalrequestspreview_total</td>
    <td>Count</td>
    <td>Number of SQL requests</td>
  </tr>
  <tr>
    <td>azure_totalrequestunits_average, azure_totalrequestunits_count, azure_totalrequestunits_maximum, azure_totalrequestunits_minimum, azure_totalrequestunits_total</td>
    <td>Count</td>
    <td>SQL Request Units consumed</td>
  </tr>
  <tr>
    <td>azure_totalrequestunitspreview_average, azure_totalrequestunitspreview_count, azure_totalrequestunitspreview_maximum, azure_totalrequestunitspreview_minimum, azure_totalrequestunitspreview_total</td>
    <td>Count</td>
    <td>Request Units consumed with CapacityType</td>
  </tr>
  <tr>
    <td>azure_updateaccountkeys_average, azure_updateaccountkeys_count, azure_updateaccountkeys_maximum, azure_updateaccountkeys_minimum, azure_updateaccountkeys_total</td>
    <td>Count</td>
    <td>Account Keys Updated</td>
  </tr>
  <tr>
    <td>azure_updateaccountnetworksettings_average, azure_updateaccountnetworksettings_count, azure_updateaccountnetworksettings_maximum, azure_updateaccountnetworksettings_minimum, azure_updateaccountnetworksettings_total</td>
    <td>Count</td>
    <td>Account Network Settings Updated</td>
  </tr>
  <tr>
    <td>azure_updateaccountreplicationsettings_average, azure_updateaccountreplicationsettings_count, azure_updateaccountreplicationsettings_maximum, azure_updateaccountreplicationsettings_minimum, azure_updateaccountreplicationsettings_total</td>
    <td>Count</td>
    <td>Account Replication Settings Updated</td>
  </tr>
  <tr>
    <td>azure_updatediagnosticssettings_average, azure_updatediagnosticssettings_count, azure_updatediagnosticssettings_maximum, azure_updatediagnosticssettings_minimum, azure_updatediagnosticssettings_total</td>
    <td>Count</td>
    <td>Account Diagnostic Settings Updated</td>
  </tr>
</table>
