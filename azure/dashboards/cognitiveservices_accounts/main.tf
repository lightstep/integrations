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
  description = "OpenTelemetry Collector Cognitiveservices_accounts Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_dashboard" {
  project_name   = var.lightstep_project
  dashboard_name = "Cognitiveservices_accounts Metrics"
  dashboard_description = "Monitor Cognitiveservices_accounts with this metrics overview dashboard."

  chart {
    name = "azure_actionfeatureidoccurrences_total"
    rank = "0"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_actionfeatureidoccurrences_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_featureid == $metadata_featureid)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_actionfeaturesperevent_average"
    rank = "1"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_actionfeaturesperevent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_actionidoccurrences_total"
    rank = "2"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_actionidoccurrences_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_actionid == $metadata_actionid)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_actionnamespacesperevent_average"
    rank = "3"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_actionnamespacesperevent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_actionsperevent_average"
    rank = "4"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_actionsperevent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_audiosecondstranscribed_total"
    rank = "5"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_audiosecondstranscribed_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_audiosecondstranslated_total"
    rank = "6"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_audiosecondstranslated_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_baselineestimatoroverallreward_average"
    rank = "7"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_baselineestimatoroverallreward_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_baselineestimatorslotreward_average"
    rank = "8"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_baselineestimatorslotreward_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_slotid == $metadata_slotid)   &&  (metadata_slotindex == $metadata_slotindex)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_baselinerandomestimatoroverallreward_average"
    rank = "9"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_baselinerandomestimatoroverallreward_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_baselinerandomestimatorslotreward_average"
    rank = "10"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_baselinerandomestimatorslotreward_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_slotid == $metadata_slotid)   &&  (metadata_slotindex == $metadata_slotindex)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_baselinerandomeventcount_total"
    rank = "11"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_baselinerandomeventcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_baselinerandomreward_total"
    rank = "12"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_baselinerandomreward_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_blockedcalls_total"
    rank = "13"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_blockedcalls_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_carnegieinferencecount_total"
    rank = "14"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_carnegieinferencecount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_modality == $metadata_modality)   &&  (metadata_category == $metadata_category)   &&  (metadata_language == $metadata_language)   &&  (metadata_severitylevel == $metadata_severitylevel)   &&  (metadata_usecustomlist == $metadata_usecustomlist) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_characterstrained_total"
    rank = "15"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_characterstrained_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_characterstranslated_total"
    rank = "16"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_characterstranslated_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_clienterrors_total"
    rank = "17"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_clienterrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_computervisiontransactions_total"
    rank = "18"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_computervisiontransactions_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_contentsafetyimageanalyzerequestcount_total"
    rank = "19"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_contentsafetyimageanalyzerequestcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiversion == $metadata_apiversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_contentsafetytextanalyzerequestcount_total"
    rank = "20"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_contentsafetytextanalyzerequestcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiversion == $metadata_apiversion) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_contextfeatureidoccurrences_total"
    rank = "21"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_contextfeatureidoccurrences_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_featureid == $metadata_featureid)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_contextfeaturesperevent_average"
    rank = "22"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_contextfeaturesperevent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_contextnamespacesperevent_average"
    rank = "23"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_contextnamespacesperevent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_customvisiontrainingtime_total"
    rank = "24"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_customvisiontrainingtime_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_customvisiontransactions_total"
    rank = "25"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_customvisiontransactions_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_datain_total"
    rank = "26"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_datain_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_dataout_total"
    rank = "27"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_dataout_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_documentcharacterstranslated_total"
    rank = "28"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_documentcharacterstranslated_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_documentcustomcharacterstranslated_total"
    rank = "29"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_documentcustomcharacterstranslated_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_faceimagestrained_total"
    rank = "30"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_faceimagestrained_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_facesstored_total"
    rank = "31"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_facesstored_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_facetransactions_total"
    rank = "32"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_facetransactions_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_featurecardinality_action_average"
    rank = "33"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_featurecardinality_action_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_featureid == $metadata_featureid)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_featurecardinality_context_average"
    rank = "34"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_featurecardinality_context_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_featureid == $metadata_featureid)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_featurecardinality_slot_average"
    rank = "35"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_featurecardinality_slot_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_featureid == $metadata_featureid)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_finetunedtraininghours_total"
    rank = "36"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_finetunedtraininghours_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_modeldeploymentname == $metadata_modeldeploymentname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_generatedtokens_total"
    rank = "37"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_generatedtokens_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_modeldeploymentname == $metadata_modeldeploymentname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_imagesstored_total"
    rank = "38"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_imagesstored_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_latency_average"
    rank = "39"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_latency_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_learnedevents_total"
    rank = "40"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_learnedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_ismatchbaseline == $metadata_ismatchbaseline)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_luisspeechrequests_total"
    rank = "41"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_luisspeechrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_luistextrequests_total"
    rank = "42"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_luistextrequests_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_matchedrewards_total"
    rank = "43"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_matchedrewards_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_nonactivatedevents_total"
    rank = "44"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_nonactivatedevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_numberofslots_average"
    rank = "45"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_numberofslots_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_numberofspeakerprofiles_total"
    rank = "46"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_numberofspeakerprofiles_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_observedrewards_total"
    rank = "47"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_observedrewards_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_onlineestimatoroverallreward_average"
    rank = "48"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_onlineestimatoroverallreward_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_onlineestimatorslotreward_average"
    rank = "49"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_onlineestimatorslotreward_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_slotid == $metadata_slotid)   &&  (metadata_slotindex == $metadata_slotindex)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_onlineeventcount_total"
    rank = "50"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_onlineeventcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_onlinereward_total"
    rank = "51"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_onlinereward_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_processedcharacters_total"
    rank = "52"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_processedcharacters_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_processedhealthtextrecords_total"
    rank = "53"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_processedhealthtextrecords_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_processedimages_total"
    rank = "54"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_processedimages_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_processedpages_total"
    rank = "55"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_processedpages_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_processedprompttokens_total"
    rank = "56"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_processedprompttokens_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_modeldeploymentname == $metadata_modeldeploymentname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_processedtextrecords_total"
    rank = "57"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_processedtextrecords_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_questionansweringtextrecords_total"
    rank = "58"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_questionansweringtextrecords_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_ratelimit_total"
    rank = "59"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_ratelimit_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_reward_average"
    rank = "60"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_reward_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_baselineaction == $metadata_baselineaction)   &&  (metadata_chosenactionid == $metadata_chosenactionid)   &&  (metadata_matchesbaseline == $metadata_matchesbaseline)   &&  (metadata_nondefaultreward == $metadata_nondefaultreward)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_servererrors_total"
    rank = "61"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_servererrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_slotfeatureidoccurrences_total"
    rank = "62"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_slotfeatureidoccurrences_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_featureid == $metadata_featureid)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_slotfeaturesperevent_average"
    rank = "63"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_slotfeaturesperevent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_slotidoccurrences_total"
    rank = "64"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_slotidoccurrences_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_slotid == $metadata_slotid)   &&  (metadata_slotindex == $metadata_slotindex)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_slotnamespacesperevent_average"
    rank = "65"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_slotnamespacesperevent_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_slotreward_average"
    rank = "66"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_slotreward_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_baselineactionid == $metadata_baselineactionid)   &&  (metadata_chosenactionid == $metadata_chosenactionid)   &&  (metadata_matchesbaseline == $metadata_matchesbaseline)   &&  (metadata_nondefaultreward == $metadata_nondefaultreward)   &&  (metadata_slotid == $metadata_slotid)   &&  (metadata_slotindex == $metadata_slotindex)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_speakerrecognitiontransactions_total"
    rank = "67"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_speakerrecognitiontransactions_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_speechmodelhostinghours_total"
    rank = "68"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_speechmodelhostinghours_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_speechsessionduration_total"
    rank = "69"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_speechsessionduration_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successfulcalls_total"
    rank = "70"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successfulcalls_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_successrate_average"
    rank = "71"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_successrate_average | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_synthesizedcharacters_total"
    rank = "72"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_synthesizedcharacters_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_textcharacterstranslated_total"
    rank = "73"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_textcharacterstranslated_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_textcustomcharacterstranslated_total"
    rank = "74"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_textcustomcharacterstranslated_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_texttrainedcharacters_total"
    rank = "75"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_texttrainedcharacters_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_tokentransaction_total"
    rank = "76"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_tokentransaction_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_modeldeploymentname == $metadata_modeldeploymentname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalcalls_total"
    rank = "77"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalcalls_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalerrors_total"
    rank = "78"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalerrors_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region)   &&  (metadata_ratelimitkey == $metadata_ratelimitkey) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totalevents_total"
    rank = "79"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totalevents_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totaltokencalls_total"
    rank = "80"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totaltokencalls_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_operationname == $metadata_operationname)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_totaltransactions_total"
    rank = "81"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_totaltransactions_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_userbaselineeventcount_total"
    rank = "82"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_userbaselineeventcount_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_userbaselinereward_total"
    rank = "83"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_userbaselinereward_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_mode == $metadata_mode)   &&  (metadata_runid == $metadata_runid) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_voicemodelhostinghours_total"
    rank = "84"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_voicemodelhostinghours_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
