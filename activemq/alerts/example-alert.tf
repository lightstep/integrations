terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = "~> 1.60.2"
    }
  }
  required_version = ">= v1.0.11"
}

resource "lightstep_metric_condition" "activemq_queue_size" {
  project_name = "ActiveMQ"
  name         = "ActiveMQ Queue Size"

  expression {
    evaluation_window   = "2m"
    evaluation_criteria = "on_average"
    is_multi            = true
    operand             = "above"
    thresholds {
      warning  = 80
      critical = 90
    }
  }

  metric_query {
    metric              = "activemq.QueueSize"
    query_name          = "a"
    timeseries_operator = "last"
    hidden              = false
    display             = "line"

    group_by {
      aggregation_method = "max"
      keys               = ["QueueName"]
    }
  }
}