data "azurerm_resource_group" "dev" {
  name = var.dev_rg_name
}

data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "example" {
  name                        = var.keyvault_name
  location                    = data.azurerm_resource_group.dev.location
  resource_group_name         = data.azurerm_resource_group.dev.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}