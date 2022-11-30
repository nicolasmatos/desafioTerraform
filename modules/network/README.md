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
| <a name="module_network"></a> [network](#module\network) | ./modules/network | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point) | resource |
| [aws_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_network_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_acl) | resource |

## Locals Inputs

| Name | Type | Default | Required |
|------|------|---------|:--------:|
| <a name="tags"></a> tags | `list` | `null` | yes |

## Variables Inputs

| Name | Type | Default | Required |
|------|------|---------|:--------:|
| <a name="aws_region"></a> aws_region | `string` | `null` | yes |
| <a name="project_name"></a> project_name | `string` | `null` | yes |
| <a name="course_name"></a> course_name | `string` | `null` | yes |

## Outputs

| Name | Description | 
|------|-------------|
| <a name="aws_region"></a> aws_region | Region Default AWS | 
| <a name="project_name"></a> project_name | Name of Project | 
| <a name="course_name"></a> course_name | Name of Course | 
| <a name="vpc_id"></a> vpc_id | VPC ID |
| <a name="pub1_id"></a> pub1_id | Public Subnet 1 ID | 
| <a name="pub2_id"></a> pub2_id | Public Subnet 2 ID | 
| <a name="pub3_id"></a> pub3_id | Public Subnet 3 ID | 
| <a name="pub4_id"></a> pub4_id | Public Subnet 4 ID | 
| <a name="pub5_id"></a> pub5_id | Public Subnet 5 ID | 
| <a name="pub6_id"></a> pub6_id | Public Subnet 6 ID | 
| <a name="priv1_id"></a> priv1_id | Private Subnet 1 ID | 
| <a name="priv2_id"></a> priv2_id | Private Subnet 2 ID | 
| <a name="priv3_id"></a> priv3_id | Private Subnet 3 ID | 
| <a name="priv4_id"></a> priv4_id | Private Subnet 4 ID | 
| <a name="priv5_id"></a> priv5_id | Private Subnet 5 ID | 
| <a name="priv6_id"></a> priv6_id | Private Subnet 6 ID | 
| <a name="sg_ec2_id"></a> sg_ec2_id | Security Group EC2 ID | 
| <a name="sg_alb_id"></a> sg_alb_id | Security Group Load Balancer ID |
| <a name="sg_rds_id"></a> sg_rds_id | Security Group RDS ID | 
| <a name="sg_efs_id"></a> sg_efs_id | Security Group EFS ID | 
| <a name="acl_pub_id"></a> acl_pub_id | Public ACL ID | 
| <a name="acl_priv_id"></a> acl_priv_id | Private ACL ID | 
| <a name="db_group_priv_id"></a> db_group_priv_id | Private Group RDS | 
| <a name="db_group_pub_id"></a> db_group_pub_id | Public Group RDS | 
