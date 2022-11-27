## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.19 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.19 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rds"></a> [rds](#module\rds) | ./modules/rds | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_db_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |


## Variables Inputs

| Name | Type | Default | Required |
|------|------|---------|:--------:|
| <a name="aws_region"></a> aws_region | `string` | `null` | yes |
| <a name="project_name"></a> project_name | `string` | `null` | yes |
| <a name="course_name"></a> course_name | `string` | `null` | yes |

## Modules Inputs

| Name | Module | Type | Required |
|------|------|---------|:--------:|
| <a name="db_group_priv"></a> db_group_priv | [module.network](../network/output.tf) | `output` | yes |
| <a name="sg_rds"></a> sg_rds | [module.network](../network/output.tf) | `output` | yes |


## Outputs

| Name | Description | 
|------|-------------|
| <a name="rds_id"></a> rds_id | RDS ID | 
| <a name="rds_endpoint"></a> rds_endpoint | RDS Endpoint Access |
| <a name="db_name"></a> db_name | Data Base Name |
| <a name="db_user"></a> db_user | Data Base User |
| <a name="db_password"></a> db_password | Data Base Password |
