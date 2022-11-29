resource "aws_db_instance" "rds" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  identifier             = var.db_name
  instance_class         = var.db_instance_type
  db_name                = var.db_name
  username               = var.db_user
  password               = var.db_password
  parameter_group_name   = "default.mysql5.7"
  availability_zone      = "${var.aws_region}a"
  skip_final_snapshot    = true
  db_subnet_group_name   = var.db_group_priv
  vpc_security_group_ids = var.sg_rds
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-db"
    }
  )
}