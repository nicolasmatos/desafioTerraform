variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
  type        = string  
}

variable "access_key" {
  description = "AWS access key"
  default     = ""
  type        = string  
}

variable "secret_key" {
  description  = "AWS secret key"
  default      = ""
  type         = string
}

variable "prj_tags" {
  description  = "Tags to apply Project"
  type         = map(string)
  default      = {
    Terraform = true
    Enviroment = "Terraform"
  }
}