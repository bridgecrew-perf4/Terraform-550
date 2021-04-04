provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket = "terraform-jason"
    dynamodb_table = "dynamodb-terraform-state-lock"
    key    = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
