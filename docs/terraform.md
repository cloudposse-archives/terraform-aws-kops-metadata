## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster_name | The kuberetes cluster name | string | - | yes |
| enabled | Set to false to prevent the module from creating or accessing any resources | string | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| masters_role_arn | K8s nodes Security Group ID |
| masters_role_name | K8s nodes Security Group ARN |
| nodes_role_arn | Kops nodes Role ARN |
| nodes_role_name | Kops nodes Role name |

