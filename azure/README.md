# SGC Demo

This directory contains all the Terraform configurations required to manage the infrastructure for Azure-based log ingest. It's structured to support multiple environments (e.g., staging, public, etc), although the that now seems like overkill at this stage.

## Status and Work Scope

This demo is in development, meaning it's not ready for production use. However, it can deploy a variety of resources to Azure that send logs to the cloud observability backend.

See the PRD [CI Categories](https://lightstep.atlassian.net/wiki/spaces/EPD/pages/3181019147/PRD+Service+Graph+Connector+for+OpenTelemetry+v1.4). The listed categories in that document for Azure are: Datacenters and Resource Groups, Compute, Database and Storage, Load Balancers and Networking.

You can see the log's sent to the cloud observability backend in the [Lightstep Observability](https://app.lightstep.com/internal-sgcdev-azure/logs).

### Would be nice to have ...

* Modules to send load (`k6`, `ab`, etc.) - to generate additional telemetry.
* Modules covering other Azure resources.

### Need TODO ...

* Reduce module interfaces to essentials.
* Remove TFVARS file and manually set defaults in module variables.
* Fix spec on Collector container, for alternating between builds (e.g. point to official container registry or ACR).
* Setup an ACR registry for containers.
* Add a Terraform backend for Azure.


## Quick Notes on Azure

If you aren't acquainted to Azure, take note the following:

- Azure has a concept of Resource Groups. They logically group resources, so you can manage them together. Resource groups can't be nested.
- Azure's log format is JSON, the top-level schema is common to all resource logs, and the `properties` key is where the attributes specific to a resource type schema are provided.
- Availability Zones are a new concept in Azure. They previously managed by letting customers specify Availability Sets they've only partially migrated the platform.
- `resourceId` is the typical spelling of Azure's partially readable resource identifiers like ARNs. It includes subscription ID, resource group, resource type, and name.
- Telemetry received from Logs Analytics Workspaces has a different schema than what's received from EventHubs. This includes the presence of some fields in only one or the other.

## Resources Monitored

### Compute/Network

- [x] Virtual Machine (no enhanced metrics with Azure agent deployed on host)
- [x] Load Balancer
- [x] Virtual Network
- [x] Network Interface
- [x] Public IP Address
- [x] Network Security Group

### Storage

- [x] Storage Account
- [x] SQL Database / SQL Server

## Architecture

### Overview

> **NOTE**
> The previous architecture used Log Analytics Workspaces as an intermediary to send logs to EventHubs. The current architecture isn't just simpler, but it's preferable for consistency of format and availability of data. Additionally, using Log Analytics Workspaces adds cost.

- Azure resources that emit resource logs are configured with diagnostic settings, which cause logs to be sent to an EventHub.
- An EventHub is an Azure managed messaging application with AMQP defaults. The Collector reads from the EventHub and sends the logs to the cloud observability backend.

There are problems with sending the logs through Log Analytics Workspaces. Avoid it if possible.

### Flow Diagram

```
**Diagnostic Settings** :arrow_right: **EventHub** :arrow_right: **Otel Collector** :arrow_right: **Cloud Observability**
```

## Prerequisites

- Terraform installed and accessible in your PATH
- Docker to build, tag, push, or debug
- Azure subscription
- An authenticated Azure CLI session or configured service principal for Terraform to access your Azure account. This is required to load config files to storage and might be required to load code for functions in the future. You will need permissions to create and manage resources in the target subscription.
- Environment variables for the Azure CLI session or service principal:
  - `ARM_CLIENT_ID`
  - `ARM_CLIENT_SECRET`
  - `ARM_SUBSCRIPTION_ID`
  - `ARM_TENANT_ID`
- An environment variable named `LS_ACCESS_TOKEN` for sending logs to the cloud observability backend.

## Directory Layout

- **`terraform/modules/`**: This includes `logs`, `common` and will include `apps` as we migrate demos for metrics.

- **`terraform/environments/`**: This contains subdirectories for environments. It aligns with a common approach to managing configs across multiple environments, but I think the structure is overkill for the project.

## Using the Makefile

The Makefile in the root of the Terraform directory provides commands to manage the complete lifecycle of the infrastructure for any specified environment. The available commands are:

- **`all`**: Runs `init`, `validate`, `plan`, `apply`, and `upload-collector-config`.
- If you just want the environment to run logs to Cloud Observability then you're done after `all` completes, but because `terraform apply` doesn't trigger a local file (collector config) to upload you'll need to use the make rule `upload-collector-config` to put a fresh config to the storage account. If you're developing the terraform IasC then you'll want to use this command the most, because it valitates, fmts, and applies.
- If you're developing Collector configuration then you'll need to upload the config then manually restart the collector. `restart-collector` would be a good make rule to add, but it isn't implemented.

## TODO

### Automation

- [ ] Add a make rule to Restart the Collector (bounce to load new config)
- [ ] Remove hard-coded values from Makefile (just in `upload-collector-config` for now)
- [ ] Add a make rule to compare attributes (semconv check)

## Work Recommended for the EventHub Receiver

- Migrate to `github.com/Azure/azure-sdk-for-go/sdk/messaging/azeventhubs` from `github.com/Azure/azure-event-hubs-go/v3`.
- The latter was deprecated and migration recommended in July, 2023 (see: <https://github.com/Azure/azure-event-hubs-go/pull/289>).
  - Improves performance
  - Provides better authentication
  - Can simplify code, depending on usage

## Trouble Shooting

- **Problem: I changed the Collector config. Why didn't telemetry change?**
1. Be sure to upload the config. There's a rule in the Makefile for this.
2. You may need to restart your container, which is currently a manual process.

- **Problem: I did `make` to run the default rule, but it errored.**
1. Get the 5 digit unique code emitted and export it to your environment with `export PROJECT_ID=${five_digit_code}`.
2. Run `make` again.

- **Problem: Something else is stopping pipeline after running `make` or `apply` in another form.**
1. Check the environment variables for your containers. Resetting them after apply is manual.
2. Check the log stream. In Container Apps you'll find the log stream in the left-nav bar under "Monitoring".
