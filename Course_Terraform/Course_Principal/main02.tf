## continuação:

terraform {
  required_version = "~>1.2.0"

  required_providers {
    
    aws {
      version = "1.2.0"
      source  = "hashcorp/aws"
    }
    azurerm {
      version = "2.70.0"
      source  = "hashcorp/azurerm"

    }
    google {
      version {
        version = "2.20.2"
        source  = "hascorp/google"
        region  = "us-central1"
      }
    }

  }

}

provider "aws" {

}

resource "aws_instance" "vm1" {

}

data "ami_version" "aim" {

}


module "vpc" {

}

variable "vm1" {

}

output "name" {


}

locals {

}
