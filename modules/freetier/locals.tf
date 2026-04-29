# locals.tf network module
locals {
  # Common Tags
  free_tags = {
    Environment = "free-tier"
  }
  # Resource Group Variables
  free_rg_name     = "rg-free-tier"
  free_rg_location = "westeurope"

  # Virtual Network Variables

  free_subnets = {
    svnet-free-0 = {
      name             = "svnet-free-0"
      address_prefixes = ["10.96.0.0/24"]
    }
    svnet-free-1 = {
      name             = "svnet-free-1"
      address_prefixes = ["10.96.1.0/24"]
    }
  }
}