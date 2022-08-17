## Criação de um Storaged Account utilizando o Provider Microsoft Azure
terraform {
  required_required_version = ">= 1.0.0"  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.18.0"
    }
  }
}

provider "azurerm" {

    features {}

        
    }
