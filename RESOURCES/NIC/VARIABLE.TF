

variable "NIC" {
  type = map(object({
    nic_name            = string
    location            = string
    resource_group_name = string
    ip_configuration = map(object({
      name                          = string
      subnet_id                     = list(string)
      public_ip_address_id          = list(string)
      private_ip_address_allocation = string
    }))
  }))
}
