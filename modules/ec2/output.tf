output "ec2_id" {
  value = aws_instance.wordpress.id
}

output "ec2_instance_type" {
  value = var.ec2_instance_type
}