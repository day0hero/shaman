output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet_location" {
  value = azurerm_virtual_network.vnet.location
}

output "vnet_address_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "vnet_subnets" {
  value = azurerm_subnet.subnet.*.id
}

output "route_table_id" {
  value = azurerm_route_table.route_table.id
}

output "route_table_name" {
  value = azurerm_route_table.route_table.name
}
