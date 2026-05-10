variable "assocs" {
    type = map(object({
      nic_key = string
      nsg_key = string
    }))
  
}

variable "nic_ids" {
  type = map(string)
}

variable "nsg_ids" {
  type = map(string)
}

variable "subnet_assocs" {}

variable "subnet_ids" {}