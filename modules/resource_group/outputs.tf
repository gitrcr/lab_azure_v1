output "lab_rg_name" {
  description = "ID del Resource Group creado"
  value       = azurerm_resource_group.lab_rg.id
}

output "lab_rg_location" {
  description = "Ubicación del Resource Group creado"
  value       = azurerm_resource_group.lab_rg.location
}