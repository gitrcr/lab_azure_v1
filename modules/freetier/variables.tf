variable "free_rg_name" {
  description = "The name of the resource group for the free environment."
  type        = string
}

variable "free_rg_location" {
  description = "The location of the resource group for the free environment."
  type        = string
}

variable "free_vnet_name" {
  description = "The name of the virtual network for the free environment."
  type        = string
}

variable "free_vnet_address_space" {
  description = "The address space for the virtual network for the free environment."
  type        = list(string)
}

# variable "free_subnet_name" {}
# variable "free_subnet_address_prefixes" {}

