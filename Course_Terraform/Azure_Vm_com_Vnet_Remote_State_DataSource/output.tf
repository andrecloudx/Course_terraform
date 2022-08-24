# referenciando a minha Vm querendo pegar o IP.
# no final do value, pra armazenar o tipo de informação que desejamos pegar
# precisamos usar por exemplo as expressões.


// contém o VM_IP do Linux_Virtual_Machine:
output "vm_ip" {
    value = azurerm_linux_virtual_machine.vm.public_ip_address
}

// Contem o Id Virtual Machine do Linux_Virtual_Machine:
output "virtual_machine_id" {

    value = azurerm_linux_virtual_machine.vm.virtual_machine_id

}
// Contem a vm_id do Linux_Virtual_Machine:
output "vm_id" {
    
    value = azurerm_linux_virtual_machine.vm.id    
  
}

// Contem o ID do resource_Group:
output "resource_group_id" {

    value = azurerm_resource_group.resource_group.id
  
}

// Contém ip_address do public ip

output "ip_address_attachedPublicIP" {

    value = azurerm_public_ip.public_ip.ip_address
  
}

// Contem 


/*azurerm_linux_virtual_machine

em Attributes References e o que eu posso trazer
de informações para pegar do recurso.
E depois utilizar este recurso, por exemplo com data.terraform_remote_state.output.vm_ip

*/