// This is a magic data block in the azurerm provider that automagically populates with the current
// client config covering values like subscription_id, tenant_id, client_id, and client_secret
// which you would otherwise have to manually populate. You might use environment
// variables like the following to set them at the command line or in a script:
// ARM_SUBSCRIPTION_ID, ARM_TENANT_ID, ARM_CLIENT_ID, ARM_CLIENT_SECRET.
data "azurerm_client_config" "current" {}
