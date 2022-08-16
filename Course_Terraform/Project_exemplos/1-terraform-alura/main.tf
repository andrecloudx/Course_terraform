terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
}

resource "aws_instance" "terraform_dev" {
  count = 1
  ami = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name = var.ssh_key_name
  tags = {
      Name: "terraform_dev_${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  depends_on = [
    aws_s3_bucket.terraform_dev_0_bucket,
    aws_dynamodb_table.terraform_basic_dynamodb_table
  ]
}

resource "aws_s3_bucket" "terraform_dev_0_bucket" {
  bucket = "terraform-bucket-fji4958" # need to be an unique name on aws
  tags = {
    Name = "terraform-bucket-fji4958"
  }
}

resource "aws_s3_bucket_acl" "terraform_dev_0_bucket_acl" {
  bucket = aws_s3_bucket.terraform_dev_0_bucket.id
  acl    = "private"
}

resource "aws_dynamodb_table" "terraform_basic_dynamodb_table" {
  name           = "GameScores"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }
}

