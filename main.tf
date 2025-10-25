provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  resource_provider_registrations = "none"
  
}

/*resource "azurerm_resource_group" "rg" {

    name = var.azurerm_resource_group
    location = var.azurerm_location
  
}*/

resource "azurerm_storage_account" "storage" {
    name = var.azurerm_storage_account
    account_tier = "Standard"
    location = var.azurerm_location
    resource_group_name = var.azurerm_resource_group
    account_replication_type = "LRS"
}

/*terraform {
  backend "azurerm" {
    resource_group_name  = "1-c57501ee-playground-sandbox"
    storage_account_name = "testingon25th2025"
    container_name       = "cont"
    key                  = "terraform.tfstate"
  }
}*/