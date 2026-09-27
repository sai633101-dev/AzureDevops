resource "azurerm_virtual_desktop_host_pool" "hp" {
  name                = var.hostpool_name
  location            = var.location
  resource_group_name = var.rg_name
  type                = "Pooled"
  load_balancer_type  = "BreadthFirst"
}

output "id" {
  value = azurerm_virtual_desktop_host_pool.hp.id
}
