## arquivo de criação das variaveis or variables:

variable "location" {
  description = "Variavel que indica a regiaõ onde os recursos vão ser criados"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "tier da Storaged-Account"
  type        = string
  default     = "Standard"
  
  ## (optional values)
  ## validation "Um bloco para definir a validação de regras, normalmente e adicão para tipo de Restrições"
  ## sensitive  "Terraform Limita saida UI quando o variavel e usada a configuração"
  ## nullable   "Especificar se a variavel pode ser "NULL" dentro do modulo"


}

variable "account_replication_type" {
  description = "Tipo de replicação de conta do storaged-Account"
  type        = string
  default     = "LRS"
  sensitive = true
/*(podemos usar o sensitive
Se você fizer desta forma, o terraform não vai trazer o valor dessa variável quando ele fizer o plan!
)*/

  ## (optional values:)
  ## validation "um bloco para definir a validação de regras, normalmente e adição para tipo de Restriçoes"
  ## Sensitive  "Terraform Limita saida UI quando o variavel e usada a configuração"
  ## Nullable   "Especificar se a variavel pode ser NULL" dentro do modulo.

}
