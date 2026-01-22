

variable "rgs1" {
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}

variable "virtual_net1" {
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

variable "virtual_vm1" {
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

variable "pip1" {
  type = map(object({
    public_ipname       = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "security1" {
    
}

variable "nsg1" {
    type = map(object({
    nsg_name=string
    location=string
    resource_group_name=string
    }))
}


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



variable "key_vault1" {
  type = map(object({
    keyvault_name      = string
    location            = string
    resource_group_name = string
  }))
}


variable "sql_server_name" {}
variable "rg_name" {}
variable "location" {}
variable "admin_username" {}
variable "admin_password" {}
variable "tags" {}




variable "sql_db_name" {}
variable "server_id" {}
variable "max_size_gb" {}
variable "tags" {}
