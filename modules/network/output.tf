output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "pub1_id" {
  value = aws_subnet.pub1.id
}

output "pub2_id" {
  value = aws_subnet.pub2.id
}

output "pub3_id" {
  value = aws_subnet.pub3.id
}

output "pub4_id" {
  value = aws_subnet.pub4.id
}

output "pub5_id" {
  value = aws_subnet.pub5.id
}

output "pub6_id" {
  value = aws_subnet.pub6.id
}

output "priv1_id" {
  value = aws_subnet.priv1.id
}

output "priv2_id" {
  value = aws_subnet.priv2.id
}

output "priv3_id" {
  value = aws_subnet.priv3.id
}

output "priv4_id" {
  value = aws_subnet.priv4.id
}

output "priv5_id" {
  value = aws_subnet.priv5.id
}

output "priv6_id" {
  value = aws_subnet.priv6.id
}

output "rt_pub_id" {
  value = aws_route_table.rt_pub.id
}

output "rt_priv_id" {
  value = aws_route_table.rt_priv.id
}

// Security groups 
output "sg_ec2_id" {
  value = aws_security_group.sg_ec2.id
}

output "sg_alb_id" {
  value = aws_security_group.sg_alb.id
}

output "sg_rds_id" {
  value = aws_security_group.sg_rds.id
}

output "sg_efs_id" {
  value = aws_security_group.sg_efs.id
}

//Acl
output "acl_pub_id" {
  value = aws_network_acl.acl_pub.id
}

output "acl_priv_id" {
  value = aws_network_acl.acl_priv.id
}

output "db_group_priv_id" {
  value = aws_db_subnet_group.db_group_priv.id
}

output "db_group_pub_id" {
  value = aws_db_subnet_group.db_group_pub.id
}

//variaveis do projeto
output "aws_region" {
  value = var.aws_region
}

output "project_name" {
  value = var.project_name
}

output "course_name" {
  value = var.course_name
}