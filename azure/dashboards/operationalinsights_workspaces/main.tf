terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.76.0"
    }
  }
  required_version = ">= v1.0.11"
}

variable "lightstep_project" {
  description = "Lightstep Project Name"
  type        = string
}

output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.otel_collector_dashboard.id}"
  description = "OpenTelemetry Collector Operationalinsights_workspaces Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Operationalinsights_workspaces Metrics"
  dashboard_description = "Monitor Operationalinsights_workspaces with this metrics overview dashboard."

  chart {
    name = "azure_availabilityrate_query_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_availabilityrate_query_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_isuserquery == $metadata_isuserquery) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_available_memory_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_available_memory_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_available_swap_space_average"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_available_swap_space_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_committed_bytes_in_use_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_committed_bytes_in_use_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_dpc_time_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_dpc_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_free_inodes_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_free_inodes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_free_space_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_free_space_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_idle_time_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_idle_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_interrupt_time_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_interrupt_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_io_wait_time_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_io_wait_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_nice_time_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_nice_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_privileged_time_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_privileged_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_processor_time_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_processor_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_used_inodes_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_used_inodes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_used_memory_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_used_memory_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_used_space_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_used_space_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_used_swap_space_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_used_swap_space_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_%_user_time_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_%_user_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_available_mbytes_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_available_mbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_available_mbytes_memory_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_available_mbytes_memory_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_available_mbytes_swap_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_available_mbytes_swap_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_avg._disk_sec/read_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_avg._disk_sec/read_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_avg._disk_sec/transfer_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_avg._disk_sec/transfer_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_avg._disk_sec/write_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_avg._disk_sec/write_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_bytes_received/sec_average"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_bytes_received/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_bytes_sent/sec_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_bytes_sent/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_bytes_total/sec_average"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_bytes_total/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_current_disk_queue_length_average"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_current_disk_queue_length_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_disk_read_bytes/sec_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_disk_read_bytes/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_disk_reads/sec_average"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_disk_reads/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_disk_transfers/sec_average"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_disk_transfers/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_disk_write_bytes/sec_average"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_disk_write_bytes/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_disk_writes/sec_average"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_disk_writes/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_free_megabytes_average"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_free_megabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_free_physical_memory_average"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_free_physical_memory_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_free_space_in_paging_files_average"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_free_space_in_paging_files_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_free_virtual_memory_average"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_free_virtual_memory_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_logical_disk_bytes/sec_average"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_logical_disk_bytes/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_page_reads/sec_average"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_page_reads/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_page_writes/sec_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_page_writes/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_pages/sec_average"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_pages/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_pct_privileged_time_average"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_pct_privileged_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_pct_user_time_average"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_pct_user_time_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_physical_disk_bytes/sec_average"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_physical_disk_bytes/sec_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_processes_average"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_processes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_processor_queue_length_average"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_processor_queue_length_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_size_stored_in_paging_files_average"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_size_stored_in_paging_files_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_total_bytes_average"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_total_bytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_total_bytes_received_average"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_total_bytes_received_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_total_bytes_transmitted_average"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_total_bytes_transmitted_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_total_collisions_average"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_total_collisions_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_total_packets_received_average"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_total_packets_received_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_total_packets_transmitted_average"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_total_packets_transmitted_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_total_rx_errors_average"
    rank = "53"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_total_rx_errors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_total_tx_errors_average"
    rank = "54"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_total_tx_errors_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_uptime_average"
    rank = "55"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_uptime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_used_mbytes_swap_space_average"
    rank = "56"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_used_mbytes_swap_space_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_used_memory_kbytes_average"
    rank = "57"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_used_memory_kbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_used_memory_mbytes_average"
    rank = "58"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_used_memory_mbytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_users_average"
    rank = "59"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_users_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_average_virtual_shared_memory_average"
    rank = "60"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_average_virtual_shared_memory_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_objectname == $metadata_objectname)   &&  (metadata_instancename == $metadata_instancename)   &&  (metadata_counterpath == $metadata_counterpath)   &&  (metadata_sourcesystem == $metadata_sourcesystem) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_event_average"
    rank = "61"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_event_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_source == $metadata_source)   &&  (metadata_eventlog == $metadata_eventlog)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_eventcategory == $metadata_eventcategory)   &&  (metadata_eventlevel == $metadata_eventlevel)   &&  (metadata_eventlevelname == $metadata_eventlevelname)   &&  (metadata_eventid == $metadata_eventid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_heartbeat_total"
    rank = "62"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_heartbeat_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_ostype == $metadata_ostype)   &&  (metadata_version == $metadata_version)   &&  (metadata_sourcecomputerid == $metadata_sourcecomputerid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_query_count_count"
    rank = "63"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_query_count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_isuserquery == $metadata_isuserquery) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_query_failure_count_count"
    rank = "64"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_query_failure_count_count | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_isuserquery == $metadata_isuserquery) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_update_average"
    rank = "65"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_update_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_computer == $metadata_computer)   &&  (metadata_product == $metadata_product)   &&  (metadata_classification == $metadata_classification)   &&  (metadata_updatestate == $metadata_updatestate)   &&  (metadata_optional == $metadata_optional)   &&  (metadata_approved == $metadata_approved) )  | delta | group_by [], sum
