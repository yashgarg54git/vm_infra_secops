resource "azurerm_network_interface_security_group_association" "assoc" {
  for_each = var.assocs

  network_interface_id = var.nic_ids[each.value.nic_key]

  network_security_group_id = var.nsg_ids[each.value.nsg_key]
}

# checkov tool detected subnet association as well, so adding that here

resource "azurerm_subnet_network_security_group_association" "subnet_assoc" {

  for_each = var.subnet_assocs

  subnet_id = var.subnet_ids[each.value.subnet_key]

  network_security_group_id = var.nsg_ids[each.value.nsg_key]
}