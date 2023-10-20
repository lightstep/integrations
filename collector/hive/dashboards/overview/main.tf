terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.70.10"
    }
  }
  required_version = ">= v1.0.11"
}

resource "lightstep_dashboard" "otel_collector_hive_dashboard" {
  project_name          = var.cloud_observability_project
  dashboard_name        = "OpenTelemetry Hive JMX Metrics Dashboard"
  dashboard_description = "Monitor Hive JMX metrics with this overview dashboard."

  chart {
    name = "Config Reload Failure Created"
    rank = "0"
    type = "timeseries"
    query {
      query_name   = "jmx_config_reload_failure_created"
      display      = "line"
      hidden       = false
      query_string = "metric jmx_config_reload_failure_created | rate | group_by [], sum"
    }
  }

  chart {
    name = "Config Reload Failure Total"
    rank = "1"
    type = "timeseries"
    query {
      query_name   = "jmx_config_reload_failure_total"
      display      = "line"
      hidden       = false
      query_string = "metric jmx_config_reload_failure_total | rate | group_by [], sum"
    }
  }

   chart {
    name = "Config Reload Success Created"
    rank = "2"
    type = "timeseries"
    query {
      query_name   = "jmx_config_reload_success_created"
      display      = "line"
      hidden       = false
      query_string = "metric jmx_config_reload_success_created | rate | group_by [], sum"
    }
  }

  chart {
    name = "Config Reload Success Total"
    rank = "3"
    type = "timeseries"
    query {
      query_name   = "jmx_config_reload_success_total"
      display      = "line"
      hidden       = false
      query_string = "metric jmx_config_reload_success_total | rate | group_by [], sum"
    }
  }

  chart {
    name = "JMX Exporter Build Info"
    rank = "4"
    type = "timeseries"
    query {
      query_name   = "jmx_exporter_build_info"
      display      = "line"
      hidden       = false
      query_string = "metric jmx_exporter_build_info | rate | group_by [], sum"
    }
  }

  chart {
    name = "JMX Scrape Cached Beans"
    rank = "5"
    type = "timeseries"
    query {
      query_name   = "jmx_scrape_cached_beans"
      display      = "line"
      hidden       = false
      query_string = "metric jmx_scrape_cached_beans | rate | group_by [], sum"
    }
  }

  chart {
    name = "JMX Scrape Duration Seconds"
    rank = "6"
    type = "timeseries"
    query {
      query_name   = "jmx_scrape_duration_seconds"
      display      = "line"
      hidden       = false
      query_string = "metric jmx_scrape_duration_seconds | rate | group_by [], sum"
    }
  }

  chart {
    name = "JMX Scrape Error"
    rank = "7"
    type = "timeseries"
    query {
      query_name   = "jmx_scrape_error"
      display      = "line"
      hidden       = false
      query_string = "metric jmx_scrape_error | rate | group_by [], sum"
    }
  }

  chart {
    name = "JVM Classes Currently Loaded"
    rank = "8"
    type = "timeseries"
    query {
      query_name   = "jvm_classes_currently_loaded"
      display      = "line"
      hidden       = false
      query_string = "metric jvm_classes_currently_loaded | rate | group_by [], sum"
    }
  }

  chart {
    name = "JVM Classes Loaded Total"
    rank = "9"
    type = "timeseries"
    query {
      query_name   = "jvm_classes_loaded_total"
      display      = "line"
      hidden       = false
      query_string = "metric jvm_classes_loaded_total | rate | group_by [], sum"
    }
  }

  chart {
    name = "JVM Classes Unloaded Total"
    rank = "10"
    type = "timeseries"
    query {
      query_name   = "jvm_classes_unloaded_total"
      display      = "line"
      hidden       = false
      query_string = "metric jvm_classes_unloaded_total | rate | group_by [], sum"
    }
  }

  chart {
    name = "Scraping Successful"
    rank = "11"
    type = "timeseries"
    query {
      query_name   = "up"
      display      = "line"
      hidden       = false
      query_string = "metric up | rate | group_by [], sum"
    }
  }
}