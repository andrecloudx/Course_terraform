## criação das configurações e backend-Azure

terraform {

  required_version = "~> 1.0.0"
  required_providers {

    azurerm = {
      source  = "hashcorp/azurerm"
      version = "= 3.73.0"

    }

  }
  backend "azurerm" {

    resource_group_name  = "storage_account_resource_group"
    storage_account_name = "andrepanizzadossantosstoragedaccount"
    container_name       = "terraform-container"
    key                  = "Azure_Vnet/terraform.tfstate"  //diretorio de pastas do storaged-account

  }

}

provider "azurerm" {

  features {}

}

## variable environment in azure:

## export
## export
## export
## export
