# locals.tf root
locals {
  # Common Tags
  #common_tags = {
  #  environment = "dev"
  #  project     = "lab_azure_v1"
  #}

  # Resource Group Variables
  free_rg_name     = "rg-free-env"
  free_rg_location = "eastus"

  # Virtual Network Variables
  free_vnet_name          = "vnet-free"
  free_vnet_address_space = ["10.96.0.0/16"]
}   