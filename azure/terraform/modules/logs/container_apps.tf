// ## Challenges:
// Some users have struggle running Collectors in Azure Container Apps.
// * To understand the issues, see: https://github.com/microsoft/azure-container-apps/issues/208
// * To consider solutions, see:
// - https://www.honeycomb.io/blog/opentelemetry-collector-azure-container-apps
// - https://blog.depechie.com/posts/2022-10-13-opentelemetry-on-azure-container-apps
//
// ## Mental model
// In k8s, a Container App Environment would be a namespace and a container app a pod

resource "azurerm_container_app" "otelcol_app" {
  container_app_environment_id = azurerm_container_app_environment.container_app_env.id
  name                         = "${var.rg_data.prefix}-otelcol-app-${var.rg_data.suffix}"
  resource_group_name          = var.rg_data.name
  revision_mode                = "Single"
  ingress {
    external_enabled = false
    target_port      = "13133" // default for collector health_check extension
    transport        = "tcp"
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.uai.id]
  }
  template {
    max_replicas = 2
    min_replicas = 1
    container {
      command = ["/otelcol-contrib", "--config", "/conf/eventhub-only.yaml"]
      cpu     = 0.5
      // TODO: configure to pin versions
      image   = "otel/opentelemetry-collector-contrib:latest"
      memory  = "1Gi"
      name    = "${var.rg_data.prefix}-otelcol-container"

      env {
        name  = "LS_ACCESS_TOKEN"
        value = var.secret_ls_access_token
      }
      env {
        name = "AZURE_EVENTHUB_CONNECTION_LOGS"
        // can validate with query in root terraform dir like `terraform output eventhub_connection_string`
        value = azurerm_eventhub_authorization_rule.eh_logs_auth_rule.primary_connection_string
      }

      env {
        name = "AZURE_EVENTHUB_CONNECTION_METRICS"
        // can validate with query in root terraform dir like `terraform output eventhub_connection_string`
        value = azurerm_eventhub_authorization_rule.eh_logs_auth_rule.primary_connection_string
      }


      env {
        name  = "SCC_ENDPOINT"
        value = azurerm_container_app.semconv_app.name
        # value = "${var.rg_data.prefix}-scc-app-${var.rg_data.suffix}.${var.rg_data.location}"
      }

      // Limited to Container Apps Environment
      volume_mounts {
        name = "otelcol-cfg-volume"
        path = "/conf"
      }
    }
    volume {
      name         = "otelcol-cfg-volume"
      storage_name = azurerm_container_app_environment_storage.otelcol_cfg_storage.name
      storage_type = "AzureFile"
    }
  }
}

resource "azurerm_container_app" "semconv_app" {
  container_app_environment_id = azurerm_container_app_environment.container_app_env.id
  name                         = "${var.rg_data.prefix}-scc-app-${var.rg_data.suffix}"
  resource_group_name          = var.rg_data.name
  revision_mode                = "Single"
  ingress {
    external_enabled = false
    target_port      = 4318
    transport        = "tcp"

    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.uai.id]
  }
  template {
    max_replicas = 2
    min_replicas = 1
    container {
      command = ["/app/semantic-convention-checker", "-cfg", "/config/config.yaml"]
      cpu     = 0.5
      image   = "ghcr.io/madvikinggod/semantic-convention-checker:0.0.12"
      memory  = "1Gi"
      name    = "${var.rg_data.prefix}-scc-container-${var.rg_data.suffix}"

      volume_mounts {
        name = "scc-cfg-volume"
        path = "/config"
      }
    }
    volume {
      name         = "scc-cfg-volume"
      storage_name = azurerm_container_app_environment_storage.scc_cfg_storage.name
      storage_type = "AzureFile"
    }
  }
}

resource "azurerm_container_app_environment" "container_app_env" {
  location            = var.rg_data.location
  name                = "${var.rg_data.prefix}-container-app-env-${var.rg_data.suffix}"
  resource_group_name = var.rg_data.name
  tags                = var.rg_data.tags
}
