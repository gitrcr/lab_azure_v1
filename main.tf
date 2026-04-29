# main.tf root
module "resource_group" {
  source          = "./modules/resource_group"
  lab_rg_name     = local.lab_rg_name
  lab_rg_location = local.lab_rg_location
  # lab_subscription_id = var.lab_subscription_id

  providers = {
    azurerm           = azurerm
    azurerm.lab_azure = azurerm.lab_azure
  }
}

module "networks" {
  source = "./modules/networks"
  # lab_subscription_id   = var.lab_subscription_id
  lab_rg_name     = module.resource_group.lab_rg_name
  lab_rg_location = module.resource_group.lab_rg_location

  lab_vnet_name          = local.lab_vnet_name
  lab_vnet_address_space = local.lab_vnet_address_space

  providers = {
    azurerm           = azurerm
    azurerm.lab_azure = azurerm.lab_azure
  }
}

module "freetier" {
  source           = "./modules/freetier"
  free_rg_name     = local.free_rg_name
  free_rg_location = local.free_rg_location

  # free_subscription_id = var.free_subscription_id

  free_vnet_name          = local.free_vnet_name
  free_vnet_address_space = local.free_vnet_address_space

  providers = {
    azurerm.freetier = azurerm.freetier
  }

}

