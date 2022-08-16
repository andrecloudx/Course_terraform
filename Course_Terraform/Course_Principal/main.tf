## Iniciando com os blocos do terraform
## Aqui iniciaremos como funciona a estrutura de blocos do terraform


## •	Terraform	
## •	Providers
## •	Resources
## •	Data
## •	Module
## •	Variable
## •	Outputs
## •	Locais
 
terraform  {
    ## diversas configurações basicas do terraform

}

provider "nome do provider" {

    ## configuração necessaria do AWS

}

resource "aws_instance" "InstanciaEC2" {

    ## E apenas um nome interno para referenciar esse resource me outros blocos posteriormente
  
}

data "aws_ami" "ami" {
    ## O data vai buscar informações fora do codigo do terraform para ser usado no terraform
    ## por exemplo, aqui ele vai buscar informações de imagens da AWS.
    ## nome que faça referencia aquilo que nos estamos querendo trazer de informação pra cá
  
}

module "vpc" {
    ## Se eu quiser usar um module de VPC.
    ## O bloco de modeule ele serve tanto pra referenciar um modulo que você cria, no subdiretorio da sua configuração
    ## Como tambem serve pra referenciar o modulo da comunidade, o modulo do registro do terraform
      
}

variable "ip" {
    ## E uma declaração de variavel que você vai usar dentro da sua configuração do terraform.description.
    ## Aqui dentro vai a configuração da variavel por exemaplo a IP
}

output "vm1_ip" {
    ## Output e um recurso do terraform pra pegar alguma informação de dentro do codigo do terraform, do que o terraform criou
    ## fazer o output pra fora dessa documentação pra poder ser usado por uma outra recurso da sua maquina, ou Pipeline, ou o que quiser
    ## ok
}

locals {
  ## O locals basicamente serve pra você pegar funções ou expressões que você usa muito repetidamente dentro do terraform
  ## da um nome pra ela, e ao inves de você ter que ficar repetindo aquele codigo toda vêz, você apenas chama esse codigo, pelo nome que declaramos aqui, e assim que funciona o locals
}

## Overview dos blocos do terraform concluida.
