

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = " pipeline_rg"
    storage_account_name = "pipeline99storage"
    container_name       = "pipelinecontainer"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
  subscription_id = "1e4f7c75-847c-48f7-b236-218b82663529"
}