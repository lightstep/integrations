# Kong API Gateway Example

## Overview

This example demonstrates monitoring Kong's API Gateway with the OpenTelemetry Collector and ServiceNow Cloud Observability.

Kong is configured to send metrics and traces to the OpenTelemetry Collector. The OpenTelemetry Collector is configured to send metrics to and traces to ServiceNow Cloud Observability.


## Running the Example

This example includes a Makefile with the following targets:

```shell
  run      Run the kong-gateway, client and otel-collector containers (default goal)
  check    Check kong.conf and kong.yml
  shell    /bin/bash in the kong container
  curl     curls the config and routes
  stop     Stop services
  start    Start services
  reload   Tear it down and bring it back up
  help     Show this help.
```

## Configuration Walkthrough

### Requirements

This example expects a project access token in the environment variable `LS_ACCESS_TOKEN`. A line like the following will work for setting environment in a shell profile.

`export LS_ACCESS_TOKEN=<<"your-access-token-here">>`

### Make targets
  
Kong API Gateway is a highly versatile open-source platform used for managing APIs and microservices. This article will guide you on sending Kong telemetry to ServiceNow Cloud Observability using the OpenTelemetry Collector. We'll walk through the configuration of each type of telemetry signal — logs, metrics, and traces.  
   
### Service Configuration
   
Our Kong API Gateway setup uses Docker Compose. In our docker-compose.yml file, we declare two services: the Kong API Gateway (kong-gateway) and the OpenTelemetry Collector (otel-collector). The Kong API Gateway uses the declarative configuration file (kong.yml), and the kong.conf file configures tracing.  

You can consult the docker-compose file for details about how the Collector and Kong are configured as services. What's important to note for this example is that you need to pay attention to the ports you expose. The Collector listens on 4317 and 4318. And Kong listens on the admin port where the Collector will scrape Prometheus formatted metrics.
   
```yaml  
# docker-compose.yml  
services:  
    kong-gateway:  
        ...  
        volumes:  
          - ./kong.conf:/etc/kong/kong.conf:rw  
          - ./kong.yml:/etc/kong/kong.yml:rw  
          - ./logs/kong:/var/log/kong  
    ...  
    otel-collector:  
        ...  
        command: ["--config=/conf/collector.yml"]  
        environment:  
          LS_ACCESS_TOKEN: ${LS_ACCESS_TOKEN}  
        ports:  
          - "4317:4317"  
          - "4318:4318"  
        volumes:  
            - ./collector.yml:/conf/collector.yml:rw  
            - ./logs/kong:/var/log/kong  
``` 

We'll look into more details of the configuration files Kong uses when we consider each signal.
   
### Logging  
   
In the Kong declarative configuration file (kong.yml), we set up the API gateway and configure plugins, including the file-log and opentelemetry plugins. The file-log plugin is configured to write logs to /var/log/kong/kong.log. These logs can be processed by the filelog receiver in the OpenTelemetry Collector.  
   
```yaml  
# kong.yml  
...  
services:  
  ...  
    plugins:  
      - name: file-log  
        config:  
          path: /var/log/kong/kong.log  
...  
```  

We're using docker-compose volume mounts for illustration in this case.
   
### Metrics  
   
In the Kong configuration file (kong.conf), we configure tracing and enable metrics collection on port 8100.   
   
The Prometheus receiver in the OpenTelemetry Collector scrapes metrics from Kong gateway service on port 8001.  
   
```yaml  
# collector.yml  
receivers:  
  ...  
  prometheus:  
    config:  
      scrape_configs:  
        - job_name: "otel-collector"  
          static_configs:  
            - targets: ["kong-gateway:8001"]  
...  
```  
   
### Traces 

There are two steps to configure traces in Kong. The first step is to turn tracing on with settings in the `kong.conf` file with the tracing settings like the following.
  
```yaml  
# kong.conf  
tracing_instrumentations = all  
tracing_sampling_rate = 1.0  
...  
```

The next step is to configure the OpenTelemetry plugin to send traces to the Collector as follows.
   
```yaml  
# kong.yml  
...  
services:  
  ...  
    plugins:  
      ...  
      - name: opentelemetry  
        config:  
          endpoint: http://otel-collector:4318/v1/traces  
          resource_attributes:  
            service.name: httpbin_service  
...  
```  
  
  
All pipelines in our Collector use the OTLP exporter to send the data to ServiceNow Cloud Observability. The pipelines we use include recommended baseline processors in collecting all signals.

```yaml  
# collector.yml  
...  
  pipelines:  
    logs:  
      receivers: [filelog]  
      processors: [memory_limiter, batch]  
      exporters: [logging, otlp]  
    metrics:  
      receivers: [prometheus]  
      processors: [memory_limiter, batch]  
      exporters: [logging, otlp]  
    traces:  
      receivers: [otlp]  
      processors: [memory_limiter, batch]  
      exporters: [logging, otlp]  
```  
   
   
### References

This guide provides a comprehensive approach to monitoring your Kong API Gateway using the OpenTelemetry Collector. You'll need to customize the approach for your specific requirements. 

For more details please see the official documentation resources:

- [Kong docs on Declarative Configuration](https://docs.konghq.com/gateway/latest/production/deployment-topologies/db-less-and-declarative-config/)
- [OpenTelemetry Collector Filelog Receiver](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/filelogreceiver)  
- [OpenTelemetry Collector Prometheus Receiver](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/prometheusreceiver)
