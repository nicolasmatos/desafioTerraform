module "network" {
  source = "./modules/network"

  aws_region = var.aws_region
  project_name = var.project_name
  course_name = var.course_name
}

module "rds" {
  source = "./modules/rds"

  aws_region = var.aws_region
  project_name = var.project_name
  course_name = var.course_name
  db_group_priv = module.network.db_group_priv_id
  sg_rds = [module.network.sg_rds_id]

  depends_on = [module.network]
}

module "efs" {
  source = "./modules/efs"

  aws_region = var.aws_region
  project_name = var.project_name
  course_name = var.course_name
  subnet_priv1 = module.network.priv1_id
  subnet_priv2 = module.network.priv2_id
  sg_efs = [module.network.sg_efs_id]

  depends_on = [module.network]
}

module "ec2" {
  source = "./modules/ec2"

  aws_region = var.aws_region
  project_name = var.project_name
  course_name = var.course_name
  efs_id = module.efs.efs_id
  rds_endpoint = module.rds.rds_endpoint
  db_name = module.rds.db_name
  db_user = module.rds.db_user
  db_password = module.rds.db_password
  subnet_pub1 = module.network.pub1_id
  sg_ec2 = [module.network.sg_ec2_id]
   
  depends_on = [module.rds, module.efs]
}