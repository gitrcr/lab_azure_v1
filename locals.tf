# locals.tf root
locals {
  # Common Tags
  #common_tags = {
  #  environment = "dev"
  #  project     = "lab_azure_v1"
  #}

  # Resource Group Variables
  lab_rg_name     = "rg-lab-env"
  lab_rg_location = "eastus"

  # Virtual Network Variables
  lab_vnet_name          = "vnet-lab"
  lab_vnet_address_space = ["10.16.0.0/16"]
}   