---
# Ingest metrics using the Kong integration

The OTel Collector has a variety of [third party receivers](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/master/receiver) that provide integration with a wide variety of metric sources.

Please note that not all metrics receivers available for the OpenTelemetry Collector have been tested by ServiceNow Cloud Observability, and there may be bugs or unexpected issues in using these contributed receivers with ServiceNow Cloud Observability metrics. File any issues with the appropriate OpenTelemetry community.
{: .callout}

## Prerequisites for local installation

You must have a ServiceNow Cloud Observability [access token](/docs/create-and-manage-access-tokens) for the project to report metrics to.

## Running the Example

### Run the example by running:
```bash
make all
```
That will create local kubernetes cluster and install kong and collector.

### Otherwise you can use following commands:

#### 1. Create local kind cluster

```bash
kind create cluster --config kind-config.yaml
```

#### 2. Run kong

Next create kong namespace, add kong secret(empty test secret in this case), install kong and expose metrics endpoint

```bash
kubectl create namespace kong
kubectl create secret generic kong-enterprise-license --from-literal=license="'{}'" -n kong --dry-run=client -o yaml | kubectl apply -f -
kubectl apply -f https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/v2.11.0/deploy/single/all-in-one-dbless-k4k8s-enterprise.yaml
kubectl apply -f metrics-service.yaml
```
#### 3. Run collector

Next install collector and point it to the kong metrics endpoint, "kong-metrics.kong:8100" in this case.

```bash
./install_collector.sh
```

## Configuration

Installation procedures for the OpenTelemetry Collector varies by deployment mode. Please refer to the [collector documentation](https://opentelemetry.io/docs/collector/) for more information.

Detailed description of available [Kong metrics](https://docs.konghq.com/hub/kong-inc/prometheus/#available-metrics).

The following example configuration collects metrics from Kong and sends them into ServiceNow Cloud Observability:

```yaml
receivers:
  prometheus:
    config:
      scrape_configs:
        - job_name: kong
          static_configs:
            - targets: [kong-metrics.kong:8100]

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
    metrics/iis:
      receivers: [prometheus]
      processors: [batch]
      exporters: [logging, otlp/public]
```

