# Kong Example

## Overview

This example currently demonstrates how you can monitor Kong by configuring standard plugins. 

The Prometheus plugin exposes metrics. And the OpenTelemetry plugin gathers traces. 

The current goal is to add logs, so this example is complete. 

## Requirements

This example expects a project access token in the environment variable `LS_ACCESS_TOKEN`.

A line like the following would work for setting environment in a shell profile.

`export LS_ACCESS_TOKEN=<<"your-access-token-here">>`

## Make targets

```shell
  run     Run the kong-gateway, client and otel-collector containers (default goal)
  check   Check kong.conf and kong.yml
  shell   /bin/bash in the kong container
  curl    curls the config and routes
  stop    Stop services
  start   Start services
  help    Show this help.
```

