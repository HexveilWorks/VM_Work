

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = ""
    storage_account_name =""
    container_name       = ""
    key                  = ""
  }
}


provider "azurerm" {
  features {}
  subscription_id = "1e4f7c75-847c-48f7-b236-218b82663529"
}