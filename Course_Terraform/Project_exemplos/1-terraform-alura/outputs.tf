output "terraform_dev_ip" {
    value = "aws_instance.terraform_dev.public_ip"
    description = "The private IP address of the terraform_dev instance."
}