data "template_file" "dockercompose" {
  template = file("./template/docker-compose.tpl")

  vars = {
    db_host     = var.rds_endpoint
    db_name     = var.db_name
    db_user     = var.db_user
    db_password = var.db_password
  }
}

data "template_file" "script" {
  template = file("./template/userdata.sh")
  vars = {
    efs_id        = var.efs_id
    dockercompose = data.template_file.dockercompose.rendered
  }
}