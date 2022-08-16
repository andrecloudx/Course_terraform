variable "amis" {
  type = map(string)
  default = {
      "us-east-1" = "ami-0022f774911c1d690"
  }
}

variable "cdirs_remote_access" {
    type = list(string)

    default = ["181.192.121.123/32"]
}

variable "ssh_key_name" {
  default = "terraform-aws"
}