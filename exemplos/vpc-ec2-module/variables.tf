variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
  type        = string
}

variable "access_key" {
  description = "AWS access key"
  default     = "INFORME SUA ACCESS KEY AQUI"
  type        = string
}

variable "secret_key" {
  description = "AWS secret key"
  default     = "INFORME SUA SECRET KEY AQUI"
  type        = string
}

# Input variable definitions

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "Example-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block of VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "AZ for VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_private_subnets" {
  description = "Private subnet for VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnet for VPC"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to applu VPC Module"
  type        = map(string)
  default = {
    Terraform  = true
    Enviroment = "Terraform"
  }
}