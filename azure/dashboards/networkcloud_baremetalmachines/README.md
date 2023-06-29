---
title: Azure Microsoft.NetworkCloud/bareMetalMachines metrics
date: 2023-06-29 00:00:00
canonical_url:
description: See the Azure Microsoft.NetworkCloud/bareMetalMachines metrics ingested by Lightstep Observability
image: /images/ui/post-placeholder.jpg
tags:
  - Monitoring
  - Performance
  - Metrics
  - Azure
azure_int: Microsoft.NetworkCloud/bareMetalMachines
authors:
  - otel-team
layout: table
cards:
  - topic_item: /docs/setup-azure-for-metrics
  - topic_item: /docs/create-and-manage-dashboards
  - topic_item: /docs/create-alerts
---
Once you've integrated with [Azure Monitor](/docs/setup-azure-for-metrics), you have access to all metrics for Microsoft.NetworkCloud/bareMetalMachines, **PUT DESCRIPTION HERE**. 

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
    <td>azure_hostboottimeseconds_average, azure_hostboottimeseconds_count, azure_hostboottimeseconds_maximum, azure_hostboottimeseconds_minimum, azure_hostboottimeseconds_total</td>
    <td>Seconds</td>
    <td>Unix time of last boot</td>
  </tr>
  <tr>
    <td>azure_hostdiskreadcompleted_average, azure_hostdiskreadcompleted_count, azure_hostdiskreadcompleted_maximum, azure_hostdiskreadcompleted_minimum, azure_hostdiskreadcompleted_total</td>
    <td>Count</td>
    <td>Disk reads completed by node</td>
  </tr>
  <tr>
    <td>azure_hostdiskreadseconds_average, azure_hostdiskreadseconds_count, azure_hostdiskreadseconds_maximum, azure_hostdiskreadseconds_minimum, azure_hostdiskreadseconds_total</td>
    <td>Seconds</td>
    <td>Disk read time by node</td>
  </tr>
  <tr>
    <td>azure_hostdiskwritecompleted_average, azure_hostdiskwritecompleted_count, azure_hostdiskwritecompleted_maximum, azure_hostdiskwritecompleted_minimum, azure_hostdiskwritecompleted_total</td>
    <td>Count</td>
    <td>Disk writes completed by node</td>
  </tr>
  <tr>
    <td>azure_hostdiskwriteseconds_average, azure_hostdiskwriteseconds_count, azure_hostdiskwriteseconds_maximum, azure_hostdiskwriteseconds_minimum, azure_hostdiskwriteseconds_total</td>
    <td>Seconds</td>
    <td>Disk write time by node</td>
  </tr>
  <tr>
    <td>azure_hostdmiinfo_average, azure_hostdmiinfo_count, azure_hostdmiinfo_maximum, azure_hostdmiinfo_minimum, azure_hostdmiinfo_total</td>
    <td>Unspecified</td>
    <td>Host Desktop Management Interface (DMI) environment information</td>
  </tr>
  <tr>
    <td>azure_hostentropyavailablebits_average, azure_hostentropyavailablebits_count, azure_hostentropyavailablebits_maximum, azure_hostentropyavailablebits_minimum, azure_hostentropyavailablebits_total</td>
    <td>Count</td>
    <td>Available bits in node entropy</td>
  </tr>
  <tr>
    <td>azure_hostfilesystemavailbytes_average, azure_hostfilesystemavailbytes_count, azure_hostfilesystemavailbytes_maximum, azure_hostfilesystemavailbytes_minimum, azure_hostfilesystemavailbytes_total</td>
    <td>Count</td>
    <td>Available filesystem size by node</td>
  </tr>
  <tr>
    <td>azure_hostfilesystemdeviceerror_average, azure_hostfilesystemdeviceerror_count, azure_hostfilesystemdeviceerror_maximum, azure_hostfilesystemdeviceerror_minimum, azure_hostfilesystemdeviceerror_total</td>
    <td>Count</td>
    <td>Indicates if there was a problem getting information for the filesystem</td>
  </tr>
  <tr>
    <td>azure_hostfilesystemfiles_average, azure_hostfilesystemfiles_count, azure_hostfilesystemfiles_maximum, azure_hostfilesystemfiles_minimum, azure_hostfilesystemfiles_total</td>
    <td>Count</td>
    <td>Total number of permitted inodes</td>
  </tr>
  <tr>
    <td>azure_hostfilesystemfilesfree_average, azure_hostfilesystemfilesfree_count, azure_hostfilesystemfilesfree_maximum, azure_hostfilesystemfilesfree_minimum, azure_hostfilesystemfilesfree_total</td>
    <td>Count</td>
    <td>Total number of free inodes</td>
  </tr>
  <tr>
    <td>azure_hostfilesystemreadonly_average, azure_hostfilesystemreadonly_count, azure_hostfilesystemreadonly_maximum, azure_hostfilesystemreadonly_minimum, azure_hostfilesystemreadonly_total</td>
    <td>Unspecified</td>
    <td>Indicates if the filesystem is readonly</td>
  </tr>
  <tr>
    <td>azure_hostfilesystemsizebytes_average, azure_hostfilesystemsizebytes_count, azure_hostfilesystemsizebytes_maximum, azure_hostfilesystemsizebytes_minimum, azure_hostfilesystemsizebytes_total</td>
    <td>Count</td>
    <td>Filesystem size by node</td>
  </tr>
  <tr>
    <td>azure_hosthwmontempcelsius_average, azure_hosthwmontempcelsius_count, azure_hosthwmontempcelsius_maximum, azure_hosthwmontempcelsius_minimum, azure_hosthwmontempcelsius_total</td>
    <td>Count</td>
    <td>Hardware monitor for temperature (celsius)</td>
  </tr>
  <tr>
    <td>azure_hosthwmontempmax_average, azure_hosthwmontempmax_count, azure_hosthwmontempmax_maximum, azure_hosthwmontempmax_minimum, azure_hosthwmontempmax_total</td>
    <td>Count</td>
    <td>Hardware monitor for maximum temperature (celsius)</td>
  </tr>
  <tr>
    <td>azure_hostload1_average, azure_hostload1_count, azure_hostload1_maximum, azure_hostload1_minimum, azure_hostload1_total</td>
    <td>Count</td>
    <td>1 minute load average</td>
  </tr>
  <tr>
    <td>azure_hostload15_average, azure_hostload15_count, azure_hostload15_maximum, azure_hostload15_minimum, azure_hostload15_total</td>
    <td>Count</td>
    <td>15 minute load average</td>
  </tr>
  <tr>
    <td>azure_hostload5_average, azure_hostload5_count, azure_hostload5_maximum, azure_hostload5_minimum, azure_hostload5_total</td>
    <td>Count</td>
    <td>5 minute load average</td>
  </tr>
  <tr>
    <td>azure_hostmemavailbytes_average, azure_hostmemavailbytes_count, azure_hostmemavailbytes_maximum, azure_hostmemavailbytes_minimum, azure_hostmemavailbytes_total</td>
    <td>Count</td>
    <td>Available memory in bytes by node</td>
  </tr>
  <tr>
    <td>azure_hostmemhwcorruptedbytes_average, azure_hostmemhwcorruptedbytes_count, azure_hostmemhwcorruptedbytes_maximum, azure_hostmemhwcorruptedbytes_minimum, azure_hostmemhwcorruptedbytes_total</td>
    <td>Count</td>
    <td>Corrupted bytes in hardware by node</td>
  </tr>
  <tr>
    <td>azure_hostmemtotalbytes_average, azure_hostmemtotalbytes_count, azure_hostmemtotalbytes_maximum, azure_hostmemtotalbytes_minimum, azure_hostmemtotalbytes_total</td>
    <td>Bytes</td>
    <td>Total bytes of memory by node</td>
  </tr>
  <tr>
    <td>azure_hostspecificcpuutilization_average, azure_hostspecificcpuutilization_count, azure_hostspecificcpuutilization_maximum, azure_hostspecificcpuutilization_minimum, azure_hostspecificcpuutilization_total</td>
    <td>Seconds</td>
    <td>A counter metric that counts the number of seconds the CPU has been running in a particular mode</td>
  </tr>
  <tr>
    <td>azure_idracpowercapacitywatts_average, azure_idracpowercapacitywatts_count, azure_idracpowercapacitywatts_maximum, azure_idracpowercapacitywatts_minimum, azure_idracpowercapacitywatts_total</td>
    <td>Unspecified</td>
    <td>Power Capacity</td>
  </tr>
  <tr>
    <td>azure_idracpowerinputwatts_average, azure_idracpowerinputwatts_count, azure_idracpowerinputwatts_maximum, azure_idracpowerinputwatts_minimum, azure_idracpowerinputwatts_total</td>
    <td>Unspecified</td>
    <td>Power Input</td>
  </tr>
  <tr>
    <td>azure_idracpoweron_average, azure_idracpoweron_count, azure_idracpoweron_maximum, azure_idracpoweron_minimum, azure_idracpoweron_total</td>
    <td>Unspecified</td>
    <td>IDRAC Power On Status</td>
  </tr>
  <tr>
    <td>azure_idracpoweroutputwatts_average, azure_idracpoweroutputwatts_count, azure_idracpoweroutputwatts_maximum, azure_idracpoweroutputwatts_minimum, azure_idracpoweroutputwatts_total</td>
    <td>Unspecified</td>
    <td>Power Output</td>
  </tr>
  <tr>
    <td>azure_idracsensorstemperature_average, azure_idracsensorstemperature_count, azure_idracsensorstemperature_maximum, azure_idracsensorstemperature_minimum, azure_idracsensorstemperature_total</td>
    <td>Unspecified</td>
    <td>IDRAC sensor temperature</td>
  </tr>
  <tr>
    <td>azure_ncnodenetworkreceiveerrstotal_average, azure_ncnodenetworkreceiveerrstotal_count, azure_ncnodenetworkreceiveerrstotal_maximum, azure_ncnodenetworkreceiveerrstotal_minimum, azure_ncnodenetworkreceiveerrstotal_total</td>
    <td>Count</td>
    <td>Total network device errors received</td>
  </tr>
  <tr>
    <td>azure_ncnodenetworktransmiterrstotal_average, azure_ncnodenetworktransmiterrstotal_count, azure_ncnodenetworktransmiterrstotal_maximum, azure_ncnodenetworktransmiterrstotal_minimum, azure_ncnodenetworktransmiterrstotal_total</td>
    <td>Count</td>
    <td>Total network device errors transmitted</td>
  </tr>
  <tr>
    <td>azure_nctotalcpuspernuma_average, azure_nctotalcpuspernuma_count, azure_nctotalcpuspernuma_maximum, azure_nctotalcpuspernuma_minimum, azure_nctotalcpuspernuma_total</td>
    <td>Count</td>
    <td>Total number of CPUs available to Nexus per NUMA</td>
  </tr>
  <tr>
    <td>azure_nctotalworkloadcpusallocatedpernuma_average, azure_nctotalworkloadcpusallocatedpernuma_count, azure_nctotalworkloadcpusallocatedpernuma_maximum, azure_nctotalworkloadcpusallocatedpernuma_minimum, azure_nctotalworkloadcpusallocatedpernuma_total</td>
    <td>Count</td>
    <td>Total number of CPUs per NUMA allocated for Nexus Kubernetes and Tenant Workloads</td>
  </tr>
  <tr>
    <td>azure_nctotalworkloadcpusavailablepernuma_average, azure_nctotalworkloadcpusavailablepernuma_count, azure_nctotalworkloadcpusavailablepernuma_maximum, azure_nctotalworkloadcpusavailablepernuma_minimum, azure_nctotalworkloadcpusavailablepernuma_total</td>
    <td>Count</td>
    <td>Total number of CPUs per NUMA available to Nexus Kubernetes and Tenant Workloads</td>
  </tr>
  <tr>
    <td>azure_nodebondingactive_average, azure_nodebondingactive_count, azure_nodebondingactive_maximum, azure_nodebondingactive_minimum, azure_nodebondingactive_total</td>
    <td>Count</td>
    <td>Number of active interfaces per bonding interface</td>
  </tr>
  <tr>
    <td>azure_nodememhugepagesfree_average, azure_nodememhugepagesfree_count, azure_nodememhugepagesfree_maximum, azure_nodememhugepagesfree_minimum, azure_nodememhugepagesfree_total</td>
    <td>Bytes</td>
    <td>NUMA hugepages free by node</td>
  </tr>
  <tr>
    <td>azure_nodememhugepagestotal_average, azure_nodememhugepagestotal_count, azure_nodememhugepagestotal_maximum, azure_nodememhugepagestotal_minimum, azure_nodememhugepagestotal_total</td>
    <td>Bytes</td>
    <td>NUMA huge pages total by node</td>
  </tr>
  <tr>
    <td>azure_nodememnumafree_average, azure_nodememnumafree_count, azure_nodememnumafree_maximum, azure_nodememnumafree_minimum, azure_nodememnumafree_total</td>
    <td>Bytes</td>
    <td>NUMA memory free</td>
  </tr>
  <tr>
    <td>azure_nodememnumashem_average, azure_nodememnumashem_count, azure_nodememnumashem_maximum, azure_nodememnumashem_minimum, azure_nodememnumashem_total</td>
    <td>Bytes</td>
    <td>NUMA shared memory</td>
  </tr>
  <tr>
    <td>azure_nodememnumaused_average, azure_nodememnumaused_count, azure_nodememnumaused_maximum, azure_nodememnumaused_minimum, azure_nodememnumaused_total</td>
    <td>Bytes</td>
    <td>NUMA memory used</td>
  </tr>
  <tr>
    <td>azure_nodenetworkcarrierchanges_average, azure_nodenetworkcarrierchanges_count, azure_nodenetworkcarrierchanges_maximum, azure_nodenetworkcarrierchanges_minimum, azure_nodenetworkcarrierchanges_total</td>
    <td>Count</td>
    <td>Node network carrier changes</td>
  </tr>
  <tr>
    <td>azure_nodenetworkmtubytes_average, azure_nodenetworkmtubytes_count, azure_nodenetworkmtubytes_maximum, azure_nodenetworkmtubytes_minimum, azure_nodenetworkmtubytes_total</td>
    <td>Bytes</td>
    <td>Node network Maximum Transmission Unit (mtu_bytes) value of /sys/class/net/</td>
  </tr>
  <tr>
    <td>azure_nodenetworkreceivemulticasttotal_average, azure_nodenetworkreceivemulticasttotal_count, azure_nodenetworkreceivemulticasttotal_maximum, azure_nodenetworkreceivemulticasttotal_minimum, azure_nodenetworkreceivemulticasttotal_total</td>
    <td>Bytes</td>
    <td>Network device statistic receive_multicast</td>
  </tr>
  <tr>
    <td>azure_nodenetworkreceivepackets_average, azure_nodenetworkreceivepackets_count, azure_nodenetworkreceivepackets_maximum, azure_nodenetworkreceivepackets_minimum, azure_nodenetworkreceivepackets_total</td>
    <td>Count</td>
    <td>Network device statistic receive_packets</td>
  </tr>
  <tr>
    <td>azure_nodenetworkspeedbytes_average, azure_nodenetworkspeedbytes_count, azure_nodenetworkspeedbytes_maximum, azure_nodenetworkspeedbytes_minimum, azure_nodenetworkspeedbytes_total</td>
    <td>Bytes</td>
    <td>speed_bytes value of /sys/class/net/</td>
  </tr>
  <tr>
    <td>azure_nodenetworktransmitpackets_average, azure_nodenetworktransmitpackets_count, azure_nodenetworktransmitpackets_maximum, azure_nodenetworktransmitpackets_minimum, azure_nodenetworktransmitpackets_total</td>
    <td>Count</td>
    <td>Network device statistic transmit_packets</td>
  </tr>
  <tr>
    <td>azure_nodenetworkup_average, azure_nodenetworkup_count, azure_nodenetworkup_maximum, azure_nodenetworkup_minimum, azure_nodenetworkup_total</td>
    <td>Count</td>
    <td>Value is 1 if operstate is 'up', 0 otherwise.</td>
  </tr>
  <tr>
    <td>azure_nodenvmeinfo_average, azure_nodenvmeinfo_count, azure_nodenvmeinfo_maximum, azure_nodenvmeinfo_minimum, azure_nodenvmeinfo_total</td>
    <td>Count</td>
    <td>Non-numeric data from /sys/class/nvme/, value is always 1. Provides firmware, model, state and serial for a device</td>
  </tr>
  <tr>
    <td>azure_nodeosinfo_average, azure_nodeosinfo_count, azure_nodeosinfo_maximum, azure_nodeosinfo_minimum, azure_nodeosinfo_total</td>
    <td>Count</td>
    <td>Node OS information</td>
  </tr>
  <tr>
    <td>azure_nodetimexmaxerrorseconds_average, azure_nodetimexmaxerrorseconds_count, azure_nodetimexmaxerrorseconds_maximum, azure_nodetimexmaxerrorseconds_minimum, azure_nodetimexmaxerrorseconds_total</td>
    <td>Seconds</td>
    <td>Maximum time error between the local system and reference clock</td>
  </tr>
  <tr>
    <td>azure_nodetimexoffsetseconds_average, azure_nodetimexoffsetseconds_count, azure_nodetimexoffsetseconds_maximum, azure_nodetimexoffsetseconds_minimum, azure_nodetimexoffsetseconds_total</td>
    <td>Seconds</td>
    <td>Time offset in between the local system and reference clock</td>
  </tr>
  <tr>
    <td>azure_nodetimexsyncstatus_average, azure_nodetimexsyncstatus_count, azure_nodetimexsyncstatus_maximum, azure_nodetimexsyncstatus_minimum, azure_nodetimexsyncstatus_total</td>
    <td>Count</td>
    <td>Is clock synchronized to a reliable server (1 = yes, 0 = no)</td>
  </tr>
  <tr>
    <td>azure_nodevmoomkill_average, azure_nodevmoomkill_count, azure_nodevmoomkill_maximum, azure_nodevmoomkill_minimum, azure_nodevmoomkill_total</td>
    <td>Count</td>
    <td>Information in /proc/vmstat pertaining to the field oom_kill</td>
  </tr>
  <tr>
    <td>azure_nodevmstatpswpin_average, azure_nodevmstatpswpin_count, azure_nodevmstatpswpin_maximum, azure_nodevmstatpswpin_minimum, azure_nodevmstatpswpin_total</td>
    <td>Count</td>
    <td>Information in /proc/vmstat pertaining to the field pswpin</td>
  </tr>
  <tr>
    <td>azure_nodevmstatpswpout_average, azure_nodevmstatpswpout_count, azure_nodevmstatpswpout_maximum, azure_nodevmstatpswpout_minimum, azure_nodevmstatpswpout_total</td>
    <td>Count</td>
    <td>Information in /proc/vmstat pertaining to the field pswpout</td>
  </tr>
</table>
