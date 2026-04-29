provider "azurerm" {
  alias           = "lab_azure"
  subscription_id = var.lab_subscription_id
  tenant_id       = var.lab_tenant_id
  client_id       = var.lab_client_id
  client_secret   = var.lab_client_secret
  features {}
}

provider "azurerm" {
  alias           = "freetier"
  subscription_id = var.free_subscription_id
  tenant_id       = var.free_tenant_id
  client_id       = var.free_client_id
  client_secret   = var.free_client_secret
  features {}
}


