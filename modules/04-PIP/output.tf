output "public_ip_ids" {
    value = { for p, pip in azurerm_public_ip.pip : p => pip.id }
  
}