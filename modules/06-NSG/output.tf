output "nsg_ids" {
    value = { for n, nsg in azurerm_network_security_group.nsg : n => nsg.id }
  
}