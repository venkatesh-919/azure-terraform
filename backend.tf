terraform {
  backend "azurerm" {
    resource_group_name  = "dev-rg"
    storage_account_name = "terraformazureinfra"
    container_name       = "backendstatefile"
    key                  = "terraform.tfstate"
  }
}