# Ingest metrics using the Istio integration

The OTel Collector has a variety of [third party receivers](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/master/receiver) that provide integration with a wide variety of metric sources.

Please note that not all metrics receivers available for the OpenTelemetry Collector have been tested by Cloud Observability, and there may be bugs or unexpected issues in using these contributed receivers with Cloud Observability metrics. File any issues with the appropriate OpenTelemetry community.
{: .callout}

## Prerequisites

* Docker
* Go: https://golang.org/doc/install
* Docker: https://docs.docker.com/get-docker/
* Kubernetes CLI (kubectl): https://kubernetes.io/docs/tasks/tools/install-kubectl/
* kind (Kubernetes in Docker): https://kind.sigs.k8s.io/docs/user/quick-start/
* Istio: https://istio.io/latest/docs/setup/getting-started/
* A Cloud Observability account
* Cloud Observability [access token][ls-docs-access-token]

## Running the Example

Run make to build the example:

```sh
make all
```


## Configuration

Installation of the OpenTelemetry Collector varies, please refer to the [collector documentation](https://opentelemetry.io/docs/collector/) for more information.

The example collector's configuration, used for this project shows using processors to add metrics with Cloud Observability:

``` yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: otel-collector-conf
  namespace: istio-system
  labels:
    app: otel-collector
data:
  otel-collector-config.yaml: |
    receivers:
      otlp:
        protocols:
          grpc:
          http:

    processors:
      batch:

    exporters:
      logging:
        loglevel: debug
      otlp/lightstep:
        endpoint: ingest.lightstep.com:443
        headers:
          "lightstep-access-token": "{LS_ACCESS_TOKEN}"
    extensions:
      health_check:
    
    service:
      extensions:
        - health_check
    pipelines:
      logs:
        receivers: [otlp]
        processors: [batch]
        exporters: [logging]
      traces:
        receivers: [otlp]
        processors: [batch]
        exporters: [logging, otlp/lightstep]
      metrics:
        receivers: [otlp]
        processors: [batch]
        exporters: [logging, otlp/lightstep]
```

#### Build the Docker image:

```sh
make build-image
```

#### Create the cluster

```sh
make create-cluster
```

#### Install Istio

* Label the default namespace to enable automatic sidecar injection for Istio

```sh
istioctl install --set profile=demo -y
kubectl label namespace default istio-injection=enabled
```

#### Load the Docker image into the kind cluster

```sh
make load-image
```

#### Deploy the application

```sh
make deploy-image
```

#### Apply the otel deployment to your Kubernetes cluster

First edit the `[lightstep-secret.yaml](lightstep-secret.yaml)` file and replace `${LS_ACCESS_TOKEN}` with your [access token][ls-docs-access-token].
Then apply the secret & other otel resources to your cluster:

```sh
make deploy-otel
```

* Verify that the OpenTelemetry Collector is running:

```sh
kubectl get pods -l app=otel-collector
```

#### Apply the istio telemetry to your Kubernetes cluster

```sh
make deploy-isito-telemetry
```

#### Test service

```sh
kubectl -n go-istio-demo port-forward svc/go-istio-demo 8080:80
```

```sh
curl http://localhost:8080
Hello, Golang with Istio!
```

#### Checks

* Check the status of the pods in the go-istio-demo namespace

```sh
kubectl -n go-istio-demo get pods
```

```sh
kubectl port-forward svc/golang-demo 8080:80
```

* Check the pod's metrics logs and events
  
    * Find the pod name of the OpenTelemetry Collector deployment
  
        ```sh
        kubectl get pods -l app=otel-collector
        kubectl logs -f <otel-collector-pod-name>
        ```


[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens
