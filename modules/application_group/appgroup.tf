resource "azurerm_virtual_desktop_application_group" "ag" {
  name                = var.application_group_name
  location            = var.location
  resource_group_name = var.rg_name
  host_pool_id        = var.hostpool_id
  type                = "Desktop"
}

output "id" {
  value = azurerm_virtual_desktop_application_group.ag.id
}
