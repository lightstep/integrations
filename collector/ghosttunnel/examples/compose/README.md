# Monitor Ghostunnel with the OpenTelemetry Collector for ServiceNow Cloud Observability

## Overview

## Prerequisites

* Docker
* Docker Compose
* A Cloud Observability account
* Cloud Observability [access token][ls-docs-access-token]

## How to set it up

1. **Export your Cloud Observability access token**:
    ```bash
    export LS_ACCESS_TOKEN=<YOUR_LIGHTSTEP_TOKEN>
    ```
2. **Run the docker compose example to spin up Ghostunnel and the OpenTelemetry Collector**:
    ```bash
    docker-compose up -d
    ```
3. **Access the G dashboard**: Depending on your setup, typically you can visit a web UI to manage and observe NATS. In our case, you can NATS node 1 dashboard at `http://localhost:8222/`.
4. **Monitor NATS Metrics in Cloud Observability**: After setting things up, NATS metrics should start populating in your Cloud Observability dashboard.
5. **Shutting down the monitoring setup**:
    ```bash
    docker-compose down
    ```

## Configuring NATS for Advanced Monitoring

This guide assumes a standard NATS setup. However, NATS offers a variety of configuration options that can impact the metrics it provides. For in-depth configurations and best practices, always refer to [the official NATS documentation][nats-docs].

[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens
[nats-docs]: https://docs.nats.io/running-a-nats-service/nats_admin/monitoring
