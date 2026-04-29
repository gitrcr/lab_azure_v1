module "rg" {
  source              = "./modules/resource_group"
  lab_rg_name         = local.lab_rg_name
  lab_rg_location     = local.lab_rg_location
  lab_susbcription_id = var.lab_subscription_id

  providers = {
    azurerm           = azurerm
    azurerm.lab_azure = azurerm.lab_azure
  }
}

module "networks" {
  source                 = "./modules/networks"
  lab_susbcription_id    = var.lab_subscription_id
  lab_rg_name            = module.rg.lab_rg_name
  lab_rg_location        = module.rg.lab_rg_location

  lab_vnet_name          = local.lab_vnet_name
  lab_vnet_address_space = local.lab_vnet_address_space

  providers = {
    azurerm           = azurerm
    azurerm.lab_azure = azurerm.lab_azure
  }
}
