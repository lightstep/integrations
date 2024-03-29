# Pulsar metrics using the OpenTelemetry Collector

## Overview

 Pulsar natively exposes a Prometheus endpoint and the OpenTelemetry Collector has a [Prometheus receiver][otel-prom-receiver] that can be used to scrape its Prometheus endpoint. This directory contains an example showing how to configure Pulsar and the Collector to send metrics to ServiceNow Cloud Observability Observability.

## Prerequisites

* Docker
* Docker Compose
* A ServiceNow Cloud Observability Observability [access token][ls-docs-access-token]

## How to run the example

* Export your ServiceNow Cloud Observability access token

  ```sh
  export LS_ACCESS_TOKEN=<YOUR_TOKEN>
  ```

* Run the docker compose example

  ```sh
  docker-compose up -d
  ```

### Explore Metrics in ServiceNow Cloud Observability

See the [Pulsar Telemetry Docs][pulsar-docs-telemetry] for comprehensive documentation on metrics emitted and the [dashboard documentation][ls-docs-dashboards] for more details.

## Configure the Collector

Below is a snippet showing how to configure the Prometheus Receiver to scrape the Prometheus endpoint exposed by the Pulsar Server.

```yaml
receivers:
  prometheus:
    config:
      scrape_configs:
        - job_name: 'pulsar'
          scrape_interval: 10s
          static_configs:
            - targets: ['localhost:8080']
```


## Additional information

- [OpenTelemetry Collector Prometheus Receiver][otel-prom-receiver]
- [Pulsar Telemetry Reference][scylla-docs-telemetry]

[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens
[ls-docs-dashboards]: https://docs.lightstep.com/docs/create-and-manage-dashboards
[otel-prom-receiver]: https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/prometheusreceiver
[pulsar-docs-telemetry]: https://pulsar.apache.org/docs/next/reference-metrics/
