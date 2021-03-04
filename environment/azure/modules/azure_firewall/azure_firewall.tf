resource "azurerm_public_ip" "azure_pip" {
  name = var.firewall_public_ip_name
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method = "Static"
  sku   = var.sku
}

resource "azurerm_firewall" "azure_fw" {
  name = var.azure_firewall_name
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  
  ip_configuration {
    name = "configuration"
    subnet_id = azurerm_subnet.
    public_ip_address_id = azurerm_public_ip.azure_pip.id
  }
}

resource "azurerm_firewall_application_rule_collection" "azure_fw_rule" {
  name = 
  azure_firewall_name = azurerm_firewall.azure_fw.name
  resource_group_name = azurerm_resource_group.rg.name
  priority = 100
  action = "Allow"
  
  rule {
    name = var.firewall_rule_name

    source_addresses = [
      ]

    target_fqdns = [
      ]

    protocol {
      port = 
      type = 
    }
  }
}
