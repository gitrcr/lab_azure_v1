# Create a Resource Group for Free Tier
resource "azurerm_resource_group" "free_rg" {
  provider = azurerm.freetier
  name     = var.free_rg_name
  location = var.free_rg_location

  tags = {
    environment = "freetier_env"
  }
}


# Create a Default Virtual Network
resource "azurerm_virtual_network" "vnet-free" {
  provider            = azurerm.freetier
  name                = var.free_vnet_name
  location            = var.free_rg_location
  resource_group_name = var.free_rg_name
  address_space       = var.free_vnet_address_space

  tags = {
    environment = "freetier_env"
  }
}

## Subnet Configuration
resource "azurerm_subnet" "free_subnets" {
  for_each = local.free_subnets

  provider             = azurerm.freetier
  resource_group_name  = var.free_rg_name
  virtual_network_name = azurerm_virtual_network.vnet-free.name
  name                 = each.value.name
  address_prefixes     = each.value.address_prefixes
}


## Public IP Configuration

# Create a Public IP

