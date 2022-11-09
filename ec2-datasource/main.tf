terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key  
}

# Modulo de datasource 
resource "aws_instance" "instancia1p03" {
    #name            = "Intancia1p03"
    ami             = data.aws_ami.amazon_linux.id
    instance_type   = "t2.micro"
    tags            = var.prj_tags 
}
