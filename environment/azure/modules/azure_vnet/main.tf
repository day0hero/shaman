resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = data.azurerm_resource_group.vnet.location
  resource_group_name = data.azurerm_resource_group.vnet.name
  tags                = var.tags
}

resource "azurerm_route_table" "route-table" {
  name                          = "$var.vnet_name-rt"
  location                      = data.azurerm_resource_group.vnet.location
  resource_group_name           = data.azurerm_resource_group.vnet.name
  disable_bgp_route_propogation = var.disable_bgp_route_propogation
}
