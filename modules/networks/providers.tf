# terraform/providers.tf networks module
terraform {
  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "~>4.0"
      configuration_aliases = [azurerm.lab_azure]
    }
  }
}