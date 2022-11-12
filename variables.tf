variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "project-name" {
  type        = string
  description = ""
  default     = "devops-terraform"
}

variable "ec2_instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = ""
  default     = "devops"
}