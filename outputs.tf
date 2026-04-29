# outpouts root

output "lab_rg_name" {
  description = "Name of the Resource Group created"
  value       = module.resource_group.lab_rg_name
}

output "lab_rg_location" {
  description = "Location of the Resource Group created"
  value       = module.resource_group.lab_rg_location
}

output "lab_vnet_id" {
  description = "ID of the VNet created"
  value       = module.networks.lab_vnet_id
}

output "lab_subnet_ids" {
  description = "IDs of the subnets created"
  value       = module.networks.lab_subnet_ids
}
