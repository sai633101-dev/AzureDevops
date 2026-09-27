provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = var.rg_name
    storage_account_name = var.storage_account_name
    container_name       = var.container_name
    key                  = "hostpool.tfstate"
  }
}
