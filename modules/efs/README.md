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
| <a name="module_efs"></a> [efs](#module\efs) | ./modules/efs | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_efs_file_system](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system) | resource |
| [aws_efs_mount_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |
| [aws_efs_access_point](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point) | resource |


## Variables Inputs

| Name | Type | Default | Required |
|------|------|---------|:--------:|
| <a name="aws_region"></a> aws_region | `string` | `null` | yes |
| <a name="project_name"></a> project_name | `string` | `null` | yes |
| <a name="course_name"></a> course_name | `string` | `null` | yes |

## Modules Inputs

| Name | Module | Type | Required |
|------|------|---------|:--------:|
| <a name="subnet_priv1"></a> subnet_priv1 | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_priv2"></a> subnet_priv2 | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_priv3"></a> subnet_priv3 | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_priv4"></a> subnet_priv4 | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_priv5"></a> subnet_priv5 | [module.network](../network/output.tf)| `output` | yes |
| <a name="subnet_priv6"></a> subnet_priv6 | [module.network](../network/output.tf) | `output` | yes |
| <a name="sg_efs"></a> sg_efs | [module.network](../network/output.tf) | `output` | yes |



## Outputs

| Name | Description | 
|------|-------------|
| <a name="efs_id"></a> efs_id | Elastic File System ID | 

