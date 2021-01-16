# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

terraform {
  required_version = "~>0.12"
  backend "s3" {
    bucket = "irw-aws-cicd-pipeline"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}


