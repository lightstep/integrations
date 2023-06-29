---
title: Azure Microsoft.NetworkCloud/storageAppliances metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.NetworkCloud/storageAppliances metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.NetworkCloud/storageAppliances
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.NetworkCloud/storageAppliances, **PUT DESCRIPTION HERE**. 

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
    <td>azure_purefaalertstotal_average, azure_purefaalertstotal_count, azure_purefaalertstotal_maximum, azure_purefaalertstotal_minimum, azure_purefaalertstotal_total</td>
    <td>Count</td>
    <td>Number of alert events</td>
  </tr>
  <tr>
    <td>azure_purefaarrayperformanceavgblockbytes_average, azure_purefaarrayperformanceavgblockbytes_count, azure_purefaarrayperformanceavgblockbytes_maximum, azure_purefaarrayperformanceavgblockbytes_minimum, azure_purefaarrayperformanceavgblockbytes_total</td>
    <td>Bytes</td>
    <td>Average block size</td>
  </tr>
  <tr>
    <td>azure_purefaarrayperformancebandwidthbytes_average, azure_purefaarrayperformancebandwidthbytes_count, azure_purefaarrayperformancebandwidthbytes_maximum, azure_purefaarrayperformancebandwidthbytes_minimum, azure_purefaarrayperformancebandwidthbytes_total</td>
    <td>Bytes</td>
    <td>Array throughput in bytes per second</td>
  </tr>
  <tr>
    <td>azure_purefaarrayperformanceiops_average, azure_purefaarrayperformanceiops_count, azure_purefaarrayperformanceiops_maximum, azure_purefaarrayperformanceiops_minimum, azure_purefaarrayperformanceiops_total</td>
    <td>Count</td>
    <td>Storage array IOPS</td>
  </tr>
  <tr>
    <td>azure_purefaarrayperformancelatencyusec_average, azure_purefaarrayperformancelatencyusec_count, azure_purefaarrayperformancelatencyusec_maximum, azure_purefaarrayperformancelatencyusec_minimum, azure_purefaarrayperformancelatencyusec_total</td>
    <td>MilliSeconds</td>
    <td>Storage array latency in microseconds</td>
  </tr>
  <tr>
    <td>azure_purefaarrayperformanceqdepth_average, azure_purefaarrayperformanceqdepth_count, azure_purefaarrayperformanceqdepth_maximum, azure_purefaarrayperformanceqdepth_minimum, azure_purefaarrayperformanceqdepth_total</td>
    <td>Bytes</td>
    <td>Storage array queue depth</td>
  </tr>
  <tr>
    <td>azure_purefaarrayspacecapacitybytes_average, azure_purefaarrayspacecapacitybytes_count, azure_purefaarrayspacecapacitybytes_maximum, azure_purefaarrayspacecapacitybytes_minimum, azure_purefaarrayspacecapacitybytes_total</td>
    <td>Bytes</td>
    <td>Storage array overall space capacity</td>
  </tr>
  <tr>
    <td>azure_purefaarrayspacedatareductionratio_average, azure_purefaarrayspacedatareductionratio_count, azure_purefaarrayspacedatareductionratio_maximum, azure_purefaarrayspacedatareductionratio_minimum, azure_purefaarrayspacedatareductionratio_total</td>
    <td>Percent</td>
    <td>Storage array overall data reduction</td>
  </tr>
  <tr>
    <td>azure_purefaarrayspaceprovisionedbytes_average, azure_purefaarrayspaceprovisionedbytes_count, azure_purefaarrayspaceprovisionedbytes_maximum, azure_purefaarrayspaceprovisionedbytes_minimum, azure_purefaarrayspaceprovisionedbytes_total</td>
    <td>Bytes</td>
    <td>Storage array overall provisioned space</td>
  </tr>
  <tr>
    <td>azure_purefaarrayspaceusedbytes_average, azure_purefaarrayspaceusedbytes_count, azure_purefaarrayspaceusedbytes_maximum, azure_purefaarrayspaceusedbytes_minimum, azure_purefaarrayspaceusedbytes_total</td>
    <td>Bytes</td>
    <td>Storage Array overall used space</td>
  </tr>
  <tr>
    <td>azure_purefahardwarecomponenthealth_average, azure_purefahardwarecomponenthealth_count, azure_purefahardwarecomponenthealth_maximum, azure_purefahardwarecomponenthealth_minimum, azure_purefahardwarecomponenthealth_total</td>
    <td>Count</td>
    <td>Storage array hardware component health status</td>
  </tr>
  <tr>
    <td>azure_purefahardwarepowervolts_average, azure_purefahardwarepowervolts_count, azure_purefahardwarepowervolts_maximum, azure_purefahardwarepowervolts_minimum, azure_purefahardwarepowervolts_total</td>
    <td>Unspecified</td>
    <td>Storage array hardware power supply voltage</td>
  </tr>
  <tr>
    <td>azure_purefahardwaretemperaturecelsius_average, azure_purefahardwaretemperaturecelsius_count, azure_purefahardwaretemperaturecelsius_maximum, azure_purefahardwaretemperaturecelsius_minimum, azure_purefahardwaretemperaturecelsius_total</td>
    <td>Unspecified</td>
    <td>Storage array hardware temperature sensors</td>
  </tr>
  <tr>
    <td>azure_purefahostperformancebandwidthbytes_average, azure_purefahostperformancebandwidthbytes_count, azure_purefahostperformancebandwidthbytes_maximum, azure_purefahostperformancebandwidthbytes_minimum, azure_purefahostperformancebandwidthbytes_total</td>
    <td>Bytes</td>
    <td>Storage array host bandwidth in bytes per second</td>
  </tr>
  <tr>
    <td>azure_purefahostperformanceiops_average, azure_purefahostperformanceiops_count, azure_purefahostperformanceiops_maximum, azure_purefahostperformanceiops_minimum, azure_purefahostperformanceiops_total</td>
    <td>Count</td>
    <td>Storage array host IOPS</td>
  </tr>
  <tr>
    <td>azure_purefahostperformancelatencyusec_average, azure_purefahostperformancelatencyusec_count, azure_purefahostperformancelatencyusec_maximum, azure_purefahostperformancelatencyusec_minimum, azure_purefahostperformancelatencyusec_total</td>
    <td>MilliSeconds</td>
    <td>Storage array host latency in microseconds</td>
  </tr>
  <tr>
    <td>azure_purefahostspacebytes_average, azure_purefahostspacebytes_count, azure_purefahostspacebytes_maximum, azure_purefahostspacebytes_minimum, azure_purefahostspacebytes_total</td>
    <td>Bytes</td>
    <td>Storage array host space in bytes</td>
  </tr>
  <tr>
    <td>azure_purefahostspacedatareductionratio_average, azure_purefahostspacedatareductionratio_count, azure_purefahostspacedatareductionratio_maximum, azure_purefahostspacedatareductionratio_minimum, azure_purefahostspacedatareductionratio_total</td>
    <td>Percent</td>
    <td>Storage array host volumes data reduction ratio</td>
  </tr>
  <tr>
    <td>azure_purefahostspacesizebytes_average, azure_purefahostspacesizebytes_count, azure_purefahostspacesizebytes_maximum, azure_purefahostspacesizebytes_minimum, azure_purefahostspacesizebytes_total</td>
    <td>Bytes</td>
    <td>Storage array host volumes size</td>
  </tr>
  <tr>
    <td>azure_purefainfo_average, azure_purefainfo_count, azure_purefainfo_maximum, azure_purefainfo_minimum, azure_purefainfo_total</td>
    <td>Unspecified</td>
    <td>Storage array system information</td>
  </tr>
  <tr>
    <td>azure_purefavolumeperformanceiops_average, azure_purefavolumeperformanceiops_count, azure_purefavolumeperformanceiops_maximum, azure_purefavolumeperformanceiops_minimum, azure_purefavolumeperformanceiops_total</td>
    <td>Count</td>
    <td>Storage array volume IOPS</td>
  </tr>
  <tr>
    <td>azure_purefavolumeperformancelatencyusec_average, azure_purefavolumeperformancelatencyusec_count, azure_purefavolumeperformancelatencyusec_maximum, azure_purefavolumeperformancelatencyusec_minimum, azure_purefavolumeperformancelatencyusec_total</td>
    <td>MilliSeconds</td>
    <td>Storage array volume latency in microseconds</td>
  </tr>
  <tr>
    <td>azure_purefavolumeperformancethroughputbytes_average, azure_purefavolumeperformancethroughputbytes_count, azure_purefavolumeperformancethroughputbytes_maximum, azure_purefavolumeperformancethroughputbytes_minimum, azure_purefavolumeperformancethroughputbytes_total</td>
    <td>Bytes</td>
    <td>Storage array volume throughput</td>
  </tr>
  <tr>
    <td>azure_purefavolumespacebytes_average, azure_purefavolumespacebytes_count, azure_purefavolumespacebytes_maximum, azure_purefavolumespacebytes_minimum, azure_purefavolumespacebytes_total</td>
    <td>Bytes</td>
    <td>Storage array volume space in bytes</td>
  </tr>
  <tr>
    <td>azure_purefavolumespacedatareductionratio_average, azure_purefavolumespacedatareductionratio_count, azure_purefavolumespacedatareductionratio_maximum, azure_purefavolumespacedatareductionratio_minimum, azure_purefavolumespacedatareductionratio_total</td>
    <td>Percent</td>
    <td>Storage array overall data reduction</td>
  </tr>
  <tr>
    <td>azure_purefavolumespacesizebytes_average, azure_purefavolumespacesizebytes_count, azure_purefavolumespacesizebytes_maximum, azure_purefavolumespacesizebytes_minimum, azure_purefavolumespacesizebytes_total</td>
    <td>Bytes</td>
    <td>Storage array volumes size</td>
  </tr>
</table>
