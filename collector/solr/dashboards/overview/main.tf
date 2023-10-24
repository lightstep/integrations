terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.84.2"
    }
  }
  required_version = ">= v1.0.11"
}

resource "lightstep_dashboard" "otel_collector_solr_dashboard" {
  project_name          = var.lightstep_project
  dashboard_name        = "OpenTelemetry Solr Metrics Dashboard"
  dashboard_description = "Monitor Solr metrics with this comprehensive dashboard."

  chart {
    name = "Loaded Classes"
    rank = "0"
    type = "timeseries"
    query {
      query_name   = "jvm_classes_loaded"
      display      = "line"
      hidden       = false
      query_string = "metric jvm.classes.loaded | rate | group_by [], sum"
    }
  }

  chart {
    name = "GC Collections Count"
    rank = "1"
    type = "timeseries"
    query {
      query_name   = "jvm_gc_collections_count"
      display      = "line"
      hidden       = false
      query_string = "metric jvm.gc.collections.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Heap Memory Usage (Committed)"
    rank = "2"
    type = "timeseries"
    query {
      query_name   = "jvm_memory_heap_committed"
      display      = "line"
      hidden       = false
      query_string = "metric jvm.memory.heap.committed | rate | group_by [], sum"
    }
  }

  chart {
    name = "Cache Eviction Count"
    rank = "3"
    type = "timeseries"
    query {
      query_name   = "solr_cache_eviction_count"
      display      = "line"
      hidden       = false
      query_string = "metric solr.cache.eviction.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Cache Hit Count"
    rank = "4"
    type = "timeseries"
    query {
      query_name   = "solr_cache_hit_count"
      display      = "line"
      hidden       = false
      query_string = "metric solr.cache.hit.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Cache Insert Count"
    rank = "5"
    type = "timeseries"
    query {
      query_name   = "solr_cache_insert_count"
      display      = "line"
      hidden       = false
      query_string = "metric solr.cache.insert.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Cache Lookup Count"
    rank = "6"
    type = "timeseries"
    query {
      query_name   = "solr_cache_lookup_count"
      display      = "line"
      hidden       = false
      query_string = "metric solr.cache.lookup.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Cache Size in Memory"
    rank = "7"
    type = "timeseries"
    query {
      query_name   = "solr_cache_size"
      display      = "line"
      hidden       = false
      query_string = "metric solr.cache.size | rate | group_by [], sum"
    }
  }

  chart {
    name = "Total Request Count"
    rank = "8"
    type = "timeseries"
    query {
      query_name   = "solr_request_count"
      display      = "line"
      hidden       = false
      query_string = "metric solr.request.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Request Error Count"
    rank = "9"
    type = "timeseries"
    query {
      query_name   = "solr_request_error_count"
      display      = "line"
      hidden       = false
      query_string = "metric solr.request.error.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Average Request Time"
    rank = "10"
    type = "timeseries"
    query {
      query_name   = "solr_request_time_average"
      display      = "line"
      hidden       = false
      query_string = "metric solr.request.time.average | rate | group_by [], sum"
    }
  }

  chart {
    name = "Request Timeout Count"
    rank = "11"
    type = "timeseries"
    query {
      query_name   = "solr_request_timeout_count"
      display      = "line"
      hidden       = false
      query_string = "metric solr.request.timeout.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Indexed Document Count"
    rank = "12"
    type = "timeseries"
    query {
      query_name   = "solr_document_count"
      display      = "line"
      hidden       = false
      query_string = "metric solr.document.count | rate | group_by [], sum"
    }
  }

  chart {
    name = "Total Index Size"
    rank = "13"
    type = "timeseries"
    query {
      query_name   = "solr_index_size"
      display      = "line"
      hidden       = false
      query_string = "metric solr.index.size | rate | group_by [], sum"
    }
  }

  chart {
    name = "Cache Size"
    rank = "14"
    type = "timeseries"
    query {
      query_name   = "solr_cache_size"
      display      = "line"
      hidden       = false
      query_string = "metric solr.cache.size | rate | group_by [], sum"
    }
  }
}
