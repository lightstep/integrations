---
title: Azure Microsoft.Devices/IotHubs metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Devices/IotHubs metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Devices/IotHubs
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Devices/IotHubs, **PUT DESCRIPTION HERE**. 

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
    <td>azure_c2d.commands.egress.abandon.success_average, azure_c2d.commands.egress.abandon.success_count, azure_c2d.commands.egress.abandon.success_maximum, azure_c2d.commands.egress.abandon.success_minimum, azure_c2d.commands.egress.abandon.success_total</td>
    <td>Count</td>
    <td>Number of cloud-to-device messages abandoned by the device</td>
  </tr>
  <tr>
    <td>azure_c2d.commands.egress.complete.success_average, azure_c2d.commands.egress.complete.success_count, azure_c2d.commands.egress.complete.success_maximum, azure_c2d.commands.egress.complete.success_minimum, azure_c2d.commands.egress.complete.success_total</td>
    <td>Count</td>
    <td>Number of cloud-to-device message deliveries completed successfully by the device</td>
  </tr>
  <tr>
    <td>azure_c2d.commands.egress.reject.success_average, azure_c2d.commands.egress.reject.success_count, azure_c2d.commands.egress.reject.success_maximum, azure_c2d.commands.egress.reject.success_minimum, azure_c2d.commands.egress.reject.success_total</td>
    <td>Count</td>
    <td>Number of cloud-to-device messages rejected by the device</td>
  </tr>
  <tr>
    <td>azure_c2d.methods.failure_average, azure_c2d.methods.failure_count, azure_c2d.methods.failure_maximum, azure_c2d.methods.failure_minimum, azure_c2d.methods.failure_total</td>
    <td>Count</td>
    <td>The count of all failed direct method calls.</td>
  </tr>
  <tr>
    <td>azure_c2d.methods.requestsize_average, azure_c2d.methods.requestsize_count, azure_c2d.methods.requestsize_maximum, azure_c2d.methods.requestsize_minimum, azure_c2d.methods.requestsize_total</td>
    <td>Bytes</td>
    <td>The average, min, and max of all successful direct method requests.</td>
  </tr>
  <tr>
    <td>azure_c2d.methods.responsesize_average, azure_c2d.methods.responsesize_count, azure_c2d.methods.responsesize_maximum, azure_c2d.methods.responsesize_minimum, azure_c2d.methods.responsesize_total</td>
    <td>Bytes</td>
    <td>The average, min, and max of all successful direct method responses.</td>
  </tr>
  <tr>
    <td>azure_c2d.methods.success_average, azure_c2d.methods.success_count, azure_c2d.methods.success_maximum, azure_c2d.methods.success_minimum, azure_c2d.methods.success_total</td>
    <td>Count</td>
    <td>The count of all successful direct method calls.</td>
  </tr>
  <tr>
    <td>azure_c2d.twin.read.failure_average, azure_c2d.twin.read.failure_count, azure_c2d.twin.read.failure_maximum, azure_c2d.twin.read.failure_minimum, azure_c2d.twin.read.failure_total</td>
    <td>Count</td>
    <td>The count of all failed back-end-initiated twin reads.</td>
  </tr>
  <tr>
    <td>azure_c2d.twin.read.size_average, azure_c2d.twin.read.size_count, azure_c2d.twin.read.size_maximum, azure_c2d.twin.read.size_minimum, azure_c2d.twin.read.size_total</td>
    <td>Bytes</td>
    <td>The average, min, and max of all successful back-end-initiated twin reads.</td>
  </tr>
  <tr>
    <td>azure_c2d.twin.read.success_average, azure_c2d.twin.read.success_count, azure_c2d.twin.read.success_maximum, azure_c2d.twin.read.success_minimum, azure_c2d.twin.read.success_total</td>
    <td>Count</td>
    <td>The count of all successful back-end-initiated twin reads.</td>
  </tr>
  <tr>
    <td>azure_c2d.twin.update.failure_average, azure_c2d.twin.update.failure_count, azure_c2d.twin.update.failure_maximum, azure_c2d.twin.update.failure_minimum, azure_c2d.twin.update.failure_total</td>
    <td>Count</td>
    <td>The count of all failed back-end-initiated twin updates.</td>
  </tr>
  <tr>
    <td>azure_c2d.twin.update.size_average, azure_c2d.twin.update.size_count, azure_c2d.twin.update.size_maximum, azure_c2d.twin.update.size_minimum, azure_c2d.twin.update.size_total</td>
    <td>Bytes</td>
    <td>The average, min, and max size of all successful back-end-initiated twin updates.</td>
  </tr>
  <tr>
    <td>azure_c2d.twin.update.success_average, azure_c2d.twin.update.success_count, azure_c2d.twin.update.success_maximum, azure_c2d.twin.update.success_minimum, azure_c2d.twin.update.success_total</td>
    <td>Count</td>
    <td>The count of all successful back-end-initiated twin updates.</td>
  </tr>
  <tr>
    <td>azure_c2dmessagesexpired_average, azure_c2dmessagesexpired_count, azure_c2dmessagesexpired_maximum, azure_c2dmessagesexpired_minimum, azure_c2dmessagesexpired_total</td>
    <td>Count</td>
    <td>Number of expired cloud-to-device messages</td>
  </tr>
  <tr>
    <td>azure_configurations_average, azure_configurations_count, azure_configurations_maximum, azure_configurations_minimum, azure_configurations_total</td>
    <td>Count</td>
    <td>Metrics for Configuration Operations</td>
  </tr>
  <tr>
    <td>azure_connecteddevicecount_average, azure_connecteddevicecount_count, azure_connecteddevicecount_maximum, azure_connecteddevicecount_minimum, azure_connecteddevicecount_total</td>
    <td>Count</td>
    <td>Number of devices connected to your IoT hub</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.egress.builtin.events_average, azure_d2c.endpoints.egress.builtin.events_count, azure_d2c.endpoints.egress.builtin.events_maximum, azure_d2c.endpoints.egress.builtin.events_minimum, azure_d2c.endpoints.egress.builtin.events_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub routing successfully delivered messages to the built-in endpoint (messages/events).</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.egress.eventhubs_average, azure_d2c.endpoints.egress.eventhubs_count, azure_d2c.endpoints.egress.eventhubs_maximum, azure_d2c.endpoints.egress.eventhubs_minimum, azure_d2c.endpoints.egress.eventhubs_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub routing successfully delivered messages to Event Hub endpoints.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.egress.servicebusqueues_average, azure_d2c.endpoints.egress.servicebusqueues_count, azure_d2c.endpoints.egress.servicebusqueues_maximum, azure_d2c.endpoints.egress.servicebusqueues_minimum, azure_d2c.endpoints.egress.servicebusqueues_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub routing successfully delivered messages to Service Bus queue endpoints.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.egress.servicebustopics_average, azure_d2c.endpoints.egress.servicebustopics_count, azure_d2c.endpoints.egress.servicebustopics_maximum, azure_d2c.endpoints.egress.servicebustopics_minimum, azure_d2c.endpoints.egress.servicebustopics_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub routing successfully delivered messages to Service Bus topic endpoints.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.egress.storage_average, azure_d2c.endpoints.egress.storage_count, azure_d2c.endpoints.egress.storage_maximum, azure_d2c.endpoints.egress.storage_minimum, azure_d2c.endpoints.egress.storage_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub routing successfully delivered messages to storage endpoints.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.egress.storage.blobs_average, azure_d2c.endpoints.egress.storage.blobs_count, azure_d2c.endpoints.egress.storage.blobs_maximum, azure_d2c.endpoints.egress.storage.blobs_minimum, azure_d2c.endpoints.egress.storage.blobs_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub routing delivered blobs to storage endpoints.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.egress.storage.bytes_average, azure_d2c.endpoints.egress.storage.bytes_count, azure_d2c.endpoints.egress.storage.bytes_maximum, azure_d2c.endpoints.egress.storage.bytes_minimum, azure_d2c.endpoints.egress.storage.bytes_total</td>
    <td>Bytes</td>
    <td>The amount of data (bytes) IoT Hub routing delivered to storage endpoints.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.latency.builtin.events_average, azure_d2c.endpoints.latency.builtin.events_count, azure_d2c.endpoints.latency.builtin.events_maximum, azure_d2c.endpoints.latency.builtin.events_minimum, azure_d2c.endpoints.latency.builtin.events_total</td>
    <td>MilliSeconds</td>
    <td>The average latency (milliseconds) between message ingress to IoT Hub and telemetry message ingress into the built-in endpoint (messages/events).</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.latency.eventhubs_average, azure_d2c.endpoints.latency.eventhubs_count, azure_d2c.endpoints.latency.eventhubs_maximum, azure_d2c.endpoints.latency.eventhubs_minimum, azure_d2c.endpoints.latency.eventhubs_total</td>
    <td>MilliSeconds</td>
    <td>The average latency (milliseconds) between message ingress to IoT Hub and message ingress into an Event Hub endpoint.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.latency.servicebusqueues_average, azure_d2c.endpoints.latency.servicebusqueues_count, azure_d2c.endpoints.latency.servicebusqueues_maximum, azure_d2c.endpoints.latency.servicebusqueues_minimum, azure_d2c.endpoints.latency.servicebusqueues_total</td>
    <td>MilliSeconds</td>
    <td>The average latency (milliseconds) between message ingress to IoT Hub and telemetry message ingress into a Service Bus queue endpoint.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.latency.servicebustopics_average, azure_d2c.endpoints.latency.servicebustopics_count, azure_d2c.endpoints.latency.servicebustopics_maximum, azure_d2c.endpoints.latency.servicebustopics_minimum, azure_d2c.endpoints.latency.servicebustopics_total</td>
    <td>MilliSeconds</td>
    <td>The average latency (milliseconds) between message ingress to IoT Hub and telemetry message ingress into a Service Bus topic endpoint.</td>
  </tr>
  <tr>
    <td>azure_d2c.endpoints.latency.storage_average, azure_d2c.endpoints.latency.storage_count, azure_d2c.endpoints.latency.storage_maximum, azure_d2c.endpoints.latency.storage_minimum, azure_d2c.endpoints.latency.storage_total</td>
    <td>MilliSeconds</td>
    <td>The average latency (milliseconds) between message ingress to IoT Hub and telemetry message ingress into a storage endpoint.</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.egress.dropped_average, azure_d2c.telemetry.egress.dropped_count, azure_d2c.telemetry.egress.dropped_maximum, azure_d2c.telemetry.egress.dropped_minimum, azure_d2c.telemetry.egress.dropped_total</td>
    <td>Count</td>
    <td>The number of times messages were dropped by IoT Hub routing due to dead endpoints. This value does not count messages delivered to fallback route as dropped messages are not delivered there.</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.egress.fallback_average, azure_d2c.telemetry.egress.fallback_count, azure_d2c.telemetry.egress.fallback_maximum, azure_d2c.telemetry.egress.fallback_minimum, azure_d2c.telemetry.egress.fallback_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub routing delivered messages to the endpoint associated with the fallback route.</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.egress.invalid_average, azure_d2c.telemetry.egress.invalid_count, azure_d2c.telemetry.egress.invalid_maximum, azure_d2c.telemetry.egress.invalid_minimum, azure_d2c.telemetry.egress.invalid_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub routing failed to deliver messages due to an incompatibility with the endpoint. This value does not include retries.</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.egress.orphaned_average, azure_d2c.telemetry.egress.orphaned_count, azure_d2c.telemetry.egress.orphaned_maximum, azure_d2c.telemetry.egress.orphaned_minimum, azure_d2c.telemetry.egress.orphaned_total</td>
    <td>Count</td>
    <td>The number of times messages were orphaned by IoT Hub routing because they didn't match any routing rules (including the fallback rule).</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.egress.success_average, azure_d2c.telemetry.egress.success_count, azure_d2c.telemetry.egress.success_maximum, azure_d2c.telemetry.egress.success_minimum, azure_d2c.telemetry.egress.success_total</td>
    <td>Count</td>
    <td>The number of times messages were successfully delivered to all endpoints using IoT Hub routing. If a message is routed to multiple endpoints, this value increases by one for each successful delivery. If a message is delivered to the same endpoint multiple times, this value increases by one for each successful delivery.</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.ingress.allprotocol_average, azure_d2c.telemetry.ingress.allprotocol_count, azure_d2c.telemetry.ingress.allprotocol_maximum, azure_d2c.telemetry.ingress.allprotocol_minimum, azure_d2c.telemetry.ingress.allprotocol_total</td>
    <td>Count</td>
    <td>Number of device-to-cloud telemetry messages attempted to be sent to your IoT hub</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.ingress.sendthrottle_average, azure_d2c.telemetry.ingress.sendthrottle_count, azure_d2c.telemetry.ingress.sendthrottle_maximum, azure_d2c.telemetry.ingress.sendthrottle_minimum, azure_d2c.telemetry.ingress.sendthrottle_total</td>
    <td>Count</td>
    <td>Number of throttling errors due to device throughput throttles</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.ingress.success_average, azure_d2c.telemetry.ingress.success_count, azure_d2c.telemetry.ingress.success_maximum, azure_d2c.telemetry.ingress.success_minimum, azure_d2c.telemetry.ingress.success_total</td>
    <td>Count</td>
    <td>Number of device-to-cloud telemetry messages sent successfully to your IoT hub</td>
  </tr>
  <tr>
    <td>azure_d2c.twin.read.failure_average, azure_d2c.twin.read.failure_count, azure_d2c.twin.read.failure_maximum, azure_d2c.twin.read.failure_minimum, azure_d2c.twin.read.failure_total</td>
    <td>Count</td>
    <td>The count of all failed device-initiated twin reads.</td>
  </tr>
  <tr>
    <td>azure_d2c.twin.read.size_average, azure_d2c.twin.read.size_count, azure_d2c.twin.read.size_maximum, azure_d2c.twin.read.size_minimum, azure_d2c.twin.read.size_total</td>
    <td>Bytes</td>
    <td>The average, min, and max of all successful device-initiated twin reads.</td>
  </tr>
  <tr>
    <td>azure_d2c.twin.read.success_average, azure_d2c.twin.read.success_count, azure_d2c.twin.read.success_maximum, azure_d2c.twin.read.success_minimum, azure_d2c.twin.read.success_total</td>
    <td>Count</td>
    <td>The count of all successful device-initiated twin reads.</td>
  </tr>
  <tr>
    <td>azure_d2c.twin.update.failure_average, azure_d2c.twin.update.failure_count, azure_d2c.twin.update.failure_maximum, azure_d2c.twin.update.failure_minimum, azure_d2c.twin.update.failure_total</td>
    <td>Count</td>
    <td>The count of all failed device-initiated twin updates.</td>
  </tr>
  <tr>
    <td>azure_d2c.twin.update.size_average, azure_d2c.twin.update.size_count, azure_d2c.twin.update.size_maximum, azure_d2c.twin.update.size_minimum, azure_d2c.twin.update.size_total</td>
    <td>Bytes</td>
    <td>The average, min, and max size of all successful device-initiated twin updates.</td>
  </tr>
  <tr>
    <td>azure_d2c.twin.update.success_average, azure_d2c.twin.update.success_count, azure_d2c.twin.update.success_maximum, azure_d2c.twin.update.success_minimum, azure_d2c.twin.update.success_total</td>
    <td>Count</td>
    <td>The count of all successful device-initiated twin updates.</td>
  </tr>
  <tr>
    <td>azure_dailymessagequotaused_average, azure_dailymessagequotaused_count, azure_dailymessagequotaused_maximum, azure_dailymessagequotaused_minimum, azure_dailymessagequotaused_total</td>
    <td>Count</td>
    <td>Number of total messages used today</td>
  </tr>
  <tr>
    <td>azure_devicedatausage_average, azure_devicedatausage_count, azure_devicedatausage_maximum, azure_devicedatausage_minimum, azure_devicedatausage_total</td>
    <td>Bytes</td>
    <td>Bytes transferred to and from any devices connected to IotHub</td>
  </tr>
  <tr>
    <td>azure_devicedatausagev2_average, azure_devicedatausagev2_count, azure_devicedatausagev2_maximum, azure_devicedatausagev2_minimum, azure_devicedatausagev2_total</td>
    <td>Bytes</td>
    <td>Bytes transferred to and from any devices connected to IotHub</td>
  </tr>
  <tr>
    <td>azure_devices.connecteddevices.allprotocol_average, azure_devices.connecteddevices.allprotocol_count, azure_devices.connecteddevices.allprotocol_maximum, azure_devices.connecteddevices.allprotocol_minimum, azure_devices.connecteddevices.allprotocol_total</td>
    <td>Count</td>
    <td>Number of devices connected to your IoT hub</td>
  </tr>
  <tr>
    <td>azure_devices.totaldevices_average, azure_devices.totaldevices_count, azure_devices.totaldevices_maximum, azure_devices.totaldevices_minimum, azure_devices.totaldevices_total</td>
    <td>Count</td>
    <td>Number of devices registered to your IoT hub</td>
  </tr>
  <tr>
    <td>azure_eventgriddeliveries_average, azure_eventgriddeliveries_count, azure_eventgriddeliveries_maximum, azure_eventgriddeliveries_minimum, azure_eventgriddeliveries_total</td>
    <td>Count</td>
    <td>The number of IoT Hub events published to Event Grid. Use the Result dimension for the number of successful and failed requests. EventType dimension shows the type of event (https://aka.ms/ioteventgrid).</td>
  </tr>
  <tr>
    <td>azure_eventgridlatency_average, azure_eventgridlatency_count, azure_eventgridlatency_maximum, azure_eventgridlatency_minimum, azure_eventgridlatency_total</td>
    <td>MilliSeconds</td>
    <td>The average latency (milliseconds) from when the Iot Hub event was generated to when the event was published to Event Grid. This number is an average between all event types. Use the EventType dimension to see latency of a specific type of event.</td>
  </tr>
  <tr>
    <td>azure_jobs.canceljob.failure_average, azure_jobs.canceljob.failure_count, azure_jobs.canceljob.failure_maximum, azure_jobs.canceljob.failure_minimum, azure_jobs.canceljob.failure_total</td>
    <td>Count</td>
    <td>The count of all failed calls to cancel a job.</td>
  </tr>
  <tr>
    <td>azure_jobs.canceljob.success_average, azure_jobs.canceljob.success_count, azure_jobs.canceljob.success_maximum, azure_jobs.canceljob.success_minimum, azure_jobs.canceljob.success_total</td>
    <td>Count</td>
    <td>The count of all successful calls to cancel a job.</td>
  </tr>
  <tr>
    <td>azure_jobs.completed_average, azure_jobs.completed_count, azure_jobs.completed_maximum, azure_jobs.completed_minimum, azure_jobs.completed_total</td>
    <td>Count</td>
    <td>The count of all completed jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.createdirectmethodjob.failure_average, azure_jobs.createdirectmethodjob.failure_count, azure_jobs.createdirectmethodjob.failure_maximum, azure_jobs.createdirectmethodjob.failure_minimum, azure_jobs.createdirectmethodjob.failure_total</td>
    <td>Count</td>
    <td>The count of all failed creation of direct method invocation jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.createdirectmethodjob.success_average, azure_jobs.createdirectmethodjob.success_count, azure_jobs.createdirectmethodjob.success_maximum, azure_jobs.createdirectmethodjob.success_minimum, azure_jobs.createdirectmethodjob.success_total</td>
    <td>Count</td>
    <td>The count of all successful creation of direct method invocation jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.createtwinupdatejob.failure_average, azure_jobs.createtwinupdatejob.failure_count, azure_jobs.createtwinupdatejob.failure_maximum, azure_jobs.createtwinupdatejob.failure_minimum, azure_jobs.createtwinupdatejob.failure_total</td>
    <td>Count</td>
    <td>The count of all failed creation of twin update jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.createtwinupdatejob.success_average, azure_jobs.createtwinupdatejob.success_count, azure_jobs.createtwinupdatejob.success_maximum, azure_jobs.createtwinupdatejob.success_minimum, azure_jobs.createtwinupdatejob.success_total</td>
    <td>Count</td>
    <td>The count of all successful creation of twin update jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.failed_average, azure_jobs.failed_count, azure_jobs.failed_maximum, azure_jobs.failed_minimum, azure_jobs.failed_total</td>
    <td>Count</td>
    <td>The count of all failed jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.listjobs.failure_average, azure_jobs.listjobs.failure_count, azure_jobs.listjobs.failure_maximum, azure_jobs.listjobs.failure_minimum, azure_jobs.listjobs.failure_total</td>
    <td>Count</td>
    <td>The count of all failed calls to list jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.listjobs.success_average, azure_jobs.listjobs.success_count, azure_jobs.listjobs.success_maximum, azure_jobs.listjobs.success_minimum, azure_jobs.listjobs.success_total</td>
    <td>Count</td>
    <td>The count of all successful calls to list jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.queryjobs.failure_average, azure_jobs.queryjobs.failure_count, azure_jobs.queryjobs.failure_maximum, azure_jobs.queryjobs.failure_minimum, azure_jobs.queryjobs.failure_total</td>
    <td>Count</td>
    <td>The count of all failed calls to query jobs.</td>
  </tr>
  <tr>
    <td>azure_jobs.queryjobs.success_average, azure_jobs.queryjobs.success_count, azure_jobs.queryjobs.success_maximum, azure_jobs.queryjobs.success_minimum, azure_jobs.queryjobs.success_total</td>
    <td>Count</td>
    <td>The count of all successful calls to query jobs.</td>
  </tr>
  <tr>
    <td>azure_routingdatasizeinbytesdelivered_average, azure_routingdatasizeinbytesdelivered_count, azure_routingdatasizeinbytesdelivered_maximum, azure_routingdatasizeinbytesdelivered_minimum, azure_routingdatasizeinbytesdelivered_total</td>
    <td>Bytes</td>
    <td>The total size in bytes of messages delivered by IoT hub to an endpoint. You can use the EndpointName and EndpointType dimensions to view the size of the messages in bytes delivered to your different endpoints. The metric value increases for every message delivered, including if the message is delivered to multiple endpoints or if the message is delivered to the same endpoint multiple times.</td>
  </tr>
  <tr>
    <td>azure_routingdeliveries_average, azure_routingdeliveries_count, azure_routingdeliveries_maximum, azure_routingdeliveries_minimum, azure_routingdeliveries_total</td>
    <td>Count</td>
    <td>The number of times IoT Hub attempted to deliver messages to all endpoints using routing. To see the number of successful or failed attempts, use the Result dimension. To see the reason of failure, like invalid, dropped, or orphaned, use the FailureReasonCategory dimension. You can also use the EndpointName and EndpointType dimensions to understand how many messages were delivered to your different endpoints. The metric value increases by one for each delivery attempt, including if the message is delivered to multiple endpoints or if the message is delivered to the same endpoint multiple times.</td>
  </tr>
  <tr>
    <td>azure_routingdeliverylatency_average, azure_routingdeliverylatency_count, azure_routingdeliverylatency_maximum, azure_routingdeliverylatency_minimum, azure_routingdeliverylatency_total</td>
    <td>MilliSeconds</td>
    <td>The average latency (milliseconds) between message ingress to IoT Hub and telemetry message ingress into an endpoint. You can use the EndpointName and EndpointType dimensions to understand the latency to your different endpoints.</td>
  </tr>
  <tr>
    <td>azure_totaldevicecount_average, azure_totaldevicecount_count, azure_totaldevicecount_maximum, azure_totaldevicecount_minimum, azure_totaldevicecount_total</td>
    <td>Count</td>
    <td>Number of devices registered to your IoT hub</td>
  </tr>
  <tr>
    <td>azure_twinqueries.failure_average, azure_twinqueries.failure_count, azure_twinqueries.failure_maximum, azure_twinqueries.failure_minimum, azure_twinqueries.failure_total</td>
    <td>Count</td>
    <td>The count of all failed twin queries.</td>
  </tr>
  <tr>
    <td>azure_twinqueries.resultsize_average, azure_twinqueries.resultsize_count, azure_twinqueries.resultsize_maximum, azure_twinqueries.resultsize_minimum, azure_twinqueries.resultsize_total</td>
    <td>Bytes</td>
    <td>The average, min, and max of the result size of all successful twin queries.</td>
  </tr>
  <tr>
    <td>azure_twinqueries.success_average, azure_twinqueries.success_count, azure_twinqueries.success_maximum, azure_twinqueries.success_minimum, azure_twinqueries.success_total</td>
    <td>Count</td>
    <td>The count of all successful twin queries.</td>
  </tr>
</table>
