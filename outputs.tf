
output "masters_role_name" {
  value       = "${join("", data.aws_iam_role.masters.*.id)}"
  description = "K8s nodes Security Group ARN"
}

output "masters_role_arn" {
  value       = "${join("", data.aws_iam_role.masters.*.arn)}"
  description = "K8s nodes Security Group ID"
}

output "nodes_role_name" {
  value       = "${join("", data.aws_iam_role.nodes.*.id)}"
  description = "Kops nodes Role name"
}

output "nodes_role_arn" {
  value       = "${join("", data.aws_iam_role.nodes.*.arn)}"
  description = "Kops nodes Role ARN"
}
