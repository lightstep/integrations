# Monitor NATS with the OpenTelemetry Collector for Lightstep

## Overview

NATS is a simple, secure, and high-performance open source messaging system. To maintain the reliability and performance of a NATS setup, it's crucial to have real-time monitoring. With the OpenTelemetry Collector, metrics from NATS can be effectively channeled to Lightstep for comprehensive analysis and visualization. This README will guide you through integrating NATS metrics with Lightstep using the OpenTelemetry Collector.

## Prerequisites

* Docker
* Docker Compose
* A Lightstep Observability account
* Lightstep Observability [access token][ls-docs-access-token]

## How to set it up

1. **Export your Lightstep access token**:
    ```bash
    export LS_ACCESS_TOKEN=<YOUR_LIGHTSTEP_TOKEN>
    ```
2. **Run the docker compose example to spin up NATS and the OpenTelemetry Collector**:
    ```bash
    docker-compose up -d
    ```
3. **Access the NATS dashboard**: Depending on your setup, typically you can visit a web UI to manage and observe NATS. In our case, you can NATS node 1 dashboard at `http://localhost:8222/`.
4. **Monitor NATS Metrics in Lightstep**: After setting things up, NATS metrics should start populating in your Lightstep dashboard.
5. **Shutting down the monitoring setup**:
    ```bash
    docker-compose down
    ```

## Configuring NATS for Advanced Monitoring

This guide assumes a standard NATS setup. However, NATS offers a variety of configuration options that can impact the metrics it provides. For in-depth configurations and best practices, always refer to [the official NATS documentation][nats-docs].

[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens
[nats-docs]: https://docs.nats.io/running-a-nats-service/nats_admin/monitoring
