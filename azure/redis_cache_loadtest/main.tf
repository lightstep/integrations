# Create an Azure Container Instance with k6
resource "azurerm_container_group" "example" {
  name                = "k6-loadtest"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  ip_address_type     = "Public"
  os_type             = "Linux"
  restart_policy      = "Never"

  container {
    name   = "k6-loadtest"
    image  = "loadimpact/k6"
    cpu    = "1"
    memory = "1.5"

    commands = [
      "run",
      "--vus", var.k6_vus,
      "--duration", var.k6_duration,
      "-e", "REDIS_HOST=${azurerm_redis_cache.example.hostname}",
      "-e", "REDIS_PORT=${azurerm_redis_cache.example.ssl_port}",
      "-e", "REDIS_PASSWORD=${azurerm_redis_cache.example.primary_access_key}",
      "/mnt/loadtest/loadtest.js"
    ]

    volume {
        //
        name       = "loadtest"
        mount_path = "/mnt/loadtest"
        read_only  = true
    }
  }
}

# Output the Redis Cache hostname
output "redis_cache_hostname" {
  value = azurerm_redis_cache.example.hostname
}
