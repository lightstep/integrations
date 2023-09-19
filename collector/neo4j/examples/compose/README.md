# Monitor Neo4j with the OpenTelemetry Collector for Cloud Observability

## Overview

Neo4j is a powerful and highly performant graph database management system. To ensure the reliability and performance of a Neo4j deployment, real-time monitoring is essential. By using the OpenTelemetry Collector, you can efficiently collect and transmit Neo4j metrics to Cloud Observability for comprehensive analysis and visualization. This README will walk you through the process of integrating Neo4j metrics with Cloud Observability using the OpenTelemetry Collector.

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
2. **Run the docker compose example to spin up Neo4j and the OpenTelemetry Collector**:
    ```bash
    docker-compose up -d
    ```
3. **Access the Neo4j dashboard**: Depending on your configuration, you can access the Neo4j web interface to manage and observe your Neo4j instance. In this example, you can access the Neo4j dashboard at  `http://localhost:7474/`.
4. **Monitor Neo4j Metrics in Cloud Observability**: Once everything is set up, Neo4j metrics will begin populating in your Cloud Observability dashboard.
5. **Shutting down the monitoring setup**:
    ```bash
    docker-compose down
    ```

## Configuring Neo4j  for Advanced Monitoring

This guide assumes a standard Neo4j setup. Neo4j offers various configuration options that can affect the metrics it provides. For detailed configurations and best practices, always refer to [the official Neo4j documentation][neo4j-docs].

[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens
[neo4j-docs]: https://neo4j.com/docs/operations-manual/current/monitoring/metrics/
