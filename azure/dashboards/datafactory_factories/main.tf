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
  description = "OpenTelemetry Collector Datafactory_factories Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Datafactory_factories Metrics"
  dashboard_description = "Monitor Datafactory_factories with this metrics overview dashboard."

  chart {
    name = "azure_activitycancelledruns_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_activitycancelledruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_activitytype == $metadata_activitytype)   &&  (metadata_pipelinename == $metadata_pipelinename)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_activityfailedruns_total"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_activityfailedruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_activitytype == $metadata_activitytype)   &&  (metadata_pipelinename == $metadata_pipelinename)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_activitysucceededruns_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_activitysucceededruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_activitytype == $metadata_activitytype)   &&  (metadata_pipelinename == $metadata_pipelinename)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimecelerytasktimeouterror_total"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimecelerytasktimeouterror_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimecollectdbdags_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimecollectdbdags_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimecpupercentage_average"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimecpupercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_containername == $metadata_containername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimecpuusage_average"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimecpuusage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_containername == $metadata_containername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagbagsize_total"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagbagsize_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagcallbackexceptions_total"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagcallbackexceptions_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagfilerefresherror_total"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagfilerefresherror_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagprocessingimporterrors_total"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagprocessingimporterrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagprocessinglastduration_average"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagprocessinglastduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagfile == $metadata_dagfile) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagprocessinglastrunsecondsago_average"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagprocessinglastrunsecondsago_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagfile == $metadata_dagfile) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagprocessingmanagerstalls_total"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagprocessingmanagerstalls_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagprocessingprocesses_total"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagprocessingprocesses_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagprocessingprocessortimeouts_average"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagprocessingprocessortimeouts_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagprocessingtotalparsetime_average"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagprocessingtotalparsetime_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagrundependencycheck_average"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagrundependencycheck_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagrundurationfailed_average"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagrundurationfailed_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagrundurationsuccess_average"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagrundurationsuccess_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagrunfirsttaskschedulingdelay_average"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagrunfirsttaskschedulingdelay_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimedagrunscheduledelay_average"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimedagrunscheduledelay_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeexecutoropenslots_total"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeexecutoropenslots_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeexecutorqueuedtasks_total"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeexecutorqueuedtasks_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeexecutorrunningtasks_total"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeexecutorrunningtasks_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimejobend_total"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimejobend_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_job == $metadata_job) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimejobheartbeatfailure_total"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimejobheartbeatfailure_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_job == $metadata_job) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimejobstart_total"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimejobstart_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_job == $metadata_job) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimememorypercentage_average"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimememorypercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_containername == $metadata_containername) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeoperatorfailures_total"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeoperatorfailures_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_operator == $metadata_operator) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeoperatorsuccesses_total"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeoperatorsuccesses_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_operator == $metadata_operator) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimepoolopenslots_total"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimepoolopenslots_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_pool == $metadata_pool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimepoolqueuedslots_total"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimepoolqueuedslots_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_pool == $metadata_pool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimepoolrunningslots_total"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimepoolrunningslots_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_pool == $metadata_pool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimepoolstarvingtasks_total"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimepoolstarvingtasks_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_pool == $metadata_pool) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulercriticalsectionbusy_total"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulercriticalsectionbusy_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulercriticalsectionduration_average"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulercriticalsectionduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulerfailedslaemailattempts_total"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulerfailedslaemailattempts_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulerheartbeat_total"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulerheartbeat_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulerorphanedtasksadopted_total"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulerorphanedtasksadopted_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulerorphanedtaskscleared_total"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulerorphanedtaskscleared_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulertasksexecutable_total"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulertasksexecutable_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulertaskskilledexternally_total"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulertaskskilledexternally_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulertasksrunning_total"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulertasksrunning_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimeschedulertasksstarving_total"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimeschedulertasksstarving_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimestartedtaskinstances_total"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimestartedtaskinstances_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid)   &&  (metadata_taskid == $metadata_taskid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetaskinstancecreatedusingoperator_total"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetaskinstancecreatedusingoperator_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_operator == $metadata_operator) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetaskinstanceduration_average"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetaskinstanceduration_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid)   &&  (metadata_taskid == $metadata_taskid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetaskinstancefailures_total"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetaskinstancefailures_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetaskinstancefinished_total"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetaskinstancefinished_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid)   &&  (metadata_taskid == $metadata_taskid)   &&  (metadata_state == $metadata_state) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetaskinstancepreviouslysucceeded_total"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetaskinstancepreviouslysucceeded_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetaskinstancesuccesses_total"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetaskinstancesuccesses_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetaskremovedfromdag_total"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetaskremovedfromdag_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetaskrestoredtodag_total"
    rank = "53"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetaskrestoredtodag_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_dagid == $metadata_dagid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetriggersblockedmainthread_total"
    rank = "54"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetriggersblockedmainthread_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetriggersfailed_total"
    rank = "55"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetriggersfailed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetriggersrunning_total"
    rank = "56"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetriggersrunning_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimetriggerssucceeded_total"
    rank = "57"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimetriggerssucceeded_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_airflowintegrationruntimezombieskilled_total"
    rank = "58"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_airflowintegrationruntimezombieskilled_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_factorysizeingbunits_maximum"
    rank = "59"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_factorysizeingbunits_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimeavailablememory_average"
    rank = "60"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimeavailablememory_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimeavailablenodenumber_average"
    rank = "61"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimeavailablenodenumber_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimeaveragetaskpickupdelay_average"
    rank = "62"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimeaveragetaskpickupdelay_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimecopyavailablecapacitypercentage_maximum"
    rank = "63"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimecopyavailablecapacitypercentage_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimecopycapacityutilization_maximum"
    rank = "64"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimecopycapacityutilization_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimecopywaitingqueuelength_average"
    rank = "65"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimecopywaitingqueuelength_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimecpupercentage_average"
    rank = "66"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimecpupercentage_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename)   &&  (metadata_nodename == $metadata_nodename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimeexternalavailablecapacitypercentage_maximum"
    rank = "67"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimeexternalavailablecapacitypercentage_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimeexternalcapacityutilization_maximum"
    rank = "68"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimeexternalcapacityutilization_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimeexternalwaitingqueuelength_average"
    rank = "69"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimeexternalwaitingqueuelength_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimepipelineavailablecapacitypercentage_maximum"
    rank = "70"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimepipelineavailablecapacitypercentage_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimepipelinecapacityutilization_maximum"
    rank = "71"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimepipelinecapacityutilization_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimepipelinewaitingqueuelength_average"
    rank = "72"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimepipelinewaitingqueuelength_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_integrationruntimequeuelength_average"
    rank = "73"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_integrationruntimequeuelength_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_maxallowedfactorysizeingbunits_maximum"
    rank = "74"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_maxallowedfactorysizeingbunits_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_maxallowedresourcecount_maximum"
    rank = "75"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_maxallowedresourcecount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pipelinecancelledruns_total"
    rank = "76"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pipelinecancelledruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_cancelledby == $metadata_cancelledby)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pipelineelapsedtimeruns_total"
    rank = "77"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pipelineelapsedtimeruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_runid == $metadata_runid)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pipelinefailedruns_total"
    rank = "78"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pipelinefailedruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_pipelinesucceededruns_total"
    rank = "79"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_pipelinesucceededruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_failuretype == $metadata_failuretype)   &&  (metadata_name == $metadata_name) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_resourcecount_maximum"
    rank = "80"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_resourcecount_maximum | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ssisintegrationruntimestartcancel_total"
    rank = "81"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ssisintegrationruntimestartcancel_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ssisintegrationruntimestartfailed_total"
    rank = "82"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ssisintegrationruntimestartfailed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ssisintegrationruntimestartsucceeded_total"
    rank = "83"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ssisintegrationruntimestartsucceeded_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ssisintegrationruntimestopstuck_total"
    rank = "84"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ssisintegrationruntimestopstuck_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ssisintegrationruntimestopsucceeded_total"
    rank = "85"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ssisintegrationruntimestopsucceeded_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ssispackageexecutioncancel_total"
    rank = "86"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ssispackageexecutioncancel_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ssispackageexecutionfailed_total"
    rank = "87"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ssispackageexecutionfailed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ssispackageexecutionsucceeded_total"
    rank = "88"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ssispackageexecutionsucceeded_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_integrationruntimename == $metadata_integrationruntimename) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_triggercancelledruns_total"
    rank = "89"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_triggercancelledruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_failuretype == $metadata_failuretype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_triggerfailedruns_total"
    rank = "90"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_triggerfailedruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_failuretype == $metadata_failuretype) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_triggersucceededruns_total"
    rank = "91"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_triggersucceededruns_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_name == $metadata_name)   &&  (metadata_failuretype == $metadata_failuretype) )  | delta | group_by [], sum
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
    name                     = "metadata_activitytype"
    default_values           = []
    suggestion_attribute_key = "metadata_activitytype"
  }

  template_variable {
    name                     = "metadata_cancelledby"
    default_values           = []
    suggestion_attribute_key = "metadata_cancelledby"
  }

  template_variable {
    name                     = "metadata_containername"
    default_values           = []
    suggestion_attribute_key = "metadata_containername"
  }

  template_variable {
    name                     = "metadata_dagfile"
    default_values           = []
    suggestion_attribute_key = "metadata_dagfile"
  }

  template_variable {
    name                     = "metadata_dagid"
    default_values           = []
    suggestion_attribute_key = "metadata_dagid"
  }

  template_variable {
    name                     = "metadata_failuretype"
    default_values           = []
    suggestion_attribute_key = "metadata_failuretype"
  }

  template_variable {
    name                     = "metadata_integrationruntimename"
    default_values           = []
    suggestion_attribute_key = "metadata_integrationruntimename"
  }

  template_variable {
    name                     = "metadata_job"
    default_values           = []
    suggestion_attribute_key = "metadata_job"
  }

  template_variable {
    name                     = "metadata_name"
    default_values           = []
    suggestion_attribute_key = "metadata_name"
  }

  template_variable {
    name                     = "metadata_nodename"
    default_values           = []
    suggestion_attribute_key = "metadata_nodename"
  }

  template_variable {
    name                     = "metadata_operator"
    default_values           = []
    suggestion_attribute_key = "metadata_operator"
  }

  template_variable {
    name                     = "metadata_pipelinename"
    default_values           = []
    suggestion_attribute_key = "metadata_pipelinename"
  }

  template_variable {
    name                     = "metadata_pool"
    default_values           = []
    suggestion_attribute_key = "metadata_pool"
  }

  template_variable {
    name                     = "metadata_runid"
    default_values           = []
    suggestion_attribute_key = "metadata_runid"
  }

  template_variable {
    name                     = "metadata_state"
    default_values           = []
    suggestion_attribute_key = "metadata_state"
  }

  template_variable {
    name                     = "metadata_taskid"
    default_values           = []
    suggestion_attribute_key = "metadata_taskid"
  }


}