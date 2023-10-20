# Confluent Platform metrics using the OpenTelemetry Collector

## Overview

 Name: natively exposes a Prometheus endpoint and the OpenTelemetry Collector has a [Prometheus receiver][otel-prom-receiver] that can be used to scrape its Prometheus endpoint. This directory contains an example showing how to configure Name: and the Collector to send metrics to Cloud Observability.

## Prerequisites

* Docker
* Docker Compose
* A Cloud Observability [access token][ls-docs-access-token]

## How to run the example

* Export your Cloud Observability access token
  
  ```sh
  export LS_ACCESS_TOKEN=<YOUR_TOKEN>
  ```

* Run the docker compose example
  
  ```sh
  docker-compose up -d
  ```

### Explore Metrics in Cloud Observability 

See the [Name: Telemetry Docs][confluent-platform-docs-telemetry] for comprehensive documentation on metrics emitted and the [dashboard documentation][ls-docs-dashboards] for more details.

## Configure the Collector

Below is a snippet showing how to configure the Prometheus Receiver to scrape the Prometheus endpoint exposed by the Name: Server.

```yaml
receivers:
  prometheus:
    config:
      scrape_configs:
        - job_name: 'zookeeper'
          scrape_interval: 10s
          static_configs:
            - targets: ['localhost:9101']

        - job_name: 'kafka'
          scrape_interval: 10s
          static_configs:
            - targets: ['localhost:9102']

        - job_name: 'schema-registry'
          scrape_interval: 10s
          static_configs:
            - targets: ['localhost:9103']

        - job_name: 'ksqldb-server'
          scrape_interval: 10s
          static_configs:
            - targets: ['localhost:8089']

        - job_name: 'rest-proxy'
          scrape_interval: 10s
          static_configs:
            - targets: ['localhost:9104']

        - job_name: 'kafka-connect'
          scrape_interval: 10s
          static_configs:
            - targets: ['localhost:8085']

        - job_name: 'replicator'
          scrape_interval: 10s
          static_configs:
            - targets: ['localhost:58084']
```


## Additional information

- [OpenTelemetry Collector Prometheus Receiver][otel-prom-receiver]
- [Name: Telemetry Reference][confluent-platform-docs-telemetry]

[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens
[ls-docs-dashboards]: https://docs.lightstep.com/docs/create-and-manage-dashboards
[otel-prom-receiver]: https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/prometheusreceiver
[confluent-platform-docs-telemetry]: https://docs.cloudera.com/cloudera-manager/7.2.6/metrics/topics/cm_metrics_impala_daemon.html
