terraform {
  backend "s3" {
    bucket  = "panda-learns-bucket"
    key     = "tf-aws-staticweb/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}