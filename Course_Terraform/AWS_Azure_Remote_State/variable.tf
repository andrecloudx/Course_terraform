variable "location" {
  description = "Descrição da localização do meu Storaged-account da azure Region"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "Descrição para o account-Tier da Azure"
  type        = string
  default     = "Stardard"

}
variable "account_replication_type" {
  description = "Configuração do Account-Replication-Type o tipo: LRS, GRS, RAGRS, GZRS, ZRS and RAGZRS by default"
  type        = string
  default     = "LRS"

}

variable "unique_name_Storaged_Account" {
  description = "Valor unico que eu preciso para colocar no name do account_tier"
  type        = string
  default     = "andrepanizzaremotestate"
}

variable "remote" {
    description = "Nome do Azurerm_resource_group"
    type = string
    default = "remote-state"  
}
