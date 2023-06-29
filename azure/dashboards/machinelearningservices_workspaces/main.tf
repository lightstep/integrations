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
  description = "OpenTelemetry Collector Machinelearningservices_workspaces Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Machinelearningservices_workspaces Metrics"
  dashboard_description = "Monitor Machinelearningservices_workspaces with this metrics overview dashboard."

  chart {
    name = "azure_active_cores_average"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_active_cores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_active_nodes_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_active_nodes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cancel_requested_runs_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cancel_requested_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cancelled_runs_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cancelled_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_completed_runs_total"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_completed_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpucapacitymillicores_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpucapacitymillicores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpumemorycapacitymegabytes_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpumemorycapacitymegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpumemoryutilizationmegabytes_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpumemoryutilizationmegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpumemoryutilizationpercentage_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpumemoryutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpuutilization_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpuutilization_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_nodeid == $metadata_nodeid)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpuutilizationmillicores_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpuutilizationmillicores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_cpuutilizationpercentage_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_cpuutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskavailmegabytes_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskavailmegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskreadmegabytes_average"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskreadmegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskusedmegabytes_average"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskusedmegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_diskwritemegabytes_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_diskwritemegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_errors_total"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_errors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_failed_runs_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_failed_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_finalizing_runs_total"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_finalizing_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpucapacitymilligpus_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpucapacitymilligpus_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpuenergyjoules_total"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpuenergyjoules_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_rootrunid == $metadata_rootrunid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpumemorycapacitymegabytes_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpumemorycapacitymegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpumemoryutilization_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpumemoryutilization_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_nodeid == $metadata_nodeid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpumemoryutilizationmegabytes_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpumemoryutilizationmegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpumemoryutilizationpercentage_average"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpumemoryutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpuutilization_average"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpuutilization_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_nodeid == $metadata_nodeid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpuutilizationmilligpus_average"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpuutilizationmilligpus_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_gpuutilizationpercentage_average"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_gpuutilizationpercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_deviceid == $metadata_deviceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ibreceivemegabytes_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ibreceivemegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename)   &&  (metadata_deviceid == $metadata_deviceid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ibtransmitmegabytes_average"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ibtransmitmegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename)   &&  (metadata_deviceid == $metadata_deviceid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_idle_cores_average"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_idle_cores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_idle_nodes_average"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_idle_nodes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_leaving_cores_average"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_leaving_cores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_leaving_nodes_average"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_leaving_nodes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_model_deploy_failed_total"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_model_deploy_failed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_model_deploy_started_total"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_model_deploy_started_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_model_deploy_succeeded_total"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_model_deploy_succeeded_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_model_register_failed_total"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_model_register_failed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_statuscode == $metadata_statuscode) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_model_register_succeeded_total"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_model_register_succeeded_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_networkinputmegabytes_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_networkinputmegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename)   &&  (metadata_deviceid == $metadata_deviceid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_networkoutputmegabytes_average"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_networkoutputmegabytes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename)   &&  (metadata_deviceid == $metadata_deviceid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_not_responding_runs_total"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_not_responding_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_not_started_runs_total"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_not_started_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_preempted_cores_average"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_preempted_cores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_preempted_nodes_average"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_preempted_nodes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_preparing_runs_total"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_preparing_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_provisioning_runs_total"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_provisioning_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_queued_runs_total"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_queued_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_quota_utilization_percentage_average"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_quota_utilization_percentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername)   &&  (metadata_vmfamilyname == $metadata_vmfamilyname)   &&  (metadata_vmpriority == $metadata_vmpriority) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_started_runs_total"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_started_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_starting_runs_total"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_starting_runs_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_runtype == $metadata_runtype)   &&  (metadata_publishedpipelineid == $metadata_publishedpipelineid)   &&  (metadata_computetype == $metadata_computetype)   &&  (metadata_pipelinesteptype == $metadata_pipelinesteptype)   &&  (metadata_experimentname == $metadata_experimentname) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storageapifailurecount_total"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storageapifailurecount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_storageapisuccesscount_total"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_storageapisuccesscount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_instanceid == $metadata_instanceid)   &&  (metadata_computename == $metadata_computename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_total_cores_average"
    rank = "53"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_total_cores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_total_nodes_average"
    rank = "54"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_total_nodes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_unusable_cores_average"
    rank = "55"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_unusable_cores_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_unusable_nodes_average"
    rank = "56"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_unusable_nodes_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario)   &&  (metadata_clustername == $metadata_clustername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_warnings_total"
    rank = "57"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_warnings_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_scenario == $metadata_scenario) )  | delta | group_by [], sum
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
    name                     = "metadata_clustername"
    default_values           = []
    suggestion_attribute_key = "metadata_clustername"
  }

  template_variable {
    name                     = "metadata_computename"
    default_values           = []
    suggestion_attribute_key = "metadata_computename"
  }

  template_variable {
    name                     = "metadata_computetype"
    default_values           = []
    suggestion_attribute_key = "metadata_computetype"
  }

  template_variable {
    name                     = "metadata_deviceid"
    default_values           = []
    suggestion_attribute_key = "metadata_deviceid"
  }

  template_variable {
    name                     = "metadata_experimentname"
    default_values           = []
    suggestion_attribute_key = "metadata_experimentname"
  }

  template_variable {
    name                     = "metadata_instanceid"
    default_values           = []
    suggestion_attribute_key = "metadata_instanceid"
  }

  template_variable {
    name                     = "metadata_nodeid"
    default_values           = []
    suggestion_attribute_key = "metadata_nodeid"
  }

  template_variable {
    name                     = "metadata_pipelinesteptype"
    default_values           = []
    suggestion_attribute_key = "metadata_pipelinesteptype"
  }

  template_variable {
    name                     = "metadata_publishedpipelineid"
    default_values           = []
    suggestion_attribute_key = "metadata_publishedpipelineid"
  }

  template_variable {
    name                     = "metadata_rootrunid"
    default_values           = []
    suggestion_attribute_key = "metadata_rootrunid"
  }

  template_variable {
    name                     = "metadata_runid"
    default_values           = []
    suggestion_attribute_key = "metadata_runid"
  }

  template_variable {
    name                     = "metadata_runtype"
    default_values           = []
    suggestion_attribute_key = "metadata_runtype"
  }

  template_variable {
    name                     = "metadata_scenario"
    default_values           = []
    suggestion_attribute_key = "metadata_scenario"
  }

  template_variable {
    name                     = "metadata_statuscode"
    default_values           = []
    suggestion_attribute_key = "metadata_statuscode"
  }

  template_variable {
    name                     = "metadata_vmfamilyname"
    default_values           = []
    suggestion_attribute_key = "metadata_vmfamilyname"
  }

  template_variable {
    name                     = "metadata_vmpriority"
    default_values           = []
    suggestion_attribute_key = "metadata_vmpriority"
  }


}