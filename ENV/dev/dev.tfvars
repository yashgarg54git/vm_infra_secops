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

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8JfafSfdTk/dlx0EzGu+FWyxlZgJSwE6B6heRKD1p1LFPQLQZylxbyHVZ2ztfxulxqMuKkPBDAJEzwPp5tmiK8xRTIT2kyJbj7roSvEN4qEixgYAHdTmKx2RPMrgjS1PAhQ1X3//4nANj5fzxBpaIGJA3S2g2HuqgJaC0vA4Tvv7hvrQOkiPyZMw4UFpEMHdbEvuWWZ6eOtx2MQrOxaW+70S07al/oAc07TePMzN7WeSKQrEANmFYoEl1h0E34MC38J1mlDzMFdVRZb408ONaowvOJBXOJEge8ZMeuNxjYcpTRhuXccffSUIynH2f3YW07IfnY46y1nWzOAjHUjaWOVEHT0ohcWudg1MqCw1p1McpzoGV1tta+91DKvCgip9w6cgpGQHEbN1mhdG+SZojUZAPGhXPcVYlfhzpvej7z1vqFm2lU6VUF/7TT+HaZHVuIXLaNhukk0tJXoEc9G2HhHfPiaqIIhM75BCdtX2xWh5fjVIjnz0BRD+wMr5dl3m/CgyBjfGe+VUqbw9eK57TnVrsHbikfzNYNO2UP4mrnWdLHAn1n1x7wB0BZpTu7YQvjerPMAKFT0xr9FowJYuJ5AZ/8TnHRCpToQwmvthJ3DQU4yWWCDeE2gb4dfxyBMK3r4WfHjSpqWNFkuIJn1RezFKe2R7PvVDAZbka8F+KpQ== yashg@DESKTOP-IJ74814"
