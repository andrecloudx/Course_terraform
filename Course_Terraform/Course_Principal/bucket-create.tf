## criando nossa bucket S3
resource "aws_s3_bucket" "first_bucket" {
  bucket = "Curso-terraform-Andre-Panizza"

}

/*
Lembre-se, copie as credenciais de usuario:
export AWS_ACCESS_KEY_ID="SDSDEFOIYHJ34kJHVJ"
$ export AWS_SECRET_ACCESS_KEY="AWSDXSFESFE (*8866"
$ export AWS_REGION="us-west-2"

e cole, no console do git, ou no cmd do VScode, para validar a autenticação do user da AWS.
*/
/*
antes de dar um terraform apply

-terraform fmt
-terraform validate
-terraform plan
ou -out=(nome do arquivo)
e por fim um terraform apply
ou terraform apply plan=(nome do arquivo)
 
*/