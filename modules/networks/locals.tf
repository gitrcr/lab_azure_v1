# locals.tf network module
locals {
  lab_subnets = {
    svnet-0 = {
      name             = "svnet-0"
      address_prefixes = ["10.16.0.0/24"]
    }
    svnet-1 = {
      name             = "svnet-1"
      address_prefixes = ["10.16.1.0/24"]
    }
  }
}