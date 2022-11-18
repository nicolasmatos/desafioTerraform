resource "aws_lb" "alb" {
  load_balancer_type = "application"
  name               = "alb-${var.project_name}"
  security_groups    = var.sg_alb
  subnets            = [var.subnet_pub1, var.subnet_pub2, var.subnet_pub3, var.subnet_pub4, var.subnet_pub5, var.subnet_pub6]
  tags = {
    Name  = "alb-${var.project_name}",
    Curso = "${var.course_name}"
  }
}

resource "aws_lb_target_group" "alb_tg" {
  name     = "tg-${var.project_name}"
  port     = 80
  protocol = "HTTP"

  tags = {
    Name  = "tg-${var.project_name}",
    Curso = "${var.course_name}"
  }

  target_type = "instance"
  vpc_id      = var.vpc_id

  health_check {
    healthy_threshold = 2
    path              = "/"
    matcher           = "200,302"
  }

  stickiness {
    cookie_duration = 3600
    enabled         = true
    type            = "lb_cookie"
  }
}

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_tg.arn
  }
}

resource "aws_alb_target_group_attachment" "this" {
  target_group_arn = aws_lb_target_group.alb_tg.arn
  target_id        = var.ec2_id
  port             = 80
}