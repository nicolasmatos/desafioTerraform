output "rds_id" {
  value = aws_db_instance.rds.id
}

output "rds_endpoint" {
  value = aws_db_instance.rds.endpoint
}

//variaveis
output "db_name" {
  value = var.db_name
}

output "db_user" {
  value = var.db_user
}

output "db_password" {
  value = var.db_password
}