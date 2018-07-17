output "vpc_id" {
  value       = "${join("", data.aws_vpc.kops.*.id)}"
  description = "Kops VPC ID"
}

output "private_subnet_ids" {
  value       = "${flatten(data.aws_subnet_ids.private.*.ids)}"
  description = "Private subnets IDs in the VPC"
}

output "utility_subnet_ids" {
  value       = "${flatten(data.aws_subnet_ids.utility.*.ids)}"
  description = "Utility submets IDs in the VPC"
}

output "bastion_security_group_arn" {
  value       = "${join("", data.aws_security_group.bastion.*.arn)}"
  description = "Bastion server Security Group ARN  "
}

output "bastion_security_group_id" {
  value       = "${join("", data.aws_security_group.bastion.*.id)}"
  description = "Bastion server Security Group ID"
}

output "masters_security_group_arn" {
  value       = "${join("", data.aws_security_group.masters.*.arn)}"
  description = "K8s masters Security Group ARN"
}

output "masters_security_group_id" {
  value       = "${join("", data.aws_security_group.masters.*.id)}"
  description = "K8s masters Security Group ID"
}

output "masters_role_name" {
  value       = "${data.aws_iam_role.masters.id}"
  description = "K8s nodes Security Group ARN"
}

output "masters_role_arn" {
  value       = "${data.aws_iam_role.masters.arn}"
  description = "K8s nodes Security Group ID"
}

output "nodes_security_group_arn" {
  value       = "${join("", data.aws_security_group.nodes.*.arn)}"
  description = "Kops masters Role name"
}

output "nodes_security_group_id" {
  value       = "${join("", data.aws_security_group.nodes.*.id)}"
  description = "Kops masters Role ARN"
}

output "nodes_role_name" {
  value       = "${data.aws_iam_role.nodes.id}"
  description = "Kops nodes Role name"
}

output "nodes_role_arn" {
  value       = "${data.aws_iam_role.nodes.arn}"
  description = "Kops nodes Role ARN"
}
