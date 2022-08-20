##criando os Providers: AWS e Azure

terraform {

  required_version = "1.0.0"
  required_providers {
    aws {
      version = "3.73.0"
      source  = "hascorp/aws"
    }
  }

  
  backend "s3" {
    bucket = "andrePanizza-remotestate"
    key    = "aws-vpc/terraform.tfstate" ## estrutura de diretorio onde vai meu remote state dentro do S3
    region = "us-east-1"    ## Nada mais que a região que estou que esta correta us-east-1
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

