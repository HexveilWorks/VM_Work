

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
