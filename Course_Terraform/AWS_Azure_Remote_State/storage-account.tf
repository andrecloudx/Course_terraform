
resource "azurerm_resource_group" "first_resource_group" {
  name     = var.remote
  location = var.location

  tags = local.commons_tags
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = var.unique_name_Storaged_Account
  resource_group_name      = azurerm_resource_group.first_resource_group.name
  location                 = azurerm_resource_group.first_resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.commons_tags

  blob_properties {
    ## change_feed_enabled = false  bloco do blob aceita varios argumentos optionals
    versioning_enabled = true
  }

}
resource "azurerm_storage_container" "first_container_azure" {
  name                 = azurerm_storage_account.first_storage_account.name
  storage_account_name = "remote-state"

}
