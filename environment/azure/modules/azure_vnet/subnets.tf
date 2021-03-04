resource "azure_subnet" "public_subnet" {
  count                = length(var.public_subnet_names)
  name                 = var.public_subnet_names[count.index]
  resource_group_name  = data.azurerm_resource_group_name.vnet.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.public_subnet_prefixes[count.index]]
}

resource "azure_subnet" "controlplane_subnet" {
  count                = length(var.controlplane_subnet_names)
  name                 = var.controlplane_subnet_names[count.index]
  resource_group_name  = data.azurerm_resource_group_name.vnet.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.controlplane_subnet_prefixes[count.index]]
}

resource "azure_subnet" "compute_subnet" {
  count                = length(var.compute_subnet_names)
  name                 = var.compute_subnet_names[count.index]
  resource_group_name  = data.azurerm_resource_group_name.vnet.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.compute_subnet_prefixes[count.index]]
}

