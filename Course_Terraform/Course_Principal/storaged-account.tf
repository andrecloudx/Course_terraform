## novo arquivo para configuração da conta de storaged-account da Azure:

resource "azurerm_resource_group" "first-resource-azurerm" {
  name     = "storage_account_resource_group"
  location = var.location

## adicionando o bloco do Locals como tag no azure adicionado
  tags = local.common_tags
}

resource "azurerm_storage_account" "first-storage-azurerm" {
  name                     = "andrepanizzadossantosstoragedaccount"
  resource_group_name      = azurerm_resource_group.first-resource-azurerm.name
  location                 = azurerm_resource_group.first-resource-azurerm.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "first-container-azurerm" {
  name                  = azurerm_storage_account.first-storage-azurerm.name
  storage_account_name  = "imagens"
}

## importante, para referenciarmos um bloco, precisamos passar o tipo de resource ex: azurerm_resource_group.first-resource-azurerm.name
## se ei quiser referenciar isso por exemplo no resource_group_name, eu posso fazer dessa forma acima
## Vamos fazendo a implementação dessa configuração e fazer o deploy disto.
## continuando a desenvolver toda infraestrutura!
## 