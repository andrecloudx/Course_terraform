## criando os outputs:

output "subnet_id" {
    value = aws_subnet.PublicSubnetA.id
  

}

output "security_group_id" {

    value = aws_security_group.Lauch-Wizard-1.id
  

}

