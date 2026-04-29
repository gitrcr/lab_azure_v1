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
