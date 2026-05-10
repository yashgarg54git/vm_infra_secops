resource "azurerm_network_security_group" "nsg" {
    for_each = var.nsgs
    name                = each.value.nsg_name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
  


  # SSH

  security_rule {
    name                       = "Allow-SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"

    source_port_range          = "*"
    destination_port_range     = "22"

    source_address_prefix = "122.162.148.55/32"
    destination_address_prefix = "*"
  }

  

  # HTTPS

  security_rule {
    name                       = "Allow-HTTPS"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"

    source_port_range          = "*"
    destination_port_range     = "443"

    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}