##Como a Azure não permite a utilização de tags, como a AWS, vamos utilizar o Locals para aficionar as Tags
## dentro do Locals podemos colocar o nome da tag
## para referenciar no bloco do Azure, no storaged-account.tf, utilizamos local.common_tags

locals {

  common_tags = {
    owner      = "AndrePanizza"
    mangerd-by = "terraform"
  }

  tags_environment = {
    environment = "Production"
  }


}
