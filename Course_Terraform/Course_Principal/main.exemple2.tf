## main.exemple2.tf
## Neste segundo arquivo eu tenho a criação como exemplo de uma bucket S3

resource "aws_s3_bucket" "first_bucket" {

    bucket = "exemplo-curso-terraform-cli"
  
}