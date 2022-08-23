## arquivo de criação das variaveis or variables:


## types and Constraints the variables accepted in terraform
## type = string
## type = number
## type = boll

## Tipo de Construtores permitidos você especificar:

##  list(<TYPE>)
##  set(<TYPE>)
##  map(<TYPE>)
##  object({<ATTR NAME> = <TYPE>, ... })
##  tuple([<TYPE>, ...])

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
variable "location" {
  description = "Variavel que indica a região onde os recursos vão ser criados"
  type        = string
  default     = "West Europe"
}

