# Ingest Hikaricp metrics using the OpenTelemetry Collector

## Overview

 Hikaricp natively exposes a Prometheus endpoint and the OpenTelemetry Collector has a [Prometheus receiver][otel-prom-receiver] that can be used to scrape its Prometheus endpoint. This directory contains an example showing how to configure Hikaricp and the Collector to send metrics to SN Observability.

## Prerequisites

* Docker
* Docker Compose
* A ServiceNow Cloud Observability Observability [access token][ls-docs-access-token]

### Java application with Spring framework and a Postgres database

Example structure:
```
.
├── backend
│   ├── Dockerfile
│   └── ...
├── db
│   └── password.txt
├── docker-compose.yaml
├── collector.yaml
└── README.md

```

## How to run the example

* Export your ServiceNow Cloud Observability access token
  ```
  export LS_ACCESS_TOKEN=<YOUR_TOKEN>
  ```
* Run the docker compose example
  ```
  docker-compose up -d
  ```
* Stop the cluster
  ```
  docker-compose down`
  ```

### Explore Metrics in ServiceNow Cloud Observability

See the [Hikaricp Telemetry Docs][hikaricp-prometheus-docs] for comprehensive documentation on metrics emitted and the [dashboard documentation][ls-docs-dashboards] for more details.

### Explore the Hikaricp Example

Publishing metrics in Spring Boot 2.x: with Hikaricp

* After the application starts, metrics will be exposed automatically on the actuator endpoint, which is `/actuator/prometheus`, [http://localhost:8080/actuator/prometheus](http://localhost:8080/actuator/prometheus):

```sh
$ curl 'http://localhost:8080/actuator/prometheus' -i -X GET
```

## Configure Hikaricp

##### Adding Prometheus to Spring Boot


We need to tell Spring Boot’s Actuator which endpoints it should expose:
So we add this line to `application.properties`:
```sh
spring.datasource.hikari.maximum-pool-size=5

management.endpoints.web.exposure.include=*
management.endpoints.web.exposure.include=prometheus,health,info,metric

management.health.probes.enabled=true
management.endpoint.health.show-details=always
```

##### Using the JDK’s `com.sun.net.httpserver.HttpServer` to expose a scrape endpoint

* With `PrometheusConfig`

```java
public static PrometheusMeterRegistry prometheus() {
    PrometheusMeterRegistry prometheusRegistry = new PrometheusMeterRegistry(new PrometheusConfig() {

        @Override
        public Duration step() {
            return Duration.ofSeconds(10);
        }

        @Override
        @Nullable
        public String get(String k) {
            return null;
        }
    });
    try {
        HttpServer server = HttpServer.create(new InetSocketAddress(8080), 0);
        server.createContext("/prometheus", httpExchange -> {
            String response = prometheusRegistry.scrape();
            httpExchange.sendResponseHeaders(200, response.length());
            OutputStream os = httpExchange.getResponseBody();
            os.write(response.getBytes());
            os.close();
        });
        new Thread(server::start).run();
    } catch (IOException e) {
        throw new RuntimeException(e);
    }
    return prometheusRegistry;
}
```

## Configure the Collector

Below is a snippet showing how to configure the Prometheus Receiver to scrape the Prometheus endpoint exposed by the Hikaricp Server.

```yaml
receivers:
  prometheus:
    config:
      scrape_configs:
        - job_name: 'hikaricp'
          scrape_interval: 20s
          scrape_timeout: 20s
          metrics_path: '/actuator/prometheus'
          tls_config:
            insecure_skip_verify: true
          scheme: http
          static_configs:
            - targets: ['localhost:8080']
```



## Additional information

- [OpenTelemetry Collector Prometheus Receiver][otel-prom-receiver]
- [Hikaricp Promethues Reference][hikaricp-prometheus-docs]

[ls-docs-access-token]: https://docs.lightstep.com/docs/create-and-manage-access-tokens
[ls-docs-dashboards]: https://docs.lightstep.com/docs/create-and-manage-dashboards
[otel-prom-receiver]: https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/prometheusreceiver
[learn-Hikaricp-repo]: https://github.com/Hikaricp/hikaricp/blob/master/docker/server/README.md
