terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "prathmesh-us-east-2"
    region         = "us-east-2"
    key            = "eks/terraform.tfstate"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
