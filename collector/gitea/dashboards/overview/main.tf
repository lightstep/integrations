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
  value       = "https://app.lightstep.com/${var.lightstep_project}/dashboard/${lightstep_dashboard.otel_collector_dashboard.id}"
  description = "OpenTelemetry Collector Gitea Dashboard URL"
}

resource "lightstep_dashboard" "collector_gitea_overview" {
  project_name          = var.lightstep_project
  dashboard_name        = "Gitea - Overview"
  dashboard_description = "Real-time insights into Gitea's performance and health with OpenTelemetry Collector"

  group {
    rank            = 0
    title           = ""
    visibility_type = "implicit"

    chart {
      name        = "Resident Memory"
      description = ""
      type        = "timeseries"
      rank        = 0
      x_pos       = 0
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric process_resident_memory_bytes | latest | group_by [], sum"
      }
    }
    chart {
      name        = "CPU Time"
      description = ""
      type        = "timeseries"
      rank        = 1
      x_pos       = 16
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric process_cpu_seconds_total | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Open File Descriptors"
      description = ""
      type        = "timeseries"
      rank        = 2
      x_pos       = 32
      y_pos       = 0
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric process_open_fds | latest | group_by [], sum"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric process_max_fds | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Accesses"
      description = ""
      type        = "timeseries"
      rank        = 3
      x_pos       = 0
      y_pos       = 8
      width       = 12
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_accesses | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Repositories"
      description = ""
      type        = "timeseries"
      rank        = 4
      x_pos       = 12
      y_pos       = 8
      width       = 12
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_repositories | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Users"
      description = ""
      type        = "timeseries"
      rank        = 5
      x_pos       = 24
      y_pos       = 8
      width       = 12
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_users | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Issues"
      description = ""
      type        = "timeseries"
      rank        = 6
      x_pos       = 36
      y_pos       = 8
      width       = 12
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_issues | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Actions"
      description = ""
      type        = "timeseries"
      rank        = 7
      x_pos       = 0
      y_pos       = 16
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_actions | rate | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Labels"
      description = ""
      type        = "timeseries"
      rank        = 8
      x_pos       = 8
      y_pos       = 16
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_labels | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Organizations"
      description = ""
      type        = "timeseries"
      rank        = 9
      x_pos       = 16
      y_pos       = 16
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_organizations | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Teams"
      description = ""
      type        = "timeseries"
      rank        = 10
      x_pos       = 24
      y_pos       = 16
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_teams | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Follows"
      description = ""
      type        = "timeseries"
      rank        = 11
      x_pos       = 32
      y_pos       = 16
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_follows | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Public Keys"
      description = ""
      type        = "timeseries"
      rank        = 12
      x_pos       = 40
      y_pos       = 16
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_publickeys | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Stars"
      description = ""
      type        = "timeseries"
      rank        = 13
      x_pos       = 0
      y_pos       = 24
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_stars | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Webhooks"
      description = ""
      type        = "timeseries"
      rank        = 14
      x_pos       = 8
      y_pos       = 24
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_webhooks | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Releases"
      description = ""
      type        = "timeseries"
      rank        = 15
      x_pos       = 16
      y_pos       = 24
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_releases | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Comments"
      description = ""
      type        = "timeseries"
      rank        = 16
      x_pos       = 24
      y_pos       = 24
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_comments | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Milestornes"
      description = ""
      type        = "timeseries"
      rank        = 17
      x_pos       = 32
      y_pos       = 24
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_milestones | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Number Of Watches"
      description = ""
      type        = "timeseries"
      rank        = 18
      x_pos       = 40
      y_pos       = 24
      width       = 8
      height      = 8

      query {
        query_name   = "a"
        display      = "big_number"
        hidden       = false
        query_string = "metric gitea_watches | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Go Goroutines"
      description = ""
      type        = "timeseries"
      rank        = 19
      x_pos       = 0
      y_pos       = 32
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_goroutines | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Go Threads"
      description = ""
      type        = "timeseries"
      rank        = 20
      x_pos       = 16
      y_pos       = 32
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_threads | latest | group_by [], sum"
      }
    }
    chart {
      name        = "Go GC Heap"
      description = ""
      type        = "timeseries"
      rank        = 21
      x_pos       = 32
      y_pos       = 32
      width       = 16
      height      = 8

      query {
        query_name   = "a"
        display      = "line"
        hidden       = false
        query_string = "metric go_gc_heap_frees_by_size_bytes_total | delta | group_by [], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }
      query {
        query_name   = "b"
        display      = "line"
        hidden       = false
        query_string = "metric go_gc_heap_allocs_by_size_bytes_total | delta | group_by [], sum | point percentile(value, 50.0), percentile(value, 95.0), percentile(value, 99.0), percentile(value, 99.9)"
      }
    }
  }
}
