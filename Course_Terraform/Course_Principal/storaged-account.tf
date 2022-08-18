## novo arquivo para configuração da conta de storaged-account da Azure:

resource "azurerm_resource_group" "first-resource-azurerm" {
  name     = ""
  location = var.location

  tags = ""
}

resource "azurerm_storage_account" "first-storage-azurerm" {
  name                     = ""
  resource_group_name      = ""
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = ""
  }
}

resource "azurerm_storage_container" "first-container-azurerm" {
  name                  = ""
  storage_account_name  = ""
}

## Vamos fazendo a implementação dessa configuração e fazer o deploy disto.
## continuando a desenvolver toda infraestrutura!