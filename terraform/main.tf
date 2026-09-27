module "resource_group" {
  source = "./modules/resource_group"
  rg_name = var.rg_name
  location = var.location
}

module "storage" {
  source = "./modules/storage"
  rg_name = var.rg_name
  location = var.location
  storage_account_name = var.storage_account_name
  container_name = var.container_name
}

module "keyvault" {
  source = "./modules/keyvault"
  rg_name = var.rg_name
  location = var.location
  kv_name = var.kv_name
}

module "loganalytics" {
  source = "./modules/loganalytics"
  rg_name = var.rg_name
  location = var.location
  law_name = var.law_name
}

module "hostpool" {
  source = "./modules/hostpool"
  rg_name = var.rg_name
  location = var.location
  hostpool_name = var.hostpool_name
}

module "workspace" {
  source = "./modules/workspace"
  rg_name = var.rg_name
  location = var.location
  workspace_name = var.workspace_name
}

module "application_group" {
  source = "./modules/application_group"
  rg_name = var.rg_name
  location = var.location
  application_group_name = var.application_group_name
  hostpool_id = module.hostpool.id
}
