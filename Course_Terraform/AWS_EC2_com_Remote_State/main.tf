## Iniciando a configuração com Terraform_Remote_State_Data:
## Vamos configurar, se precisarmos trazendo as configrações do AWS-VPC 
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
    key    = "aws-vm/terraform.tfstate"
    region = "us-east-1"
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
  ## vamos mencionar o bloco do Data, pra gente buscar as informações que haviam na AWS-VPC:
  data "terraform_remote_state" "vpc" {
    backend = "s3"
    config = {
      bucket = "andrePanizza-remotestate"
      key    = "aws-vpc/terraform.tfstate"
      region = "us-east-1"
    }
  }

}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
EXAMPLE THE USAGE:

data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "hashicorp"
    workspaces = {
      name = "vpc-prod"
    }
  }
}

# Terraform >= 0.12
resource "aws_instance" "foo" {
  # ...
  subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
}

# Terraform <= 0.11
resource "aws_instance" "foo" {
  # ...
  subnet_id = "${data.terraform_remote_state.vpc.subnet_id}"
}

*/
