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
| <a name="module_as"></a> [Auto Scaling](#module\as) | ./modules/as | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_launch_template](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_autoscaling_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |

## Variables Inputs

| Name | Type | Default | Required |
|------|------|---------|:--------:|
| <a name="aws_region"></a> aws_region | `string` | `null` | yes |
| <a name="project_name"></a> project_name | `string` | `null` | yes |
| <a name="course_name"></a> course_name | `string` | `null` | yes |

## Modules Inputs

| Name | Module | Type | Required |
|------|------|---------|:--------:|
| <a name="vpc_id"></a> efs_id | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_pub1"></a> subnet_pub1 | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_pub2"></a> subnet_pub2 | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_pub3"></a> subnet_pub3 | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_pub4"></a> subnet_pub4 | [module.network](../network/output.tf) | `output` | yes |
| <a name="subnet_pub5"></a> subnet_pub5 | [module.network](../network/output.tf)| `output` | yes |
| <a name="subnet_pub6"></a> subnet_pub6 | [module.network](../network/output.tf) | `output` | yes |
| <a name="sg_ec2"></a> sg_ec2 | [module.network](../network/output.tf) | `output` | yes |
| <a name="alb_tg_id"></a> alb_tg_id | [module.alb](../alb/output.tf) | `output` | yes |
| <a name="key_name"></a> key_name | [module.ec2](../ec2/output.tf) | `output` | yes |
| <a name="ec2_instance_type"></a> ec2_instance_type | [module.ec2](../ec2/output.tf) | `output` | yes |



## Outputs

| Name | Description | 
|------|-------------|
| <a name="asg_id"></a> [asg_id](./output.tf) | Auto Scaling Group ID | 

