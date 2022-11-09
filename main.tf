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
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
  /*shared_credentials_file = “/Users/tf_user/.aws/creds”*/
}

# Criando Instancia
/*resource "aws_instance" "instancia1"{
  ami           = lookup(var.ami, var.aws_region)
  instance_type = "t2.micro"
  vpc_id = aws_vpc.projeto2_vpc.id
  subnet_id = aws_subnet.projeto2_publica1.id
  vpc_security_group_ids = [aws_default_security_group.projeto2_sg.id]
} */
