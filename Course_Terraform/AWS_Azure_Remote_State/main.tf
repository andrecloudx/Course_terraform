##criando os Providers: AWS e Azure

terraform {

  required_version = "1.0.0"
  required_providers {
    aws {
      version = "3.73.0"
      source  = "hascorp/aws"

    }
    azurerm {
      version = "2.94.0"
      source  = "hascorp/azurerm"
    }

  }

}

provider "aws" {
  aws = {
    region = "us-east-1"

    default_tags = {
      tags = {
        owner      = "Andre Panizza"
        managed-by = "Terraform"
      }
    }
  }

}

provider "azurerm" {

  features {}

}
