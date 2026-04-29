# main.tf networks module
# Create a Default Virtual Network
resource "azurerm_virtual_network" "lab_vnet" {
  provider            = azurerm.lab_azure
  name                = var.lab_vnet_name
  location            = var.lab_rg_location
  resource_group_name = var.lab_rg_name
  address_space       = var.lab_vnet_address_space

  tags = {
    environment = "lab_env"
  }
}

## Subnet Configuration

resource "azurerm_subnet" "lab_subnets" {
  for_each = local.lab_subnets

  provider             = azurerm.lab_azure
  resource_group_name  = var.lab_rg_name
  virtual_network_name = azurerm_virtual_network.lab_vnet.name

  name             = each.value.name
  address_prefixes = each.value.address_prefixes
}


## Public IP Configuration

# Create a Public IP

