# locals.tf network module
locals {
  lab_subnets = {
    subnet0 = {
      name             = "lab_subnet0"
      address_prefixes = ["10.16.0.0/24"]
    }
    subnet1 = {
      name             = "lab_subnet1"
      address_prefixes = ["10.16.1.0/24"]
    }
  }
}