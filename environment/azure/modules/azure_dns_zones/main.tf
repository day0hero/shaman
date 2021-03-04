resource "azurerm_private_dns_zone" "private_dns" {
  name                = var.dns_private_zone_name
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_dns_zone" "public_dns" {
  name                = var.dns_public_zone_name
  resource_group_name = azurerm_resource_group.rg.name
}
