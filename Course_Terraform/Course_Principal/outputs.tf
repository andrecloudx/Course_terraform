## Nossa configuração para fazer o deploy do Storaged-account, dessa estrutura na azure

output "storaged-account-id" {
    ## dentro do bloco do output vamos dizer qual o value desse output:
    value = azurerm_storage_account.first-storage-azurerm.id
    ## voltando no aquivo storaged-account.tf  temos que mensionar "azurerm_storage_account" "first-storage-azurerm.id"
    ## Pronto, teremos um output prontinho, assim que o deploy for feito!!

  
}