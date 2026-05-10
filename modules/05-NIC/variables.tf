variable "nics" {
    type = map(object({
      nic_name = string
      location = string
      resource_group_name = string
      subnet_key = string
      pip_key = string
    }))
  
}

variable "subnet_ids" {}
variable "public_ip_ids" {}