EOT
    }
  }

  chart {
    name = "azure_voicemodeltrainingminutes_total"
    rank = "85"
    type = "timeseries"

    query {
      query_name   = "a"
      display      = "line"
      hidden       = false
      query_string = <<EOT
metric azure_voicemodeltrainingminutes_total | filter (  (azuremonitor.subscription_id == $azuremonitor_subscription_id)   &&  (azuremonitor.tenant_id == $azuremonitor_tenant_id)   &&  (azuremonitor.resource_id == $azuremonitor_resource_id)   &&  (location == $location)   &&  (metadata_apiname == $metadata_apiname)   &&  (metadata_featurename == $metadata_featurename)   &&  (metadata_usagechannel == $metadata_usagechannel)   &&  (metadata_region == $metadata_region) )  | delta | group_by [], sum
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
    name                     = "metadata_actionid"
    default_values           = []
    suggestion_attribute_key = "metadata_actionid"
  }

  template_variable {
    name                     = "metadata_apiname"
    default_values           = []
    suggestion_attribute_key = "metadata_apiname"
  }

  template_variable {
    name                     = "metadata_apiversion"
    default_values           = []
    suggestion_attribute_key = "metadata_apiversion"
  }

  template_variable {
    name                     = "metadata_baselineaction"
    default_values           = []
    suggestion_attribute_key = "metadata_baselineaction"
  }

  template_variable {
    name                     = "metadata_baselineactionid"
    default_values           = []
    suggestion_attribute_key = "metadata_baselineactionid"
  }

  template_variable {
    name                     = "metadata_category"
    default_values           = []
    suggestion_attribute_key = "metadata_category"
  }

  template_variable {
    name                     = "metadata_chosenactionid"
    default_values           = []
    suggestion_attribute_key = "metadata_chosenactionid"
  }

  template_variable {
    name                     = "metadata_featureid"
    default_values           = []
    suggestion_attribute_key = "metadata_featureid"
  }

  template_variable {
    name                     = "metadata_featurename"
    default_values           = []
    suggestion_attribute_key = "metadata_featurename"
  }

  template_variable {
    name                     = "metadata_ismatchbaseline"
    default_values           = []
    suggestion_attribute_key = "metadata_ismatchbaseline"
  }

  template_variable {
    name                     = "metadata_language"
    default_values           = []
    suggestion_attribute_key = "metadata_language"
  }

  template_variable {
    name                     = "metadata_matchesbaseline"
    default_values           = []
    suggestion_attribute_key = "metadata_matchesbaseline"
  }

  template_variable {
    name                     = "metadata_modality"
    default_values           = []
    suggestion_attribute_key = "metadata_modality"
  }

  template_variable {
    name                     = "metadata_mode"
    default_values           = []
    suggestion_attribute_key = "metadata_mode"
  }

  template_variable {
    name                     = "metadata_modeldeploymentname"
    default_values           = []
    suggestion_attribute_key = "metadata_modeldeploymentname"
  }

  template_variable {
    name                     = "metadata_nondefaultreward"
    default_values           = []
    suggestion_attribute_key = "metadata_nondefaultreward"
  }

  template_variable {
    name                     = "metadata_operationname"
    default_values           = []
    suggestion_attribute_key = "metadata_operationname"
  }

  template_variable {
    name                     = "metadata_ratelimitkey"
    default_values           = []
    suggestion_attribute_key = "metadata_ratelimitkey"
  }

  template_variable {
    name                     = "metadata_region"
    default_values           = []
    suggestion_attribute_key = "metadata_region"
  }

  template_variable {
    name                     = "metadata_runid"
    default_values           = []
    suggestion_attribute_key = "metadata_runid"
  }

  template_variable {
    name                     = "metadata_severitylevel"
    default_values           = []
    suggestion_attribute_key = "metadata_severitylevel"
  }

  template_variable {
    name                     = "metadata_slotid"
    default_values           = []
    suggestion_attribute_key = "metadata_slotid"
  }

  template_variable {
    name                     = "metadata_slotindex"
    default_values           = []
    suggestion_attribute_key = "metadata_slotindex"
  }

  template_variable {
    name                     = "metadata_usagechannel"
    default_values           = []
    suggestion_attribute_key = "metadata_usagechannel"
  }

  template_variable {
    name                     = "metadata_usecustomlist"
    default_values           = []
    suggestion_attribute_key = "metadata_usecustomlist"
  }


}