

variable "rgs" {
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}

variable "virtual_net" {
  type = map(object({
    vnet_name           = string
    location            = string
    resource_group_name = string
    address_space       = list(string)

    subnet = map(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}

variable "virtual_vm" {
  type = map(object({
    vm_name             = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    admin_password      = string
    nic_name            = string

  }))
}

variable "pip" {
  type = map(object({
    public_ipname       = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "security" {
    
}

variable "nsg" {
    type = map(object({
    nsg_name=string
    location=string
    resource_group_name=string
    }))
}


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


variable "key_vault" {
  type = map(object({
    key_vault_name      = string
    location            = string
    resource_group_name = string
  }))
}

