data "aws_ami" "wordpress" {
  most_recent = true
  filter {
    name   = "name"
    values = ["${var.project_name}-wordpress"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["455462641947"]
}

resource "aws_launch_template" "lt" {
  name_prefix   = "lt-"
  image_id      = data.aws_ami.wordpress.id
  instance_type = var.ec2_instance_type
  key_name      = var.key_name
  monitoring {
    enabled = false
  }
  network_interfaces {
    associate_public_ip_address = true
    delete_on_termination       = true
    security_groups             = var.sg_ec2
  }
}

resource "aws_autoscaling_group" "asg" {
  name                      = "as-${var.project_name}"
  min_size                  = 1
  desired_capacity          = 1
  max_size                  = 2
  force_delete              = true
  health_check_grace_period = 240
  health_check_type         = "ELB"
  target_group_arns         = [var.alb_tg_id]
  vpc_zone_identifier       = [var.subnet_pub1, var.subnet_pub2, var.subnet_pub3, var.subnet_pub4, var.subnet_pub5, var.subnet_pub6]

  launch_template {
    id      = aws_launch_template.lt.id
    version = aws_launch_template.lt.latest_version
  }

  tag {
    key                 = "Name"
    value               = "${var.project_name}-wordpress"
    propagate_at_launch = true
  }
}