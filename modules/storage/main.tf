data "azurerm_resource_group" "dev" {
  name = var.dev_rg_name
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.dev.name
  location                 = data.azurerm_resource_group.dev.location
  account_tier             = var.account_tier
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}