

variable "rgs1" {
    type = map(object({
      resource_group_name = string
      location            = string
    }))
  
}