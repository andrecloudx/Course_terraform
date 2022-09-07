# Criando o Bloco de Resource Group:

# it´s required location;
# it´s required name;

resource "azurerm_resource_group" "resource_group" {
  name     = "vm-terraform"
  location = var.location
  tags = local.common_tags

}

# Criação do Public IP:

# it´s required name;
# it´s required resource_group_name;
# it´s required location;
# it´s required allocation_method;

resource "azurerm_public_ip" "public_ip" {
  name                = "public_ip-terraform"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = var.location
  allocation_method   = "Dynamic"

  tags = local.common_tags
}

# Criação do Networking_Interface

# it´s required ip configuration
# it´s required location
# it´s required name
# it´s required resource_group_name

resource "azurerm_network_interface" "network_interface" {
  name                = "network_interface-terraform"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name

  ip_configuration {
    name                          = "terraform"
    subnet_id                     =  data.terraform_remote_state.Vnet.output.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

# Criação Networking_security_group_association
# it´s required network_interface_id 
# it´s required network_security_group_id

resource "azurerm_network_interface_security_group_association" "isga" {
  network_interface_id      = azurerm_network_interface.network_interface.id
  network_security_group_id = data.terraform_remote_state.Vnet.output.security_group_id
}

# Criação Linux Virtual Machine

# it´s required admin_username
# it´s required location
# it´s optional license_type (Optional)
# it´s required networking_interface_id
# it´s required os_disk
# it´s required resource_group_name
# it´s required size


resource "azurerm_linux_virtual_machine" "vm" {
  name                = "Vm-terraform"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = var.location
  size                = "Standard_B1s"
  admin_username      = "terraform"
  network_interface_ids = [azurerm_network_interface.network_interface.id]

  admin_ssh_key {
    username   = "terraform"
    public_key = file("./azure-key.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  tags = local.common_tags
}
