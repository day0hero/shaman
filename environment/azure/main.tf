provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.region

  tags = {
    environment = "MAG"
    createdBy   = "jrickard"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.region
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "public_subnet" {
  //count                = length(var.public_subnet_names)
  count                = var.public_subnet_count
  name                 = var.public_subnet_names[count.index]
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.public_subnet_prefixes[count.index]]
}

resource "azurerm_subnet" "controlplane_private" {
  count = var.controlplane_subnet_count
  name = var.controlplane_private_names
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name: azurerm_virtual_network.vnet.name
  address_prefixes = [var.controlplane_subnet_prefixes[count.index]]
}


#resource "azurerm_private_dns_zone" "private_dns" {
#  name                = var.dns_private_zone_name
#  resource_group_name = azurerm_resource_group.rg.name
#}

resource "azurerm_dns_zone" "public_dns" {
  name                = var.dns_public_zone_name
  resource_group_name = azurerm_resource_group.rg.name
}
