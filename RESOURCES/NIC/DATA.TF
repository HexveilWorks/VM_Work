

data "azurerm_public_ip" "public_ip" {

  name                = "name_of_public_ip"
  resource_group_name = "name_of_resource_group"
}



data "azurerm_subnet" "subnet" {
    for_each = var.NIC

  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.resource_group_name
}