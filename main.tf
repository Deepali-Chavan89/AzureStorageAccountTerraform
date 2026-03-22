terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.65.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "bfba029a-0d6c-4c22-a728-efbe83e35d6d"
}
resource "azurerm_resource_group" "rg" {
  name    = "rg-terraform"
  location = "eastus"
  
}
resource "azurerm_storage_account" "storage" {
  name                     = "mystorageaccount8997575"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
