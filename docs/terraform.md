## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bastion_name | Bastion server subdomain name in the Kops DNS zone | string | `bastion` | no |
| dns_zone | Name of the Kops DNS zone | string | - | yes |
| enabled | Set to false to prevent the module from creating or accessing any resources | string | `true` | no |
| masters_name | K8s masters subdomain name in the Kops DNS zone | string | `masters` | no |
| nodes_name | K8s nodes subdomain name in the Kops DNS zone | string | `nodes` | no |
| vpc_tag | Tag used to lookup the Kops VPC | string | `Name` | no |
| vpc_tag_values | Tag values list to lookup the Kops VPC | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| bastion_security_group_arn | Bastion server Security Group ARN |
| bastion_security_group_id | Bastion server Security Group ID |
| masters_role_arn | K8s nodes Security Group ID |
| masters_role_name | K8s nodes Security Group ARN |
| masters_security_group_arn | K8s masters Security Group ARN |
| masters_security_group_id | K8s masters Security Group ID |
| nodes_role_arn | Kops nodes Role ARN |
| nodes_role_name | Kops nodes Role name |
| nodes_security_group_arn | Kops masters Role name |
| nodes_security_group_id | Kops masters Role ARN |
| private_subnet_ids | Private subnets IDs in the VPC |
| utility_subnet_ids | Utility submets IDs in the VPC |
| vpc_id | Kops VPC ID |

