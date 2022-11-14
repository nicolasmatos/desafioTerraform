resource "aws_vpc" "vpc" {
  enable_dns_hostnames = true
  enable_dns_support   = true

  cidr_block = "10.4.0.0/16"
  tags = {
    Name  = "${var.project_name}",
    Curso = "${var.course_name}"
  }
}

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name  = "ig-${var.project_name}",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "pub1" {
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.4.1.0/24"
  availability_zone       = "${var.aws_region}a"
  tags = {
    Name  = "${var.project_name}_pub1",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "pub2" {
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.4.2.0/24"
  availability_zone       = "${var.aws_region}b"
  tags = {
    Name  = "${var.project_name}_pub2",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "pub3" {
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.4.3.0/24"
  availability_zone       = "${var.aws_region}c"
  tags = {
    Name  = "${var.project_name}-pub3",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "pub4" {
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.4.4.0/24"
  availability_zone       = "${var.aws_region}d"
  tags = {
    Name  = "${var.project_name}-pub4",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "pub5" {
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.4.5.0/24"
  availability_zone       = "${var.aws_region}e"
  tags = {
    Name  = "${var.project_name}-pub5",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "pub6" {
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.4.6.0/24"
  availability_zone       = "${var.aws_region}f"
  tags = {
    Name  = "${var.project_name}-pub6",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "priv1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.4.7.0/24"
  availability_zone = "${var.aws_region}a"
  tags = {
    Name  = "${var.project_name}-priv1",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "priv2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.4.8.0/24"
  availability_zone = "${var.aws_region}b"
  tags = {
    Name  = "${var.project_name}-priv2",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "priv3" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.4.9.0/24"
  availability_zone = "${var.aws_region}c"
  tags = {
    Name  = "${var.project_name}-priv3",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "priv4" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.4.10.0/24"
  availability_zone = "${var.aws_region}d"
  tags = {
    Name  = "${var.project_name}-priv4",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "priv5" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.4.11.0/24"
  availability_zone = "${var.aws_region}e"
  tags = {
    Name  = "${var.project_name}-priv5",
    Curso = "${var.course_name}"
  }
}

resource "aws_subnet" "priv6" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.4.12.0/24"
  availability_zone = "${var.aws_region}f"
  tags = {
    Name  = "${var.project_name}-priv6",
    Curso = "${var.course_name}"
  }
}

resource "aws_route_table" "rt_pub" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
  tags = {
    Name  = "rt-${var.project_name}-pub",
    Curso = "${var.course_name}"
  }
}

resource "aws_route_table" "rt_priv" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name  = "rt-${var.project_name}-priv",
    Curso = "${var.course_name}"
  }
}

resource "aws_route_table_association" "pub1" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.rt_pub.id
}

resource "aws_route_table_association" "pub2" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.rt_pub.id
}

resource "aws_route_table_association" "pub3" {
  subnet_id      = aws_subnet.pub3.id
  route_table_id = aws_route_table.rt_pub.id
}

resource "aws_route_table_association" "pub4" {
  subnet_id      = aws_subnet.pub4.id
  route_table_id = aws_route_table.rt_pub.id
}

resource "aws_route_table_association" "pub5" {
  subnet_id      = aws_subnet.pub5.id
  route_table_id = aws_route_table.rt_pub.id
}

resource "aws_route_table_association" "pub6" {
  subnet_id      = aws_subnet.pub6.id
  route_table_id = aws_route_table.rt_pub.id
}

resource "aws_route_table_association" "priv1" {
  subnet_id      = aws_subnet.priv1.id
  route_table_id = aws_route_table.rt_priv.id
}

resource "aws_route_table_association" "priv2" {
  subnet_id      = aws_subnet.priv2.id
  route_table_id = aws_route_table.rt_priv.id
}

resource "aws_route_table_association" "priv3" {
  subnet_id      = aws_subnet.priv3.id
  route_table_id = aws_route_table.rt_priv.id
}

resource "aws_route_table_association" "priv4" {
  subnet_id      = aws_subnet.priv4.id
  route_table_id = aws_route_table.rt_priv.id
}

resource "aws_route_table_association" "priv5" {
  subnet_id      = aws_subnet.priv5.id
  route_table_id = aws_route_table.rt_priv.id
}

resource "aws_route_table_association" "priv6" {
  subnet_id      = aws_subnet.priv6.id
  route_table_id = aws_route_table.rt_priv.id
}

resource "aws_db_subnet_group" "db_group_priv" {
  name       = "${var.project_name}_priv"
  subnet_ids = [aws_subnet.priv1.id, aws_subnet.priv2.id, aws_subnet.priv3.id, aws_subnet.priv4.id, aws_subnet.priv5.id, aws_subnet.priv6.id]
  tags = {
    Name  = "${var.project_name}_priv"
    Curso = "${var.course_name}"
  }
}

resource "aws_db_subnet_group" "db_group_pub" {
  name       = "${var.project_name}_pub"
  subnet_ids = [aws_subnet.priv1.id, aws_subnet.priv2.id, aws_subnet.priv3.id, aws_subnet.priv4.id, aws_subnet.priv5.id, aws_subnet.priv6.id]
  tags = {
    Name  = "${var.project_name}_pub"
    Curso = "${var.course_name}"
  }
}