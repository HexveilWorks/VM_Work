

variable "NIC1" {
  type = map(object({
    nic_name            = string
    location            = string
    resource_group_name = string

    subnet_name         = string
    vnet_name           = string
    public_ip_name      = string

    ip_configuration = map(object({
      name                          = string
      private_ip_address_allocation = string
    }))
  }))
}

