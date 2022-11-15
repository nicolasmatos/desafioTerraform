resource "aws_efs_file_system" "data" {
  encrypted        = true
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"
  tags = {
    Name  = "${var.project_name}-files",
    Curso = "${var.course_name}"
  }
  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }
  lifecycle_policy {
    transition_to_primary_storage_class = "AFTER_1_ACCESS"
  }
}

resource "aws_efs_mount_target" "data-mount_1a" {
  file_system_id  = aws_efs_file_system.data.id
  subnet_id       = var.subnet_priv1
  security_groups = var.sg_efs
}

resource "aws_efs_mount_target" "data-mount_1b" {
  file_system_id  = aws_efs_file_system.data.id
  subnet_id       = var.subnet_priv2
  security_groups = var.sg_efs
}

resource "aws_efs_mount_target" "data-mount_1c" {
  file_system_id  = aws_efs_file_system.data.id
  subnet_id       = var.subnet_priv3
  security_groups = var.sg_efs
}

resource "aws_efs_mount_target" "data-mount_1d" {
  file_system_id  = aws_efs_file_system.data.id
  subnet_id       = var.subnet_priv4
  security_groups = var.sg_efs
}

resource "aws_efs_mount_target" "data-mount_1e" {
  file_system_id  = aws_efs_file_system.data.id
  subnet_id       = var.subnet_priv5
  security_groups = var.sg_efs
}

resource "aws_efs_mount_target" "data-mount_1f" {
  file_system_id  = aws_efs_file_system.data.id
  subnet_id       = var.subnet_priv6
  security_groups = var.sg_efs
}

resource "aws_efs_access_point" "efs-data" {
  file_system_id = aws_efs_file_system.data.id
  root_directory {
    path = "/"
  }
}