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
 
#   backend "remote" {
#     organization = "devopsDesafio2"
#     workspaces {
#       name = "desafio2"
#     }
#   }
}

provider "aws" {
  region  = var.aws_region
}