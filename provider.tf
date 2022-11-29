terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "s3" {
    bucket = "devops-terraform-desafio2"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  /*
  backend "remote" {
    organization = "devopsDesafio2"
    workspaces {
      name = "desafio2"
    }
  }
  */
}

provider "aws" {
  region = var.aws_region
}