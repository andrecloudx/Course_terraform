##criação da Bucket para .tfstate

resource "aws_s3_bucket" "first_bucket" {
    bucket = "andrePanizza-remotestate"
    
  versioning {
    enabled = true
  }
}