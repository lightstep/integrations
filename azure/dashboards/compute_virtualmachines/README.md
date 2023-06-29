---
title: Azure Microsoft.Compute/virtualMachines metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.Compute/virtualMachines metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.Compute/virtualMachines
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.Compute/virtualMachines, **PUT DESCRIPTION HERE**. 

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
    <td>azure_available_memory_bytes_average, azure_available_memory_bytes_count, azure_available_memory_bytes_maximum, azure_available_memory_bytes_minimum, azure_available_memory_bytes_total</td>
    <td>Bytes</td>
    <td>Amount of physical memory, in bytes, immediately available for allocation to a process or for system use in the Virtual Machine</td>
  </tr>
  <tr>
    <td>azure_cpu_credits_consumed_average, azure_cpu_credits_consumed_count, azure_cpu_credits_consumed_maximum, azure_cpu_credits_consumed_minimum, azure_cpu_credits_consumed_total</td>
    <td>Count</td>
    <td>Total number of credits consumed by the Virtual Machine. Only available on B-series burstable VMs</td>
  </tr>
  <tr>
    <td>azure_cpu_credits_remaining_average, azure_cpu_credits_remaining_count, azure_cpu_credits_remaining_maximum, azure_cpu_credits_remaining_minimum, azure_cpu_credits_remaining_total</td>
    <td>Count</td>
    <td>Total number of credits available to burst. Only available on B-series burstable VMs</td>
  </tr>
  <tr>
    <td>azure_data_disk_bandwidth_consumed_percentage_average, azure_data_disk_bandwidth_consumed_percentage_count, azure_data_disk_bandwidth_consumed_percentage_maximum, azure_data_disk_bandwidth_consumed_percentage_minimum, azure_data_disk_bandwidth_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of data disk bandwidth consumed per minute. Only available on VM series that support premium storage.</td>
  </tr>
  <tr>
    <td>azure_data_disk_iops_consumed_percentage_average, azure_data_disk_iops_consumed_percentage_count, azure_data_disk_iops_consumed_percentage_maximum, azure_data_disk_iops_consumed_percentage_minimum, azure_data_disk_iops_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of data disk I/Os consumed per minute. Only available on VM series that support premium storage.</td>
  </tr>
  <tr>
    <td>azure_data_disk_max_burst_bandwidth_average, azure_data_disk_max_burst_bandwidth_count, azure_data_disk_max_burst_bandwidth_maximum, azure_data_disk_max_burst_bandwidth_minimum, azure_data_disk_max_burst_bandwidth_total</td>
    <td>Count</td>
    <td>Maximum bytes per second throughput Data Disk can achieve with bursting</td>
  </tr>
  <tr>
    <td>azure_data_disk_max_burst_iops_average, azure_data_disk_max_burst_iops_count, azure_data_disk_max_burst_iops_maximum, azure_data_disk_max_burst_iops_minimum, azure_data_disk_max_burst_iops_total</td>
    <td>Count</td>
    <td>Maximum IOPS Data Disk can achieve with bursting</td>
  </tr>
  <tr>
    <td>azure_data_disk_queue_depth_average, azure_data_disk_queue_depth_count, azure_data_disk_queue_depth_maximum, azure_data_disk_queue_depth_minimum, azure_data_disk_queue_depth_total</td>
    <td>Count</td>
    <td>Data Disk Queue Depth(or Queue Length)</td>
  </tr>
  <tr>
    <td>azure_data_disk_read_bytes/sec_average, azure_data_disk_read_bytes/sec_count, azure_data_disk_read_bytes/sec_maximum, azure_data_disk_read_bytes/sec_minimum, azure_data_disk_read_bytes/sec_total</td>
    <td>BytesPerSecond</td>
    <td>Bytes/Sec read from a single disk during monitoring period</td>
  </tr>
  <tr>
    <td>azure_data_disk_read_operations/sec_average, azure_data_disk_read_operations/sec_count, azure_data_disk_read_operations/sec_maximum, azure_data_disk_read_operations/sec_minimum, azure_data_disk_read_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Read IOPS from a single disk during monitoring period</td>
  </tr>
  <tr>
    <td>azure_data_disk_target_bandwidth_average, azure_data_disk_target_bandwidth_count, azure_data_disk_target_bandwidth_maximum, azure_data_disk_target_bandwidth_minimum, azure_data_disk_target_bandwidth_total</td>
    <td>Count</td>
    <td>Baseline bytes per second throughput Data Disk can achieve without bursting</td>
  </tr>
  <tr>
    <td>azure_data_disk_target_iops_average, azure_data_disk_target_iops_count, azure_data_disk_target_iops_maximum, azure_data_disk_target_iops_minimum, azure_data_disk_target_iops_total</td>
    <td>Count</td>
    <td>Baseline IOPS Data Disk can achieve without bursting</td>
  </tr>
  <tr>
    <td>azure_data_disk_used_burst_bps_credits_percentage_average, azure_data_disk_used_burst_bps_credits_percentage_count, azure_data_disk_used_burst_bps_credits_percentage_maximum, azure_data_disk_used_burst_bps_credits_percentage_minimum, azure_data_disk_used_burst_bps_credits_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of Data Disk burst bandwidth credits used so far</td>
  </tr>
  <tr>
    <td>azure_data_disk_used_burst_io_credits_percentage_average, azure_data_disk_used_burst_io_credits_percentage_count, azure_data_disk_used_burst_io_credits_percentage_maximum, azure_data_disk_used_burst_io_credits_percentage_minimum, azure_data_disk_used_burst_io_credits_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of Data Disk burst I/O credits used so far</td>
  </tr>
  <tr>
    <td>azure_data_disk_write_bytes/sec_average, azure_data_disk_write_bytes/sec_count, azure_data_disk_write_bytes/sec_maximum, azure_data_disk_write_bytes/sec_minimum, azure_data_disk_write_bytes/sec_total</td>
    <td>BytesPerSecond</td>
    <td>Bytes/Sec written to a single disk during monitoring period</td>
  </tr>
  <tr>
    <td>azure_data_disk_write_operations/sec_average, azure_data_disk_write_operations/sec_count, azure_data_disk_write_operations/sec_maximum, azure_data_disk_write_operations/sec_minimum, azure_data_disk_write_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Write IOPS from a single disk during monitoring period</td>
  </tr>
  <tr>
    <td>azure_disk_read_bytes_average, azure_disk_read_bytes_count, azure_disk_read_bytes_maximum, azure_disk_read_bytes_minimum, azure_disk_read_bytes_total</td>
    <td>Bytes</td>
    <td>Bytes read from disk during monitoring period</td>
  </tr>
  <tr>
    <td>azure_disk_read_operations/sec_average, azure_disk_read_operations/sec_count, azure_disk_read_operations/sec_maximum, azure_disk_read_operations/sec_minimum, azure_disk_read_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Disk Read IOPS</td>
  </tr>
  <tr>
    <td>azure_disk_write_bytes_average, azure_disk_write_bytes_count, azure_disk_write_bytes_maximum, azure_disk_write_bytes_minimum, azure_disk_write_bytes_total</td>
    <td>Bytes</td>
    <td>Bytes written to disk during monitoring period</td>
  </tr>
  <tr>
    <td>azure_disk_write_operations/sec_average, azure_disk_write_operations/sec_count, azure_disk_write_operations/sec_maximum, azure_disk_write_operations/sec_minimum, azure_disk_write_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Disk Write IOPS</td>
  </tr>
  <tr>
    <td>azure_inbound_flows_average, azure_inbound_flows_count, azure_inbound_flows_maximum, azure_inbound_flows_minimum, azure_inbound_flows_total</td>
    <td>Count</td>
    <td>Inbound Flows are number of current flows in the inbound direction (traffic going into the VM)</td>
  </tr>
  <tr>
    <td>azure_inbound_flows_maximum_creation_rate_average, azure_inbound_flows_maximum_creation_rate_count, azure_inbound_flows_maximum_creation_rate_maximum, azure_inbound_flows_maximum_creation_rate_minimum, azure_inbound_flows_maximum_creation_rate_total</td>
    <td>CountPerSecond</td>
    <td>The maximum creation rate of inbound flows (traffic going into the VM)</td>
  </tr>
  <tr>
    <td>azure_network_in_average, azure_network_in_count, azure_network_in_maximum, azure_network_in_minimum, azure_network_in_total</td>
    <td>Bytes</td>
    <td>The number of billable bytes received on all network interfaces by the Virtual Machine(s) (Incoming Traffic) (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_network_in_total_average, azure_network_in_total_count, azure_network_in_total_maximum, azure_network_in_total_minimum, azure_network_in_total_total</td>
    <td>Bytes</td>
    <td>The number of bytes received on all network interfaces by the Virtual Machine(s) (Incoming Traffic)</td>
  </tr>
  <tr>
    <td>azure_network_out_average, azure_network_out_count, azure_network_out_maximum, azure_network_out_minimum, azure_network_out_total</td>
    <td>Bytes</td>
    <td>The number of billable bytes out on all network interfaces by the Virtual Machine(s) (Outgoing Traffic) (Deprecated)</td>
  </tr>
  <tr>
    <td>azure_network_out_total_average, azure_network_out_total_count, azure_network_out_total_maximum, azure_network_out_total_minimum, azure_network_out_total_total</td>
    <td>Bytes</td>
    <td>The number of bytes out on all network interfaces by the Virtual Machine(s) (Outgoing Traffic)</td>
  </tr>
  <tr>
    <td>azure_os_disk_bandwidth_consumed_percentage_average, azure_os_disk_bandwidth_consumed_percentage_count, azure_os_disk_bandwidth_consumed_percentage_maximum, azure_os_disk_bandwidth_consumed_percentage_minimum, azure_os_disk_bandwidth_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of operating system disk bandwidth consumed per minute. Only available on VM series that support premium storage.</td>
  </tr>
  <tr>
    <td>azure_os_disk_iops_consumed_percentage_average, azure_os_disk_iops_consumed_percentage_count, azure_os_disk_iops_consumed_percentage_maximum, azure_os_disk_iops_consumed_percentage_minimum, azure_os_disk_iops_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of operating system disk I/Os consumed per minute. Only available on VM series that support premium storage.</td>
  </tr>
  <tr>
    <td>azure_os_disk_max_burst_bandwidth_average, azure_os_disk_max_burst_bandwidth_count, azure_os_disk_max_burst_bandwidth_maximum, azure_os_disk_max_burst_bandwidth_minimum, azure_os_disk_max_burst_bandwidth_total</td>
    <td>Count</td>
    <td>Maximum bytes per second throughput OS Disk can achieve with bursting</td>
  </tr>
  <tr>
    <td>azure_os_disk_max_burst_iops_average, azure_os_disk_max_burst_iops_count, azure_os_disk_max_burst_iops_maximum, azure_os_disk_max_burst_iops_minimum, azure_os_disk_max_burst_iops_total</td>
    <td>Count</td>
    <td>Maximum IOPS OS Disk can achieve with bursting</td>
  </tr>
  <tr>
    <td>azure_os_disk_queue_depth_average, azure_os_disk_queue_depth_count, azure_os_disk_queue_depth_maximum, azure_os_disk_queue_depth_minimum, azure_os_disk_queue_depth_total</td>
    <td>Count</td>
    <td>OS Disk Queue Depth(or Queue Length)</td>
  </tr>
  <tr>
    <td>azure_os_disk_read_bytes/sec_average, azure_os_disk_read_bytes/sec_count, azure_os_disk_read_bytes/sec_maximum, azure_os_disk_read_bytes/sec_minimum, azure_os_disk_read_bytes/sec_total</td>
    <td>BytesPerSecond</td>
    <td>Bytes/Sec read from a single disk during monitoring period for OS disk</td>
  </tr>
  <tr>
    <td>azure_os_disk_read_operations/sec_average, azure_os_disk_read_operations/sec_count, azure_os_disk_read_operations/sec_maximum, azure_os_disk_read_operations/sec_minimum, azure_os_disk_read_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Read IOPS from a single disk during monitoring period for OS disk</td>
  </tr>
  <tr>
    <td>azure_os_disk_target_bandwidth_average, azure_os_disk_target_bandwidth_count, azure_os_disk_target_bandwidth_maximum, azure_os_disk_target_bandwidth_minimum, azure_os_disk_target_bandwidth_total</td>
    <td>Count</td>
    <td>Baseline bytes per second throughput OS Disk can achieve without bursting</td>
  </tr>
  <tr>
    <td>azure_os_disk_target_iops_average, azure_os_disk_target_iops_count, azure_os_disk_target_iops_maximum, azure_os_disk_target_iops_minimum, azure_os_disk_target_iops_total</td>
    <td>Count</td>
    <td>Baseline IOPS OS Disk can achieve without bursting</td>
  </tr>
  <tr>
    <td>azure_os_disk_used_burst_bps_credits_percentage_average, azure_os_disk_used_burst_bps_credits_percentage_count, azure_os_disk_used_burst_bps_credits_percentage_maximum, azure_os_disk_used_burst_bps_credits_percentage_minimum, azure_os_disk_used_burst_bps_credits_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of OS Disk burst bandwidth credits used so far</td>
  </tr>
  <tr>
    <td>azure_os_disk_used_burst_io_credits_percentage_average, azure_os_disk_used_burst_io_credits_percentage_count, azure_os_disk_used_burst_io_credits_percentage_maximum, azure_os_disk_used_burst_io_credits_percentage_minimum, azure_os_disk_used_burst_io_credits_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of OS Disk burst I/O credits used so far</td>
  </tr>
  <tr>
    <td>azure_os_disk_write_bytes/sec_average, azure_os_disk_write_bytes/sec_count, azure_os_disk_write_bytes/sec_maximum, azure_os_disk_write_bytes/sec_minimum, azure_os_disk_write_bytes/sec_total</td>
    <td>BytesPerSecond</td>
    <td>Bytes/Sec written to a single disk during monitoring period for OS disk</td>
  </tr>
  <tr>
    <td>azure_os_disk_write_operations/sec_average, azure_os_disk_write_operations/sec_count, azure_os_disk_write_operations/sec_maximum, azure_os_disk_write_operations/sec_minimum, azure_os_disk_write_operations/sec_total</td>
    <td>CountPerSecond</td>
    <td>Write IOPS from a single disk during monitoring period for OS disk</td>
  </tr>
  <tr>
    <td>azure_outbound_flows_average, azure_outbound_flows_count, azure_outbound_flows_maximum, azure_outbound_flows_minimum, azure_outbound_flows_total</td>
    <td>Count</td>
    <td>Outbound Flows are number of current flows in the outbound direction (traffic going out of the VM)</td>
  </tr>
  <tr>
    <td>azure_outbound_flows_maximum_creation_rate_average, azure_outbound_flows_maximum_creation_rate_count, azure_outbound_flows_maximum_creation_rate_maximum, azure_outbound_flows_maximum_creation_rate_minimum, azure_outbound_flows_maximum_creation_rate_total</td>
    <td>CountPerSecond</td>
    <td>The maximum creation rate of outbound flows (traffic going out of the VM)</td>
  </tr>
  <tr>
    <td>azure_percentage_cpu_average, azure_percentage_cpu_count, azure_percentage_cpu_maximum, azure_percentage_cpu_minimum, azure_percentage_cpu_total</td>
    <td>Percent</td>
    <td>The percentage of allocated compute units that are currently in use by the Virtual Machine(s)</td>
  </tr>
  <tr>
    <td>azure_premium_data_disk_cache_read_hit_average, azure_premium_data_disk_cache_read_hit_count, azure_premium_data_disk_cache_read_hit_maximum, azure_premium_data_disk_cache_read_hit_minimum, azure_premium_data_disk_cache_read_hit_total</td>
    <td>Percent</td>
    <td>Premium Data Disk Cache Read Hit</td>
  </tr>
  <tr>
    <td>azure_premium_data_disk_cache_read_miss_average, azure_premium_data_disk_cache_read_miss_count, azure_premium_data_disk_cache_read_miss_maximum, azure_premium_data_disk_cache_read_miss_minimum, azure_premium_data_disk_cache_read_miss_total</td>
    <td>Percent</td>
    <td>Premium Data Disk Cache Read Miss</td>
  </tr>
  <tr>
    <td>azure_premium_os_disk_cache_read_hit_average, azure_premium_os_disk_cache_read_hit_count, azure_premium_os_disk_cache_read_hit_maximum, azure_premium_os_disk_cache_read_hit_minimum, azure_premium_os_disk_cache_read_hit_total</td>
    <td>Percent</td>
    <td>Premium OS Disk Cache Read Hit</td>
  </tr>
  <tr>
    <td>azure_premium_os_disk_cache_read_miss_average, azure_premium_os_disk_cache_read_miss_count, azure_premium_os_disk_cache_read_miss_maximum, azure_premium_os_disk_cache_read_miss_minimum, azure_premium_os_disk_cache_read_miss_total</td>
    <td>Percent</td>
    <td>Premium OS Disk Cache Read Miss</td>
  </tr>
  <tr>
    <td>azure_vm_cached_bandwidth_consumed_percentage_average, azure_vm_cached_bandwidth_consumed_percentage_count, azure_vm_cached_bandwidth_consumed_percentage_maximum, azure_vm_cached_bandwidth_consumed_percentage_minimum, azure_vm_cached_bandwidth_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of cached disk bandwidth consumed by the VM. Only available on VM series that support premium storage.</td>
  </tr>
  <tr>
    <td>azure_vm_cached_iops_consumed_percentage_average, azure_vm_cached_iops_consumed_percentage_count, azure_vm_cached_iops_consumed_percentage_maximum, azure_vm_cached_iops_consumed_percentage_minimum, azure_vm_cached_iops_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of cached disk IOPS consumed by the VM. Only available on VM series that support premium storage.</td>
  </tr>
  <tr>
    <td>azure_vm_local_used_burst_bps_credits_percentage_average, azure_vm_local_used_burst_bps_credits_percentage_count, azure_vm_local_used_burst_bps_credits_percentage_maximum, azure_vm_local_used_burst_bps_credits_percentage_minimum, azure_vm_local_used_burst_bps_credits_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of Cached Burst BPS Credits used by the VM.</td>
  </tr>
  <tr>
    <td>azure_vm_local_used_burst_io_credits_percentage_average, azure_vm_local_used_burst_io_credits_percentage_count, azure_vm_local_used_burst_io_credits_percentage_maximum, azure_vm_local_used_burst_io_credits_percentage_minimum, azure_vm_local_used_burst_io_credits_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of Cached Burst IO Credits used by the VM.</td>
  </tr>
  <tr>
    <td>azure_vm_remote_used_burst_bps_credits_percentage_average, azure_vm_remote_used_burst_bps_credits_percentage_count, azure_vm_remote_used_burst_bps_credits_percentage_maximum, azure_vm_remote_used_burst_bps_credits_percentage_minimum, azure_vm_remote_used_burst_bps_credits_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of Uncached Burst BPS Credits used by the VM.</td>
  </tr>
  <tr>
    <td>azure_vm_remote_used_burst_io_credits_percentage_average, azure_vm_remote_used_burst_io_credits_percentage_count, azure_vm_remote_used_burst_io_credits_percentage_maximum, azure_vm_remote_used_burst_io_credits_percentage_minimum, azure_vm_remote_used_burst_io_credits_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of Uncached Burst IO Credits used by the VM.</td>
  </tr>
  <tr>
    <td>azure_vm_uncached_bandwidth_consumed_percentage_average, azure_vm_uncached_bandwidth_consumed_percentage_count, azure_vm_uncached_bandwidth_consumed_percentage_maximum, azure_vm_uncached_bandwidth_consumed_percentage_minimum, azure_vm_uncached_bandwidth_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of uncached disk bandwidth consumed by the VM. Only available on VM series that support premium storage.</td>
  </tr>
  <tr>
    <td>azure_vm_uncached_iops_consumed_percentage_average, azure_vm_uncached_iops_consumed_percentage_count, azure_vm_uncached_iops_consumed_percentage_maximum, azure_vm_uncached_iops_consumed_percentage_minimum, azure_vm_uncached_iops_consumed_percentage_total</td>
    <td>Percent</td>
    <td>Percentage of uncached disk IOPS consumed by the VM. Only available on VM series that support premium storage.</td>
  </tr>
  <tr>
    <td>azure_vmavailabilitymetric_average, azure_vmavailabilitymetric_count, azure_vmavailabilitymetric_maximum, azure_vmavailabilitymetric_minimum, azure_vmavailabilitymetric_total</td>
    <td>Count</td>
    <td>Measure of Availability of Virtual machines over time.</td>
  </tr>
</table>
