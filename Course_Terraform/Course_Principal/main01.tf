## Iniciando a configuração dos blocos usando:
## Os 6 blocos:

/*
    1-required_version,
    2-require_provider,
    3-backend,
    4-cloud,
    5-experiments
    6-provider_meta

*/
terraform {
  /*Iremos mostrar como os operadores de version funcionam:
      Para uma versão especifica eu utilizo: 1.1.0 ou = 1.1.0
      para versões do terraform > ou = a 1.0.0 ou versões < 1.2.0 Nota que só o intervalo de versões de terraform entre estes 02 vai funcionar, ## required_version = ">= 1.0.0, < 1.2.0" podemos fazer dessa forma também
      para versões do terraform ~> 1.0.0 #     Este codigo vai funcionar com todos as versões de terraform desde a 1.0.0 até a 1.1.n
    */
  required_version = "= 1.1.0"

  /*Iremos mostrar os Require_Providers:
      Esses são, quais os providers que iremos usar dentro dessa configuração do terraform, por exemplo aws:
    */
  required_providers {
    ## 1° Step E dentro do next block, temos que indicar a version da AWS, da mesma forma que indicamos o required_version (=, >, =>, <= ou ~>)
    ## 2° Step tenho que indicar o source (origem) que será "hashcorp/aws"
    ## Nota: as versões do required_providers, e required_versions, sempre estarão na documentação especifica do terraform, de acordo com o providers

    aws {
      version = "~>3.50.0"
      source  = "hashicorp/aws"
    }

    ## podemos adicionar mais de um provider:

    azurerm {
      version = "2.70.0"
      source  = "hashicorp/azurerm"
    }

  }
    ## bloco do backend
    backend "s3" {
        ## aqui dentro vai toda a configuração sobre esse state do terraform, que será armazenado no caso aqui
        ## em uma bucket S3
      
    }    

}

provider "aws" {
    

}

resource "aws_instance" "vm1" {

}

module "vpc" {

}

data "" "aws_ami" "ami" {

}

variable "ip" {

}

output "vm1_ip" {

}

locals {

}
