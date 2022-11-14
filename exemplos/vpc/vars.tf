##### Definindo Regiao e Conexao
variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
  type        = string
}

variable "access_key" {
  description = "AWS access_key"
  default     = ""
  type        = string
}

variable "secret_key" {
  description = "AWS secret_key"
  default     = ""
  type        = string
}


###### IP liberados para SSH
variable "ip_ssh" {
  description = "IPs Liberados para SSH"
  type        = list(string)
  default     = ["187.182.204.244/32", "187.182.204.245/32"]
}


###### Imagem ubuntu 20-04
variable "ami" {
  description = "imagem ubuntu"
  type        = map(any)
  default = {
    "us-east-1" = "ami-0e4c5cf13ac94f6e1"
    "us-west-2" = "ami-0c09c7eb16d3e8e70"
  }
}


##### Nome do projeto
variable "projeto" {
  description = "desafio2"
  type        = string
  default     = "desafio2"
}


variable "vpc_dnsSupport" {
  description = "dnsSupport"
  type        = bool
  default     = true
}

variable "vpc_dnsHostNames" {
  description = "HostNames"
  type        = bool
  default     = true
}

#####AZs
variable "vpc_azs" {
  description = "vpc_azs"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_az1" {
  description = "vpc_az1"
  type        = string
  default     = "us-east-1a"
}

variable "vpc_az2" {
  description = "vpc_az2"
  type        = string
  default     = "us-east-1b"
}

#####Subnets
variable "vpc_subnet" {
  description = "vpc_cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_privada1_subnet" {
  description = "vpc_privada1_subnet"
  type        = string
  default     = "10.0.61.0/24"
}

variable "vpc_privada2_subnet" {
  description = "vpc_privada2_subnet"
  type        = string
  default     = "10.0.62.0/24"
}

variable "vpc_publica1_subnet" {
  description = "vpc_publica1_subnet"
  type        = string
  default     = "10.0.68.0/24"
}

variable "vpc_publica2_subnet" {
  description = "vpc_publica2_subnet"
  type        = string
  default     = "10.0.69.0/24"
}

variable "vpc_enable_nat_gateway" {
  description = "vpc_enable_nat_gateway"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "vpc_tags"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "desafio2"
  }
}

variable "default_route" {
  description = "default_route"
  type        = string
  default     = "0.0.0.0/0"
}

variable "default_route_list" {
  description = "default_route_list"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}