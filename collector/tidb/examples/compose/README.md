# Monitor TiDB with the OpenTelemetry Collector for Cloud Observability

## Overview

TiDB is a distributed, scalable, and highly available NewSQL database. Monitoring TiDB is crucial to ensure its
reliability, performance, and scalability. Utilizing the OpenTelemetry Collector, you can efficiently collect and
transmit TiDB metrics to Cloud Observability, enabling comprehensive analysis and visualization of your TiDB deployment.
This README provides step-by-step instructions for integrating TiDB metrics with Cloud Observability using the
OpenTelemetry Collector.

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
2. **Run the docker compose example to spin up TiDB and the OpenTelemetry Collector**:
    ```bash
    docker-compose up -d
    ```
3. **Access [tidb-vision](https://github.com/pingcap/tidb-vision)** at http://localhost:8010.
4. **Access Spark Web UI at http://localhost:8080** and access [TiSpark](https://github.com/pingcap/tispark) through
   spark://127.0.0.1:7077
5. **Monitor TiDB Metrics in Cloud Observability**: After setup, TiDB metrics will start populating in your Cloud
   Observability dashboard.
6. **Shutting down the monitoring setup**:
    ```bash
    docker-compose down -v
    ```

## Configuring TiDB  for Advanced Monitoring

This guide assumes a standard TiDB setup. TiDB offers various configuration options that can impact the metrics it
provides. For detailed configurations and best practices, always refer to [the official TiDB documentation][tidb-docs].

[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens

[tidb-docs]: https://docs.pingcap.com/tidb/stable/grafana-tidb-dashboard#tidb-monitoring-metrics
