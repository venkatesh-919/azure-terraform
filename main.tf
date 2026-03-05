module "vnet" {
    source = "./modules/vnet"
    dev_rg_name = var.dev_rg_name
    nsg_name = var.nsg_name
    vnet_name = var.vnet_name
 
}

module "storage" {
    source = "./modules/storage"
    dev_rg_name = var.dev_rg_name
    storage_account_name = var.storage_account_name
    account_tier = var.account_tier
 
}

module "keyvault" {
    source = "./modules/keyvault"
    dev_rg_name = var.dev_rg_name
    keyvault_name = var.keyvault_name
    sku_name = var.sku_name
 
}