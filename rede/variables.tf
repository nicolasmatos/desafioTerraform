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

variable "course-name" {
  type        = string
  description = ""
  default     = "DevOps Cloud"
}

// portas security group 
variable "sg_ec2" {
  description = "Portas liberadas no SG EC2"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "sg_alb" {
  description = "Portas liberadas no SG Load Balance"
  type        = list(number)
  default     = [80, 443]
}

variable "sg_rds" {
  description = "Portas liberadas no SG banco de dados"
  type        = list(number)
  default     = [3306]
}

variable "sg_efs" {
  description = "Porta liberada no SG do efs"
  type        = string
  default     = "2049"
}