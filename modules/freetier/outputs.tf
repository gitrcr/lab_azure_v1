# outputs.tf file for network module

output "free_vnet_name" {
  description = "Name of the created VNet"
  value       = var.free_vnet_name
}

output "free_subnet_ids" {
  description = "IDs de las subnets creadas"
  value = {
    for k, s in azurerm_subnet.free_subnets : k => s.id
  }
}

output "free_rg_name" {
  description = "ID del Resource Group creado"
  value       = var.free_rg_name
}

output "free_rg_location" {
  description = "Ubicación del Resource Group creado"
  value       = var.free_rg_location
}
