
variable "pip" {
  type = map(object({
    public_ipname       = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}