EOT
    }
  }



  template_variable {
    name                     = "azuremonitor_resource_id"
    default_values           = []
    suggestion_attribute_key = "azuremonitor.resource_id"
  }

  template_variable {
    name                     = "azuremonitor_subscription_id"
    default_values           = []
    suggestion_attribute_key = "azuremonitor.subscription_id"
  }

  template_variable {
    name                     = "azuremonitor_tenant_id"
    default_values           = []
    suggestion_attribute_key = "azuremonitor.tenant_id"
  }

  template_variable {
    name                     = "location"
    default_values           = []
    suggestion_attribute_key = "location"
  }

  template_variable {
    name                     = "metadata_approved"
    default_values           = []
    suggestion_attribute_key = "metadata_approved"
  }

  template_variable {
    name                     = "metadata_classification"
    default_values           = []
    suggestion_attribute_key = "metadata_classification"
  }

  template_variable {
    name                     = "metadata_computer"
    default_values           = []
    suggestion_attribute_key = "metadata_computer"
  }

  template_variable {
    name                     = "metadata_counterpath"
    default_values           = []
    suggestion_attribute_key = "metadata_counterpath"
  }

  template_variable {
    name                     = "metadata_eventcategory"
    default_values           = []
    suggestion_attribute_key = "metadata_eventcategory"
  }

  template_variable {
    name                     = "metadata_eventid"
    default_values           = []
    suggestion_attribute_key = "metadata_eventid"
  }

  template_variable {
    name                     = "metadata_eventlevel"
    default_values           = []
    suggestion_attribute_key = "metadata_eventlevel"
  }

  template_variable {
    name                     = "metadata_eventlevelname"
    default_values           = []
    suggestion_attribute_key = "metadata_eventlevelname"
  }

  template_variable {
    name                     = "metadata_eventlog"
    default_values           = []
    suggestion_attribute_key = "metadata_eventlog"
  }

  template_variable {
    name                     = "metadata_instancename"
    default_values           = []
    suggestion_attribute_key = "metadata_instancename"
  }

  template_variable {
    name                     = "metadata_isuserquery"
    default_values           = []
    suggestion_attribute_key = "metadata_isuserquery"
  }

  template_variable {
    name                     = "metadata_objectname"
    default_values           = []
    suggestion_attribute_key = "metadata_objectname"
  }

  template_variable {
    name                     = "metadata_optional"
    default_values           = []
    suggestion_attribute_key = "metadata_optional"
  }

  template_variable {
    name                     = "metadata_ostype"
    default_values           = []
    suggestion_attribute_key = "metadata_ostype"
  }

  template_variable {
    name                     = "metadata_product"
    default_values           = []
    suggestion_attribute_key = "metadata_product"
  }

  template_variable {
    name                     = "metadata_source"
    default_values           = []
    suggestion_attribute_key = "metadata_source"
  }

  template_variable {
    name                     = "metadata_sourcecomputerid"
    default_values           = []
    suggestion_attribute_key = "metadata_sourcecomputerid"
  }

  template_variable {
    name                     = "metadata_sourcesystem"
    default_values           = []
    suggestion_attribute_key = "metadata_sourcesystem"
  }

  template_variable {
    name                     = "metadata_updatestate"
    default_values           = []
    suggestion_attribute_key = "metadata_updatestate"
  }

  template_variable {
    name                     = "metadata_version"
    default_values           = []
    suggestion_attribute_key = "metadata_version"
  }


}