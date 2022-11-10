resource "aws_security_group" "sg_ec2" {
  name        = "sg-${var.project-name}-ec2"
  description = "Grupo seguranca EC2"
  vpc_id      = aws_vpc.vpc.id

  // utilizacao de blocos dinamicos para liberacao de portas no SG
  dynamic "ingress" {
    for_each = var.sg_ec2
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sg_alb" {
  name        = "sg-${var.project-name}-lb"
  description = "Grupo seguranca ALB"
  vpc_id      = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = var.sg_alb
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sg_rds" {
  name        = "sg-${var.project-name}-rds"
  description = "Grupo Seguranca RDS"
  vpc_id      = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = var.sg_rds
    content {
      from_port       = ingress.value
      to_port         = ingress.value
      protocol        = "tcp"
      security_groups = [aws_security_group.sg_ec2.id]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sg_efs" {
  name        = "sg-${var.project-name}-efs"
  description = "Grupo Seguranca EFS"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port       = var.sg_efs
    to_port         = var.sg_efs
    protocol        = "tcp"
    security_groups = [aws_security_group.sg_ec2.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}