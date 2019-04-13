## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster_name | The kubernetes cluster name | string | - | yes |
| enabled | Set to false to prevent the module from creating or accessing any resources | string | `true` | no |
| vpc_id | The kops VPC id | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| bastion_security_group_arn | Bastion server Security Group ARN |
| bastion_security_group_id | Bastion server Security Group ID |
| masters_security_group_arn | K8s masters Security Group ARN |
| masters_security_group_id | K8s masters Security Group ID |
| nodes_security_group_arn | Kops masters Role name |
| nodes_security_group_id | Kops masters Role ARN |
| private_subnet_ids | Private subnets IDs in the VPC |
| utility_subnet_ids | Utility submets IDs in the VPC |
| vpc_id | Kops VPC ID |

