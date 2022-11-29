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