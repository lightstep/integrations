# Kong API Gateway Example

## Overview

This example demonstrates monitoring Kong's API Gateway with the OpenTelemetry Collector and ServiceNow Cloud Observability.

Kong is configured to send metrics and traces to the OpenTelemetry Collector. The OpenTelemetry Collector is configured to send metrics to and traces to ServiceNow Cloud Observability.

## Requirements

This example expects a project access token in the environment variable `LS_ACCESS_TOKEN`. A line like the following will work for setting environment in a shell profile.

`export LS_ACCESS_TOKEN=<<"your-access-token-here">>`

## Make targets

The Makefile has the following targets:

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
