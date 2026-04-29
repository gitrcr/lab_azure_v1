resource "azurerm_resource_group" "lab_rg" {
  provider = azurerm.lab_azure
  name     = var.lab_rg_name
  location = var.lab_rg_location
}   