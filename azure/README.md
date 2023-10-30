---
# Ingest metrics using the Azure integration

The OTel Collector has a variety of [third party receivers](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/master/receiver) that provide integration with a wide variety of metric sources.

Please note that not all metrics receivers available for the OpenTelemetry Collector have been tested by ServiceNow Cloud Observability Observability, and there may be bugs or unexpected issues in using these contributed receivers with ServiceNow Cloud Observability Observability metrics. File any issues with the appropriate OpenTelemetry community.
{: .callout}

## Prerequisites for local installation

You must have a ServiceNow Cloud Observability Observability [access token](/docs/create-and-manage-access-tokens) for the project to report metrics to.
Also you must have Azure account credentials.

## Running the Example

### 1. Apply terraform configuration to create Azure test env

First you'll need to create a resource.

Terraform requires Azure account credentials ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_SUBSCRIPTION_ID, ARM_TENANT_ID to be set as ENV variables.

```bash
make apply-terraform
```

### 2. Run collector

Collector requires Azure account credentials AZURE_CLIENT_ID, AZURE_CLIENT_SECRET, AZURE_SUBSCRIPTION_ID, AZURE_TENANT_ID to be set as ENV variables.

```bash
make run-collector
```

## Configuration

Installation of the OpenTelemetry Collector varies, please refer to the [collector documentation](https://opentelemetry.io/docs/collector/) for more information.

Detailed description of available [Azure metrics per service](https://learn.microsoft.com/en-us/azure/azure-monitor/essentials/metrics-supported).

Collector Azure Monitor receiver has to be configured to capture required Azure resources, [configuration description](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/azuremonitorreceiver#configuration).

The following example configuration collects metrics from Azure and send them to ServiceNow Cloud Observability Observability:

```yaml
receivers:
  azuremonitor:
    subscription_id: "${AZURE_SUBSCRIPTION_ID}"
    tenant_id: "${AZURE_TENANT_ID}"
    client_id: "${AZURE_CLIENT_ID}"
    client_secret: "${AZURE_CLIENT_SECRET}"
    resource_groups:
      - "example-resources"
    services:
      - "microsoft.compute/disks"
      - "Microsoft.Network/networkInterfaces"
      - "Microsoft.Compute/virtualMachines"
    collection_interval: 60s

exporters:
  logging:
    loglevel: debug
  otlp/public:
    endpoint: ingest.lightstep.com:443
    headers:
        "lightstep-access-token": "${LS_ACCESS_TOKEN}"

processors:
  batch:

service:
  pipelines:
    metrics/azuremonitor:
      receivers: [azuremonitor]
      processors: [batch]
      exporters: [logging, otlp/public]

```

