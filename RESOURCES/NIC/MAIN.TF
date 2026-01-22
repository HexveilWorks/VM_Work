

resource "azurerm_network_interface" "example" {
    for_each = var.NIC

  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

 dynamic "ip_configuration"{
    for_each = each.value.ip_configurations

content{
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.public_ip[each.key].id
}
   
  }
}