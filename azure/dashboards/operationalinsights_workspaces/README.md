---
title: Azure Microsoft.OperationalInsights/workspaces metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.OperationalInsights/workspaces metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.OperationalInsights/workspaces
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.OperationalInsights/workspaces, **PUT DESCRIPTION HERE**. 

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
    <td>azure_availabilityrate_query_average, azure_availabilityrate_query_count, azure_availabilityrate_query_maximum, azure_availabilityrate_query_minimum, azure_availabilityrate_query_total</td>
    <td>Percent</td>
    <td>User query success rate for this workspace.</td>
  </tr>
  <tr>
    <td>azure_average_%_available_memory_average, azure_average_%_available_memory_count, azure_average_%_available_memory_maximum, azure_average_%_available_memory_minimum, azure_average_%_available_memory_total</td>
    <td>Count</td>
    <td>Average_% Available Memory. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_available_swap_space_average, azure_average_%_available_swap_space_count, azure_average_%_available_swap_space_maximum, azure_average_%_available_swap_space_minimum, azure_average_%_available_swap_space_total</td>
    <td>Count</td>
    <td>Average_% Available Swap Space. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_committed_bytes_in_use_average, azure_average_%_committed_bytes_in_use_count, azure_average_%_committed_bytes_in_use_maximum, azure_average_%_committed_bytes_in_use_minimum, azure_average_%_committed_bytes_in_use_total</td>
    <td>Count</td>
    <td>Average_% Committed Bytes In Use. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_dpc_time_average, azure_average_%_dpc_time_count, azure_average_%_dpc_time_maximum, azure_average_%_dpc_time_minimum, azure_average_%_dpc_time_total</td>
    <td>Count</td>
    <td>Average_% DPC Time. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_free_inodes_average, azure_average_%_free_inodes_count, azure_average_%_free_inodes_maximum, azure_average_%_free_inodes_minimum, azure_average_%_free_inodes_total</td>
    <td>Count</td>
    <td>Average_% Free Inodes. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_free_space_average, azure_average_%_free_space_count, azure_average_%_free_space_maximum, azure_average_%_free_space_minimum, azure_average_%_free_space_total</td>
    <td>Count</td>
    <td>Average_% Free Space. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_idle_time_average, azure_average_%_idle_time_count, azure_average_%_idle_time_maximum, azure_average_%_idle_time_minimum, azure_average_%_idle_time_total</td>
    <td>Count</td>
    <td>Average_% Idle Time. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_interrupt_time_average, azure_average_%_interrupt_time_count, azure_average_%_interrupt_time_maximum, azure_average_%_interrupt_time_minimum, azure_average_%_interrupt_time_total</td>
    <td>Count</td>
    <td>Average_% Interrupt Time. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_io_wait_time_average, azure_average_%_io_wait_time_count, azure_average_%_io_wait_time_maximum, azure_average_%_io_wait_time_minimum, azure_average_%_io_wait_time_total</td>
    <td>Count</td>
    <td>Average_% IO Wait Time. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_nice_time_average, azure_average_%_nice_time_count, azure_average_%_nice_time_maximum, azure_average_%_nice_time_minimum, azure_average_%_nice_time_total</td>
    <td>Count</td>
    <td>Average_% Nice Time. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_privileged_time_average, azure_average_%_privileged_time_count, azure_average_%_privileged_time_maximum, azure_average_%_privileged_time_minimum, azure_average_%_privileged_time_total</td>
    <td>Count</td>
    <td>Average_% Privileged Time. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_processor_time_average, azure_average_%_processor_time_count, azure_average_%_processor_time_maximum, azure_average_%_processor_time_minimum, azure_average_%_processor_time_total</td>
    <td>Count</td>
    <td>Average_% Processor Time. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_used_inodes_average, azure_average_%_used_inodes_count, azure_average_%_used_inodes_maximum, azure_average_%_used_inodes_minimum, azure_average_%_used_inodes_total</td>
    <td>Count</td>
    <td>Average_% Used Inodes. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_used_memory_average, azure_average_%_used_memory_count, azure_average_%_used_memory_maximum, azure_average_%_used_memory_minimum, azure_average_%_used_memory_total</td>
    <td>Count</td>
    <td>Average_% Used Memory. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_used_space_average, azure_average_%_used_space_count, azure_average_%_used_space_maximum, azure_average_%_used_space_minimum, azure_average_%_used_space_total</td>
    <td>Count</td>
    <td>Average_% Used Space. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_used_swap_space_average, azure_average_%_used_swap_space_count, azure_average_%_used_swap_space_maximum, azure_average_%_used_swap_space_minimum, azure_average_%_used_swap_space_total</td>
    <td>Count</td>
    <td>Average_% Used Swap Space. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_%_user_time_average, azure_average_%_user_time_count, azure_average_%_user_time_maximum, azure_average_%_user_time_minimum, azure_average_%_user_time_total</td>
    <td>Count</td>
    <td>Average_% User Time. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_available_mbytes_average, azure_average_available_mbytes_count, azure_average_available_mbytes_maximum, azure_average_available_mbytes_minimum, azure_average_available_mbytes_total</td>
    <td>Count</td>
    <td>Average_Available MBytes. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_available_mbytes_memory_average, azure_average_available_mbytes_memory_count, azure_average_available_mbytes_memory_maximum, azure_average_available_mbytes_memory_minimum, azure_average_available_mbytes_memory_total</td>
    <td>Count</td>
    <td>Average_Available MBytes Memory. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_available_mbytes_swap_average, azure_average_available_mbytes_swap_count, azure_average_available_mbytes_swap_maximum, azure_average_available_mbytes_swap_minimum, azure_average_available_mbytes_swap_total</td>
    <td>Count</td>
    <td>Average_Available MBytes Swap. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_avg._disk_sec/read_average, azure_average_avg._disk_sec/read_count, azure_average_avg._disk_sec/read_maximum, azure_average_avg._disk_sec/read_minimum, azure_average_avg._disk_sec/read_total</td>
    <td>Count</td>
    <td>Average_Avg. Disk sec/Read. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_avg._disk_sec/transfer_average, azure_average_avg._disk_sec/transfer_count, azure_average_avg._disk_sec/transfer_maximum, azure_average_avg._disk_sec/transfer_minimum, azure_average_avg._disk_sec/transfer_total</td>
    <td>Count</td>
    <td>Average_Avg. Disk sec/Transfer. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_avg._disk_sec/write_average, azure_average_avg._disk_sec/write_count, azure_average_avg._disk_sec/write_maximum, azure_average_avg._disk_sec/write_minimum, azure_average_avg._disk_sec/write_total</td>
    <td>Count</td>
    <td>Average_Avg. Disk sec/Write. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_bytes_received/sec_average, azure_average_bytes_received/sec_count, azure_average_bytes_received/sec_maximum, azure_average_bytes_received/sec_minimum, azure_average_bytes_received/sec_total</td>
    <td>Count</td>
    <td>Average_Bytes Received/sec. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_bytes_sent/sec_average, azure_average_bytes_sent/sec_count, azure_average_bytes_sent/sec_maximum, azure_average_bytes_sent/sec_minimum, azure_average_bytes_sent/sec_total</td>
    <td>Count</td>
    <td>Average_Bytes Sent/sec. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_bytes_total/sec_average, azure_average_bytes_total/sec_count, azure_average_bytes_total/sec_maximum, azure_average_bytes_total/sec_minimum, azure_average_bytes_total/sec_total</td>
    <td>Count</td>
    <td>Average_Bytes Total/sec. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_current_disk_queue_length_average, azure_average_current_disk_queue_length_count, azure_average_current_disk_queue_length_maximum, azure_average_current_disk_queue_length_minimum, azure_average_current_disk_queue_length_total</td>
    <td>Count</td>
    <td>Average_Current Disk Queue Length. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_disk_read_bytes/sec_average, azure_average_disk_read_bytes/sec_count, azure_average_disk_read_bytes/sec_maximum, azure_average_disk_read_bytes/sec_minimum, azure_average_disk_read_bytes/sec_total</td>
    <td>Count</td>
    <td>Average_Disk Read Bytes/sec. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_disk_reads/sec_average, azure_average_disk_reads/sec_count, azure_average_disk_reads/sec_maximum, azure_average_disk_reads/sec_minimum, azure_average_disk_reads/sec_total</td>
    <td>Count</td>
    <td>Average_Disk Reads/sec. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_disk_transfers/sec_average, azure_average_disk_transfers/sec_count, azure_average_disk_transfers/sec_maximum, azure_average_disk_transfers/sec_minimum, azure_average_disk_transfers/sec_total</td>
    <td>Count</td>
    <td>Average_Disk Transfers/sec. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_disk_write_bytes/sec_average, azure_average_disk_write_bytes/sec_count, azure_average_disk_write_bytes/sec_maximum, azure_average_disk_write_bytes/sec_minimum, azure_average_disk_write_bytes/sec_total</td>
    <td>Count</td>
    <td>Average_Disk Write Bytes/sec. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_disk_writes/sec_average, azure_average_disk_writes/sec_count, azure_average_disk_writes/sec_maximum, azure_average_disk_writes/sec_minimum, azure_average_disk_writes/sec_total</td>
    <td>Count</td>
    <td>Average_Disk Writes/sec. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_free_megabytes_average, azure_average_free_megabytes_count, azure_average_free_megabytes_maximum, azure_average_free_megabytes_minimum, azure_average_free_megabytes_total</td>
    <td>Count</td>
    <td>Average_Free Megabytes. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_free_physical_memory_average, azure_average_free_physical_memory_count, azure_average_free_physical_memory_maximum, azure_average_free_physical_memory_minimum, azure_average_free_physical_memory_total</td>
    <td>Count</td>
    <td>Average_Free Physical Memory. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_free_space_in_paging_files_average, azure_average_free_space_in_paging_files_count, azure_average_free_space_in_paging_files_maximum, azure_average_free_space_in_paging_files_minimum, azure_average_free_space_in_paging_files_total</td>
    <td>Count</td>
    <td>Average_Free Space in Paging Files. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_free_virtual_memory_average, azure_average_free_virtual_memory_count, azure_average_free_virtual_memory_maximum, azure_average_free_virtual_memory_minimum, azure_average_free_virtual_memory_total</td>
    <td>Count</td>
    <td>Average_Free Virtual Memory. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_logical_disk_bytes/sec_average, azure_average_logical_disk_bytes/sec_count, azure_average_logical_disk_bytes/sec_maximum, azure_average_logical_disk_bytes/sec_minimum, azure_average_logical_disk_bytes/sec_total</td>
    <td>Count</td>
    <td>Average_Logical Disk Bytes/sec. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_page_reads/sec_average, azure_average_page_reads/sec_count, azure_average_page_reads/sec_maximum, azure_average_page_reads/sec_minimum, azure_average_page_reads/sec_total</td>
    <td>Count</td>
    <td>Average_Page Reads/sec. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_page_writes/sec_average, azure_average_page_writes/sec_count, azure_average_page_writes/sec_maximum, azure_average_page_writes/sec_minimum, azure_average_page_writes/sec_total</td>
    <td>Count</td>
    <td>Average_Page Writes/sec. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_pages/sec_average, azure_average_pages/sec_count, azure_average_pages/sec_maximum, azure_average_pages/sec_minimum, azure_average_pages/sec_total</td>
    <td>Count</td>
    <td>Average_Pages/sec. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_pct_privileged_time_average, azure_average_pct_privileged_time_count, azure_average_pct_privileged_time_maximum, azure_average_pct_privileged_time_minimum, azure_average_pct_privileged_time_total</td>
    <td>Count</td>
    <td>Average_Pct Privileged Time. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_pct_user_time_average, azure_average_pct_user_time_count, azure_average_pct_user_time_maximum, azure_average_pct_user_time_minimum, azure_average_pct_user_time_total</td>
    <td>Count</td>
    <td>Average_Pct User Time. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_physical_disk_bytes/sec_average, azure_average_physical_disk_bytes/sec_count, azure_average_physical_disk_bytes/sec_maximum, azure_average_physical_disk_bytes/sec_minimum, azure_average_physical_disk_bytes/sec_total</td>
    <td>Count</td>
    <td>Average_Physical Disk Bytes/sec. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_processes_average, azure_average_processes_count, azure_average_processes_maximum, azure_average_processes_minimum, azure_average_processes_total</td>
    <td>Count</td>
    <td>Average_Processes. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_processor_queue_length_average, azure_average_processor_queue_length_count, azure_average_processor_queue_length_maximum, azure_average_processor_queue_length_minimum, azure_average_processor_queue_length_total</td>
    <td>Count</td>
    <td>Average_Processor Queue Length. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_size_stored_in_paging_files_average, azure_average_size_stored_in_paging_files_count, azure_average_size_stored_in_paging_files_maximum, azure_average_size_stored_in_paging_files_minimum, azure_average_size_stored_in_paging_files_total</td>
    <td>Count</td>
    <td>Average_Size Stored In Paging Files. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_total_bytes_average, azure_average_total_bytes_count, azure_average_total_bytes_maximum, azure_average_total_bytes_minimum, azure_average_total_bytes_total</td>
    <td>Count</td>
    <td>Average_Total Bytes. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_total_bytes_received_average, azure_average_total_bytes_received_count, azure_average_total_bytes_received_maximum, azure_average_total_bytes_received_minimum, azure_average_total_bytes_received_total</td>
    <td>Count</td>
    <td>Average_Total Bytes Received. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_total_bytes_transmitted_average, azure_average_total_bytes_transmitted_count, azure_average_total_bytes_transmitted_maximum, azure_average_total_bytes_transmitted_minimum, azure_average_total_bytes_transmitted_total</td>
    <td>Count</td>
    <td>Average_Total Bytes Transmitted. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_total_collisions_average, azure_average_total_collisions_count, azure_average_total_collisions_maximum, azure_average_total_collisions_minimum, azure_average_total_collisions_total</td>
    <td>Count</td>
    <td>Average_Total Collisions. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_total_packets_received_average, azure_average_total_packets_received_count, azure_average_total_packets_received_maximum, azure_average_total_packets_received_minimum, azure_average_total_packets_received_total</td>
    <td>Count</td>
    <td>Average_Total Packets Received. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_total_packets_transmitted_average, azure_average_total_packets_transmitted_count, azure_average_total_packets_transmitted_maximum, azure_average_total_packets_transmitted_minimum, azure_average_total_packets_transmitted_total</td>
    <td>Count</td>
    <td>Average_Total Packets Transmitted. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_total_rx_errors_average, azure_average_total_rx_errors_count, azure_average_total_rx_errors_maximum, azure_average_total_rx_errors_minimum, azure_average_total_rx_errors_total</td>
    <td>Count</td>
    <td>Average_Total Rx Errors. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_total_tx_errors_average, azure_average_total_tx_errors_count, azure_average_total_tx_errors_maximum, azure_average_total_tx_errors_minimum, azure_average_total_tx_errors_total</td>
    <td>Count</td>
    <td>Average_Total Tx Errors. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_uptime_average, azure_average_uptime_count, azure_average_uptime_maximum, azure_average_uptime_minimum, azure_average_uptime_total</td>
    <td>Count</td>
    <td>Average_Uptime. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_used_mbytes_swap_space_average, azure_average_used_mbytes_swap_space_count, azure_average_used_mbytes_swap_space_maximum, azure_average_used_mbytes_swap_space_minimum, azure_average_used_mbytes_swap_space_total</td>
    <td>Count</td>
    <td>. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_used_memory_kbytes_average, azure_average_used_memory_kbytes_count, azure_average_used_memory_kbytes_maximum, azure_average_used_memory_kbytes_minimum, azure_average_used_memory_kbytes_total</td>
    <td>Count</td>
    <td>Average_Used Memory kBytes. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_used_memory_mbytes_average, azure_average_used_memory_mbytes_count, azure_average_used_memory_mbytes_maximum, azure_average_used_memory_mbytes_minimum, azure_average_used_memory_mbytes_total</td>
    <td>Count</td>
    <td>Average_Used Memory MBytes. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_users_average, azure_average_users_count, azure_average_users_maximum, azure_average_users_minimum, azure_average_users_total</td>
    <td>Count</td>
    <td>Average_Users. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_average_virtual_shared_memory_average, azure_average_virtual_shared_memory_count, azure_average_virtual_shared_memory_maximum, azure_average_virtual_shared_memory_minimum, azure_average_virtual_shared_memory_total</td>
    <td>Count</td>
    <td>Average_Virtual Shared Memory. Supported for: Linux. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_event_average, azure_event_count, azure_event_maximum, azure_event_minimum, azure_event_total</td>
    <td>Count</td>
    <td>Event. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_heartbeat_average, azure_heartbeat_count, azure_heartbeat_maximum, azure_heartbeat_minimum, azure_heartbeat_total</td>
    <td>Count</td>
    <td>Heartbeat. Supported for: Linux, Windows. Part of metric alerts for logs feature.</td>
  </tr>
  <tr>
    <td>azure_query_count_average, azure_query_count_count, azure_query_count_maximum, azure_query_count_minimum, azure_query_count_total</td>
    <td>Count</td>
    <td>Total number of user queries for this workspace.</td>
  </tr>
  <tr>
    <td>azure_query_failure_count_average, azure_query_failure_count_count, azure_query_failure_count_maximum, azure_query_failure_count_minimum, azure_query_failure_count_total</td>
    <td>Count</td>
    <td>Total number of failed user queries for this workspace.</td>
  </tr>
  <tr>
    <td>azure_update_average, azure_update_count, azure_update_maximum, azure_update_minimum, azure_update_total</td>
    <td>Count</td>
    <td>Update. Supported for: Windows. Part of metric alerts for logs feature.</td>
  </tr>
</table>
