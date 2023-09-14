# Monitor Open Policy Agent with the OpenTelemetry Collector

## Overview
Open Policy Agent (OPA) is a powerful open-source policy engine that enables fine-grained policy enforcement for cloud-native applications. Integrating OPA with Cloud Observability allows you to monitor and gain insights into how policies are enforced within your application, providing visibility into policy decisions and their impact. This README will guide you through the process of setting up OPA integration with Cloud Observability.

## Prerequisites

* Docker
* Docker Compose
* OPA CLI (optional) - [Installation instructions](https://www.openpolicyagent.org/docs/latest/#1-download-opa)
* A Cloud Observability account
* Cloud Observability [access token][ls-docs-access-token]

## How to set it up

1. **Export your Cloud Observability access token**:
    ```bash
    export LS_ACCESS_TOKEN=<YOUR_LIGHTSTEP_TOKEN>
    ```
2. **Run the docker compose example to spin up Gitea and the OpenTelemetry Collector**:
    ```bash
    docker-compose up -d
    ```
3. **Access OPA's web interface**: Visit http://localhost:8181.
4. **Monitor OPA Metrics in Cloud Observability**: After setting things up, OPA metrics should start populating in your Cloud Observability dashboard.
5. **Shutting down the monitoring setup**:
    ```bash
    docker-compose down
    ```


## Configuring OPA for Enhanced Monitoring

This guide assumes a basic Gitea setup. However, Gitea provides numerous configuration tweaks affecting the metrics it exposes. For detailed configurations and best practices, always consult [Open Policy Agent's official documentation][opa-docs].

[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens
[opa-docs]: https://www.openpolicyagent.org/docs/latest/