# dev.tfvars

rgs = {
  rg1 = {
    resource_group_name = "dev-rg"
    location            = "Central India"
  }
}

vnets = {
  vnet1 = {
    vnet_name           = "dev-vnet"
    address_space       = ["10.0.0.0/16"]
    location            = "Central India"
    resource_group_name = "dev-rg"
  }
}

subnets = {
  subnet1 = {
    subnet_name         = "frontend-subnet"
    resource_group_name = "dev-rg"
    vnet_name           = "dev-vnet"
    address_prefixes    = ["10.0.1.0/24"]
  }

  subnet2 = {
    subnet_name         = "backend-subnet"
    resource_group_name = "dev-rg"
    vnet_name           = "dev-vnet"
    address_prefixes    = ["10.0.2.0/24"]
  }
}

pips = {
  pip1 = {
    pip_name            = "dev-pip-1"
    location            = "Central India"
    resource_group_name = "dev-rg"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}

nics = {
  nic1 = {
    nic_name            = "dev-nic-1"
    location            = "Central India"
    resource_group_name = "dev-rg"

    subnet_key = "subnet1"
    pip_key    = "pip1"
  }
}

nsgs = {
  nsg1 = {
    nsg_name            = "dev-nsg-1"
    location            = "Central India"
    resource_group_name = "dev-rg"
  }
}

assocs = {
  assoc1 = {
    nic_key = "nic1"
    nsg_key = "nsg1"
  }
}

subnet_assocs = {

  assoc1 = {
    subnet_key = "subnet1"
    nsg_key    = "nsg1"
  }

}

vms = {
  vm1 = {
    vm_name             = "dev-vm-1"
    location            = "Central India"
    resource_group_name = "dev-rg"

    nic_key        = "nic1"
    vm_size        = "Standard_D2s_v3"
    admin_username = "azureyashuser"
  }
}