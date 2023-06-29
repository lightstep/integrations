---
title: Azure Microsoft.IoTCentral/IoTApps metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.IoTCentral/IoTApps metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.IoTCentral/IoTApps
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.IoTCentral/IoTApps, **PUT DESCRIPTION HERE**. 

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
    <td>azure_c2d.commands.failure_average, azure_c2d.commands.failure_count, azure_c2d.commands.failure_maximum, azure_c2d.commands.failure_minimum, azure_c2d.commands.failure_total</td>
    <td>Count</td>
    <td>The count of all failed command requests initiated from IoT Central</td>
  </tr>
  <tr>
    <td>azure_c2d.commands.requestsize_average, azure_c2d.commands.requestsize_count, azure_c2d.commands.requestsize_maximum, azure_c2d.commands.requestsize_minimum, azure_c2d.commands.requestsize_total</td>
    <td>Bytes</td>
    <td>Request size of all command requests initiated from IoT Central</td>
  </tr>
  <tr>
    <td>azure_c2d.commands.responsesize_average, azure_c2d.commands.responsesize_count, azure_c2d.commands.responsesize_maximum, azure_c2d.commands.responsesize_minimum, azure_c2d.commands.responsesize_total</td>
    <td>Bytes</td>
    <td>Response size of all command responses initiated from IoT Central</td>
  </tr>
  <tr>
    <td>azure_c2d.commands.success_average, azure_c2d.commands.success_count, azure_c2d.commands.success_maximum, azure_c2d.commands.success_minimum, azure_c2d.commands.success_total</td>
    <td>Count</td>
    <td>The count of all successful command requests initiated from IoT Central</td>
  </tr>
  <tr>
    <td>azure_c2d.property.read.failure_average, azure_c2d.property.read.failure_count, azure_c2d.property.read.failure_maximum, azure_c2d.property.read.failure_minimum, azure_c2d.property.read.failure_total</td>
    <td>Count</td>
    <td>The count of all failed property reads initiated from IoT Central</td>
  </tr>
  <tr>
    <td>azure_c2d.property.read.success_average, azure_c2d.property.read.success_count, azure_c2d.property.read.success_maximum, azure_c2d.property.read.success_minimum, azure_c2d.property.read.success_total</td>
    <td>Count</td>
    <td>The count of all successful property reads initiated from IoT Central</td>
  </tr>
  <tr>
    <td>azure_c2d.property.update.failure_average, azure_c2d.property.update.failure_count, azure_c2d.property.update.failure_maximum, azure_c2d.property.update.failure_minimum, azure_c2d.property.update.failure_total</td>
    <td>Count</td>
    <td>The count of all failed property updates initiated from IoT Central</td>
  </tr>
  <tr>
    <td>azure_c2d.property.update.success_average, azure_c2d.property.update.success_count, azure_c2d.property.update.success_maximum, azure_c2d.property.update.success_minimum, azure_c2d.property.update.success_total</td>
    <td>Count</td>
    <td>The count of all successful property updates initiated from IoT Central</td>
  </tr>
  <tr>
    <td>azure_connecteddevicecount_average, azure_connecteddevicecount_count, azure_connecteddevicecount_maximum, azure_connecteddevicecount_minimum, azure_connecteddevicecount_total</td>
    <td>Count</td>
    <td>Number of devices connected to IoT Central</td>
  </tr>
  <tr>
    <td>azure_d2c.property.read.failure_average, azure_d2c.property.read.failure_count, azure_d2c.property.read.failure_maximum, azure_d2c.property.read.failure_minimum, azure_d2c.property.read.failure_total</td>
    <td>Count</td>
    <td>The count of all failed property reads initiated from devices</td>
  </tr>
  <tr>
    <td>azure_d2c.property.read.success_average, azure_d2c.property.read.success_count, azure_d2c.property.read.success_maximum, azure_d2c.property.read.success_minimum, azure_d2c.property.read.success_total</td>
    <td>Count</td>
    <td>The count of all successful property reads initiated from devices</td>
  </tr>
  <tr>
    <td>azure_d2c.property.update.failure_average, azure_d2c.property.update.failure_count, azure_d2c.property.update.failure_maximum, azure_d2c.property.update.failure_minimum, azure_d2c.property.update.failure_total</td>
    <td>Count</td>
    <td>The count of all failed property updates initiated from devices</td>
  </tr>
  <tr>
    <td>azure_d2c.property.update.success_average, azure_d2c.property.update.success_count, azure_d2c.property.update.success_maximum, azure_d2c.property.update.success_minimum, azure_d2c.property.update.success_total</td>
    <td>Count</td>
    <td>The count of all successful property updates initiated from devices</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.ingress.allprotocol_average, azure_d2c.telemetry.ingress.allprotocol_count, azure_d2c.telemetry.ingress.allprotocol_maximum, azure_d2c.telemetry.ingress.allprotocol_minimum, azure_d2c.telemetry.ingress.allprotocol_total</td>
    <td>Count</td>
    <td>Number of device-to-cloud telemetry messages attempted to be sent to the IoT Central application</td>
  </tr>
  <tr>
    <td>azure_d2c.telemetry.ingress.success_average, azure_d2c.telemetry.ingress.success_count, azure_d2c.telemetry.ingress.success_maximum, azure_d2c.telemetry.ingress.success_minimum, azure_d2c.telemetry.ingress.success_total</td>
    <td>Count</td>
    <td>Number of device-to-cloud telemetry messages successfully sent to the IoT Central application</td>
  </tr>
  <tr>
    <td>azure_dataexport.error_average, azure_dataexport.error_count, azure_dataexport.error_maximum, azure_dataexport.error_minimum, azure_dataexport.error_total</td>
    <td>Count</td>
    <td>Number of errors encountered for data export</td>
  </tr>
  <tr>
    <td>azure_dataexport.messages.filtered_average, azure_dataexport.messages.filtered_count, azure_dataexport.messages.filtered_maximum, azure_dataexport.messages.filtered_minimum, azure_dataexport.messages.filtered_total</td>
    <td>Count</td>
    <td>Number of messages that have passed through filters in data export</td>
  </tr>
  <tr>
    <td>azure_dataexport.messages.received_average, azure_dataexport.messages.received_count, azure_dataexport.messages.received_maximum, azure_dataexport.messages.received_minimum, azure_dataexport.messages.received_total</td>
    <td>Count</td>
    <td>Number of messages incoming to data export, before filtering and enrichment processing</td>
  </tr>
  <tr>
    <td>azure_dataexport.messages.written_average, azure_dataexport.messages.written_count, azure_dataexport.messages.written_maximum, azure_dataexport.messages.written_minimum, azure_dataexport.messages.written_total</td>
    <td>Count</td>
    <td>Number of messages written to a destination</td>
  </tr>
  <tr>
    <td>azure_dataexport.statuschange_average, azure_dataexport.statuschange_count, azure_dataexport.statuschange_maximum, azure_dataexport.statuschange_minimum, azure_dataexport.statuschange_total</td>
    <td>Count</td>
    <td>Number of status changes</td>
  </tr>
  <tr>
    <td>azure_devicedatausage_average, azure_devicedatausage_count, azure_devicedatausage_maximum, azure_devicedatausage_minimum, azure_devicedatausage_total</td>
    <td>Bytes</td>
    <td>Bytes transferred to and from any devices connected to IoT Central application</td>
  </tr>
  <tr>
    <td>azure_provisioneddevicecount_average, azure_provisioneddevicecount_count, azure_provisioneddevicecount_maximum, azure_provisioneddevicecount_minimum, azure_provisioneddevicecount_total</td>
    <td>Count</td>
    <td>Number of devices provisioned in IoT Central application</td>
  </tr>
</table>
