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
  description = "Cloud Observability Project Name"
  type        = string
}

output "dashboard_url" {
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.otel_collector_opa_dashboard.id}"
  description = "OpenTelemetry Collector Open Policy Agent Dashboard URL"
}

resource "lightstep_dashboard" "otel_collector_opa_dashboard" {
  project_name          = var.lightstep_project
  dashboard_name        = "Open Policy Agent"
  dashboard_description = "Monitoring dashboard for Open Policy Agent (OPA), allowing real-time tracking of resource utilization."

  group {
    rank            = 0
    title           = ""
    visibility_type = "implicit"

    chart {
      name        = "HTTP Response Time Quantile"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 24
      height      = 9

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric http_request_duration_seconds | filter (\"service.instance.id\" == $service) | delta | group_by [], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }
    }
    chart {
      name        = "Total Used Memory"
      description = ""
      type        = "timeseries"
      rank        = 1
      x_pos       = 24
      y_pos       = 0
      width       = 24
      height      = 9

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Memory In Off-Heap"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 0
      y_pos       = 9
      width       = 48
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mspan_inuse_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mspan_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
      query {
        query_name   = "c"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mcache_inuse_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
      query {
        query_name   = "d"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mcache_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
      query {
        query_name   = "e"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_buck_hash_sys_bytes | filter (\"service.name\" == $service) | latest | group_by [], sum"
      }
      query {
        query_name   = "f"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_gc_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
      query {
        query_name   = "g"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_next_gc_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
  }
  group {
    rank            = 1
    title           = "Object & Pointers"
    visibility_type = "explicit"

    chart {
      name        = "Memory In Stack"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_stack_sys_bytes | filter (\"service.name\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Pointer Dereferences Rate"
      description = "Counts rate of how many pointer dereferences happened"
      type        = "timeseries"
      rank        = 1
      x_pos       = 24
      y_pos       = 0
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_lookups_total | filter (\"service.instance.id\" == $service) | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Objects Allocation Rate"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 0
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mallocs_total | filter (\"service.instance.id\" == $service) | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Live Objects Rate"
      description = ""
      type        = "timeseries"
      rank        = 3
      x_pos       = 16
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "with\n  a = metric go_memstats_mallocs_total | filter (\"service.instance.id\" == $service) | rate | group_by [], sum;\n  b = metric go_memstats_frees_total | filter (\"service.instance.id\" == $service) | rate | group_by [], sum;\njoin ((a - b)), a=0, b=0"
      }
    }
    chart {
      name        = "Bytes Allocation Rate"
      description = ""
      type        = "timeseries"
      rank        = 4
      x_pos       = 32
      y_pos       = 8
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_alloc_bytes_total | filter (\"service.instance.id\" == $service) | rate | group_by [], sum"
      }
    }
  }
  group {
    rank            = 2
    title           = "Memory In Heap"
    visibility_type = "explicit"

    chart {
      name        = "Bytes Obtained From System"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_heap_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes Allocated & In-use"
      description = ""
      type        = "timeseries"
      rank        = 1
      x_pos       = 24
      y_pos       = 0
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_heap_alloc_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes Waiting To Be Used"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 0
      y_pos       = 8
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_heap_idle_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes In Use"
      description = ""
      type        = "timeseries"
      rank        = 3
      x_pos       = 24
      y_pos       = 8
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_heap_inuse_bytes | filter (\"service.instance.id\" == $service) | latest 2m | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes Released To OS"
      description = ""
      type        = "timeseries"
      rank        = 4
      x_pos       = 0
      y_pos       = 16
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_heap_released_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Objects Allocated"
      description = ""
      type        = "timeseries"
      rank        = 5
      x_pos       = 24
      y_pos       = 16
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_heap_objects | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
  }
  group {
    rank            = 3
    title           = "Memory Off-Heap"
    visibility_type = "explicit"

    chart {
      name        = "Mspan Bytes Usage"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mspan_inuse_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes Used For Mspan Obtained From System"
      description = ""
      type        = "timeseries"
      rank        = 1
      x_pos       = 24
      y_pos       = 0
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mspan_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes Used For Mcache Obtained From System"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 0
      y_pos       = 8
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mcache_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes In Use By Mcache"
      description = ""
      type        = "timeseries"
      rank        = 3
      x_pos       = 24
      y_pos       = 8
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_mcache_inuse_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes Used For Garbage Collection System Metadata"
      description = ""
      type        = "timeseries"
      rank        = 4
      x_pos       = 0
      y_pos       = 16
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_gc_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes Used By The Profiling Bucket Hash Table"
      description = ""
      type        = "timeseries"
      rank        = 5
      x_pos       = 24
      y_pos       = 16
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_buck_hash_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes When Next Garbage Collection Will Take Place"
      description = ""
      type        = "timeseries"
      rank        = 6
      x_pos       = 0
      y_pos       = 24
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_memstats_next_gc_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Bytes Used For Other System Allocations"
      description = ""
      type        = "timeseries"
      rank        = 7
      x_pos       = 24
      y_pos       = 24
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "with\n  a = metric go_memstats_other_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum;\n  b = metric go_memstats_other_sys_bytes | filter (\"service.instance.id\" == $service) | latest | group_by [], sum;\njoin ((a - b)), a=0, b=0"
      }
    }
    chart {
      name        = "Goroutines"
      description = ""
      type        = "timeseries"
      rank        = 8
      x_pos       = 0
      y_pos       = 32
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_goroutines | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
    chart {
      name        = "GC Duration Quantile"
      description = ""
      type        = "timeseries"
      rank        = 9
      x_pos       = 24
      y_pos       = 32
      width       = 24
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_gc_duration_seconds_p25 | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric go_gc_duration_seconds_p50 | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
      query {
        query_name   = "c"
        display      = "line"
        hidden       = false
        query_string = "metric go_gc_duration_seconds_p75 | filter (\"service.instance.id\" == $service) | latest | group_by [], sum"
      }
    }
  }

  template_variable {
    name                     = "service"
    default_values           = []
    suggestion_attribute_key = "service.instance.id"
  }

  label {
    key   = ""
    value = "policy"
  }
  label {
    key   = ""
    value = "memorymanagement"
  }
  label {
    key   = ""
    value = "opa"
  }
  label {
    key   = ""
    value = "openpolicyagent"
  }
}
