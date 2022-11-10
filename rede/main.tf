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
  // state remoto 
  backend "s3" {
    bucket = "devops-terraform-desafio2"
    key    = "rede/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = var.aws_region
  shared_config_files      = ["/Users/User/.aws/config"]
  shared_credentials_files = ["/Users/User/.aws/credentials"]
  profile = var.aws_profile
}