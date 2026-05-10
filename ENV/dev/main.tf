module "rgm" {
    source = "../../modules/01-resource-group"
    rgs = var.rgs
  
}

module "vnetm" {
    source = "../../modules/02-virtual_network"
    vnets = var.vnets
    depends_on = [ module.rgm ]
  
}

module "snetm" {
    source = "../../modules/03-subnet"
    subnets = var.subnets
    depends_on = [ module.rgm, module.vnetm ]
}

module "pipm" {
    source = "../../modules/04-PIP"
    pips = var.pips
    depends_on = [ module.rgm ]
  
}

module "nicm" {
    source = "../../modules/05-NIC"
    nics = var.nics
    subnet_ids = module.snetm.subnet_ids
    public_ip_ids = module.pipm.public_ip_ids
    depends_on = [ module.rgm, module.vnetm, module.snetm, module.pipm ]
  
}

module "nsgm" {
    source = "../../modules/06-NSG"
    nsgs = var.nsgs
    depends_on = [ module.rgm ]
  
}

module "nsg_nic" {
    source = "../../modules/07-nsg_association"
    assocs = var.assocs
    nic_ids = module.nicm.nic_ids
    nsg_ids = module.nsgm.nsg_ids
    depends_on = [ module.nicm, module.nsgm ]
  
}

module "vmm" {
    source = "../../modules/08-vm"
    vms = var.vms
    nic_ids = module.nicm.nic_ids
    depends_on = [ module.nicm ]
  
}