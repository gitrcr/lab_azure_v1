# Variables network module
variable "lab_susbcription_id" {
  description = "The subscription ID for the lab environment."
  type        = string
}

variable "lab_rg_name" {
  description = "The name of the resource group for the lab environment."
  type        = string
}

variable "lab_rg_location" {
  description = "The location of the resource group for the lab environment."
  type        = string
}

variable "lab_vnet_name" {
  description = "The name of the virtual network for the lab environment."
  type        = string
}

variable "lab_vnet_address_space" {
  description = "The address space for the virtual network for the lab environment."
  type        = list(string)
}

# variable "lab_subnet_name" {}
# variable "lab_subnet_address_prefixes" {}

