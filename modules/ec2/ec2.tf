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
  tags = {
    Name  = "${var.project_name}-wordpress",
    Curso = "${var.course_name}"
  }
}