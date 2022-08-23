## Criação do Arquivo Outputs.terraform 
## Este e o Ip da maquina virtual que vou criar, e depois quero acessar essa maquina via linha de comando
output "vm_ip" {
  ## O recurso que eu quero mencionar este output:
  value = aws_instance.vm.public_ip   ## A opção que eu quero e Public IP
    
}