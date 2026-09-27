resource "azurerm_virtual_desktop_workspace" "ws" {
  name                = var.workspace_name
  location            = var.location
  resource_group_name = var.rg_name
}

output "id" {
  value = azurerm_virtual_desktop_workspace.ws.id
}
