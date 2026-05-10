output "subnet_ids" {
    value = { for s, subnet in azurerm_subnet.subnet : s => subnet.id }
  
}