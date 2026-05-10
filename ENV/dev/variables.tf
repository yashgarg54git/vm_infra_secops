variable "rgs" {
  type = map(object({
    resource_group_name = string
    location            = string
  }))

}

variable "vnets" {
  type = map(object({
    vnet_name           = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
  }))

}

variable "subnets" {
  type = map(object({
    subnet_name         = string
    resource_group_name = string
    vnet_name           = string
    address_prefixes    = list(string)
  }))

}

variable "pips" {
  type = map(object({
    pip_name            = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))

}

variable "nics" {
  type = map(object({
    nic_name            = string
    location            = string
    resource_group_name = string
    subnet_key          = string
    pip_key             = string
  }))

}

variable "nsgs" {
  type = map(object({
    nsg_name            = string
    location            = string
    resource_group_name = string
  }))

}

variable "assocs" {
  type = map(object({
    nic_key = string
    nsg_key = string
  }))

}

variable "subnet_assocs" {}

variable "vms" {
  type = map(object({
    vm_name             = string
    location            = string
    resource_group_name = string
    nic_key             = string
    vm_size             = string
    admin_username      = string
  }))

}

