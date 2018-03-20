output "vpc_id" {
  value = "${join("", data.aws_vpc.kops.*.id)}"
}

output "private_subnet_ids" {
  value = "${flatten(data.aws_subnet_ids.private.*.ids)}"
}

output "utility_subnet_ids" {
  value = "${flatten(data.aws_subnet_ids.utility.*.ids)}"
}

output "bastion_security_group_arn" {
  value = "${join("", data.aws_security_group.bastion.*.arn)}"
}

output "bastion_security_group_id" {
  value = "${join("", data.aws_security_group.bastion.*.id)}"
}

output "masters_security_group_arn" {
  value = "${join("", data.aws_security_group.masters.*.arn)}"
}

output "masters_security_group_id" {
  value = "${join("", data.aws_security_group.masters.*.id)}"
}

output "nodes_security_group_arn" {
  value = "${join("", data.aws_security_group.nodes.*.arn)}"
}

output "nodes_security_group_id" {
  value = "${join("", data.aws_security_group.nodes.*.id)}"
}
