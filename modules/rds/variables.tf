variable "aws_region" {}
variable "project_name" {}
variable "course_name" {}
variable "db_group_priv" {}
variable "sg_rds" {}
variable "tags" {}

variable "db_instance_type" {
  type        = string
  description = ""
  default     = "db.t2.micro"
}

variable "db_name" {
  type        = string
  description = "nome da base de dados"
  default     = "wordpress"
}

variable "db_user" {
  type        = string
  description = "usuario base de dados"
  default     = "wordpress"
}

variable "db_password" {
  type        = string
  description = "senha base de dados"
  default     = "db123456"
}
