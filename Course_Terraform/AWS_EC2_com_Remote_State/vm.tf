/*Aqui vamos criar uma Key_Pair, e vamos criar uma Instance na AWS*/

/*
Key_Pair: Arguments References:
-Key name (Optional)
-Key name Prefix (Optional)
-Public Key (required)
-Tags (optional)
-Default_Tags configuration block present, tags with matching keys will overwite those defined at the provider-level
*/
resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub") //aqui temos que passar a localização do arquivo.
 
}

## Criando a EC2 na AWS:
/*Arguments References:
-Não temos nenhum item required
*/
resource "aws_instance" "vm" {
  ami           = "ami-052efd3df9dad4825" # "us-east-1"
  instance_type = "t2.micro"
  key_name = aws_key_pair.key.name   ## referenciando nossa key_pair que foi criada com o .name
  subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id  ## aqui nos vamos utilizar o  Remote State Data Source
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.security_group_id] ## essas informações estão dentro do output da VPC que criamos anteriormente
  associate_public_ip_address = true

  tags = {
    "name" = "vm-terraform"
  }

}