output "nic_ids" {
    value = { for n, nic in azurerm_network_interface.nic : n => nic.id }
  
}