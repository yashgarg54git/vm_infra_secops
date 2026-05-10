module "rgm" {
    source = "../../modules/01-resource-group"
    rgs = var.rgs
}

module "vnetm" {
    source = "../../modules/02-virtual_network"
    vnets = var.vnets
  
}