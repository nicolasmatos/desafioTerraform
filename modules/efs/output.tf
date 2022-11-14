output "efs_id" {
  value = aws_efs_file_system.data.dns_name
}