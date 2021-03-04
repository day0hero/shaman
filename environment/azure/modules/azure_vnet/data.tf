data "azurerm_resource_group" "vnet" {
  name = var.resource_group_name
}

data "azurerm_route_table" "route-table" {
  name                = "$var.vnet_name-rt"
  resource_group_name = data.azurerm_resource_group.vnet.name
}
