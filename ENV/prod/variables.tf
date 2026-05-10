variable "rgs" {
    type = map(object({
      resource_group_name = string
      location = string
    }))
  
}

variable "vnets" {
    type = map(object({
      vnet_name = string
      address_space = list(string)
      location = string
      resource_group_name = string
    }))
  
}