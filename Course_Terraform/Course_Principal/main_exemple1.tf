## main_exemple1.tf
## Temos aqui um bloco da configuração do terraform
terraform {
    required_version = "value"
    required_providers {
      aws {
        version = "3.7.0"
        source = "hashcorp/aws"
        
      }
    }
}

## Temos o bloco do Provider da AWS

provider "aws" {
    region = "us-east-1"

    default_tags {
        tags = {
            owner = "AndrePanizza"
            manager-by = "terraform"
        }
    }    
}







