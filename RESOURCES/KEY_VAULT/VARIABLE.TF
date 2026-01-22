

variable "key_vault1" {
  type = map(object({
    keyvault_name      = string
    location            = string
    resource_group_name = string
  }))
}
