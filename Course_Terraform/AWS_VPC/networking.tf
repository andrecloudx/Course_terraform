## criando a estrutura da VPC

resource "aws_vpc" "Demo-VPC" {
  cidr_block = "10.0.0.0/16" ## bloco CIDR

  tags = {
    Name = "vpc-terraform"

  }

}
## criando a subnet:

resource "aws_subnet" "PublicSubnetA" {
  vpc_id     = aws_vpc.Demo-VPC.id    ## its required
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "subnet-terraform"
  }
}

## adicionando um internet gateway - IGW

resource "aws_internet_gateway" "Demo-IGW" {
  vpc_id = aws_vpc.Demo-VPC.id     ## its optional

  tags = {
    Name = "Internet-Gateway-Terraform"
  }
}

## Criando nossa Route

resource "aws_route_table" "PublicRouterTable" {
  vpc_id = aws_vpc.Demo-VPC.id  ## its required

  ## temos na documentação o Route Arguments Reference:
  ## IPv4
  route {
    cidr_block = "0.0.0.0/0"        ## it´s required apontando pra todos internet
    gateway_id = aws_internet_gateway.Demo-IGW.id   ## optional
  }

   tags = {
    Name = "PublicRouterTable-terraform"
  }
}

## Adicionando uma Router Table Association

resource "aws_route_table_association" "rta" {
  subnet_id      = aws_subnet.PublicSubnetA.id   ## optional
  route_table_id = aws_route_table.PublicRouterTable.id   ## it´s required
}


## criando um security-Group

resource "aws_security_group" "Lauch-Wizard-1" {
  name        = "Lauch-Wizard-1-terraform"
  
  vpc_id      = aws_vpc.Demo-VPC.id
## o bloco do ingress
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
## o bloco do egress
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
## tag de name opcional (REMOVEREMOS POR HORA)
  
}

## No caso se eu quiser adicionar mais Inbound Rules ao bloco do Security-group eu poderia adicionar quantos eu quiser