variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "owner" {
  type        = string
  description = ""
  default     = "G-One Cloud"
}

variable "project_name" {
  type        = string
  description = ""
  default     = "devops-terraform"
}

variable "course_name" {
  type        = string
  description = ""
  default     = "DevOps Cloud"
}

variable "domain_name" {
  type        = string
  description = ""
  default     = "g1cloud.tk"
}

variable "terraform" {
  type        = bool
  description = ""
  default     = true
}

variable "environment" {
  type        = string
  description = ""
  default     = "dev"
}