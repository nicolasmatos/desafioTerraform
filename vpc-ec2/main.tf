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

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.21.0"

  name                  = var.vpc_name
  cidr                  = var.vpc_cidr
  azs                   = var.vpc_azs
  private_subnets       = var.vpc_private_subnets
  public_subnets        = var.vpc_public_subnets
  # ATENCAO PODE GERAR CUSTO
  enable_nat_gateway    = var.vpc_enable_nat_gateway
  tags                  = var.vpc_tags
}

module "ec2_instances" {
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "2.12.0"

  name                      = "my-ec2-cluster"
  ami                       = "ami-08c40ec9ead489470"
  instance_count            = 2
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [module.vpc.default_security_group_id]
  subnet_id                 = module.vpc.public_subnets[0]
  tags = {
    Terraform   = "true"
    Enviroment  = "Terraform"
  }
}

