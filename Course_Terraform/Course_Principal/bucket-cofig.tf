## criação de uma bucket dentro da AWS
## Create a bucket inside console in Amazon Web Services (AWS) provider the services global

terraform {

  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "1.0.0"
    }
  }
}

## podemos ter o risco de deixar nossas credencias de usuario no nosso codigo: 
## O mais recomendavel a se fazer e criar um environment variable, para armazenar este tipo de crencial da AWS
## Onde nós criamos no IAM

provider "aws" {

  region     = "us-east-1"

  ## Criação de default Tags para podermos identificar quem foi o criador e por onde e gerenciado a infra;
  
  default_tags {

    tags {

        owner = "Andre-Panizza"
        managed-by = "terraform"
    }
  }
  
}

