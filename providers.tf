# providers.tf
provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias           = "lab_azure"
  subscription_id = var.lab_subscription_id
  tenant_id       = var.lab_tenant_id
  client_id       = var.lab_client_id
  client_secret   = var.lab_client_secret
  features {}
}


