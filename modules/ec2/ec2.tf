data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "wordpress" {
  instance_type               = var.ec2_instance_type
  ami                         = data.aws_ami.ubuntu.id
  vpc_security_group_ids      = var.sg_ec2
  subnet_id                   = var.subnet_pub1
  user_data                   = data.template_file.script.rendered
  key_name                    = var.key_name
  associate_public_ip_address = true
  monitoring                  = var.monitoring
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-wordpress"
    }
  )
}

resource "time_sleep" "wait_240_seconds" {
  depends_on      = [aws_instance.wordpress]
  create_duration = "240s"
}

resource "aws_ami_from_instance" "wordpress" {
  name               = "${var.project_name}-wordpress"
  source_instance_id = aws_instance.wordpress.id
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-wordpress"
    }
  )

  depends_on = [time_sleep.wait_240_seconds]
}