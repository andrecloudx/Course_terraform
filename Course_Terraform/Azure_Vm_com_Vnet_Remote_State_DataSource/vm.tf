resource "azurerm_resource_group" "resource_group" {
  name     = "vm"
  location = local.location

  tags = local.common_tags
}


resource "azurerm_public_ip" "public_ip" {
  name                = "public-ip-terraform"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = var.location
  allocation_method   = "Dynamic"

  tags = local.common_tags
}

## criando um bloco de network interface:

resource "azurerm_network_interface" "network_interface" {
  name                = "networking_interface-terraform"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name

  ip_configuration {
    name                          = "public_ip-terraform"
    subnet_id                     = data.terraform_remote_state.Vnet.outputs.subnet_id ## vamos acessar essa configuração via remote state, pois não foi criada aqui
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.public_ip.id

    tags = local.common_tags
  }
}

## Criando o bloco interface_security_group_association:

resource "azurerm_network_interface_application_security_group_association" "niasga" {
  network_interface_id          = azurerm_network_interface.network_interface.id
  application_security_group_id = data.terraform_remote_state.vnet.outputs.security_group_id

}