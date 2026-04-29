# outputs.tf file for network module

output "lab_vnet_id" {
  description = "ID de la VNet creada"
  value       = azurerm_virtual_network.lab_vnet.id
}

output "lab_subnet_ids" {
  description = "IDs de las subnets creadas"
  value       = {
    for k, s in azurerm_subnet.lab_subnets : k => s.id
  }
}
