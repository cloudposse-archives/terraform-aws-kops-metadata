data "aws_caller_identity" "default" {}

data "aws_vpc" "kops" {
  count = "${var.enabled == "true" ? 1 : 0}"

  filter {
    name   = "tag:${var.vpc_tag}"
    values = ["${concat(var.vpc_tag_values, list(var.dns_zone))}"]
  }
}

data "aws_subnet_ids" "private" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"

  tags {
    "kubernetes.io/role/internal-elb" = "1"
  }
}

data "aws_subnet_ids" "utility" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"

  tags {
    "kubernetes.io/role/elb" = "1"
  }
}

data "aws_security_group" "bastion" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"
  name   = "${var.bastion_name}.${var.dns_zone}"

  tags {
    Name              = "${var.bastion_name}.${var.dns_zone}"
    KubernetesCluster = "${var.dns_zone}"
  }
}

data "aws_security_group" "masters" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"
  name   = "${var.masters_name}.${var.dns_zone}"

  tags {
    Name              = "${var.masters_name}.${var.dns_zone}"
    KubernetesCluster = "${var.dns_zone}"
  }
}

data "aws_security_group" "nodes" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"
  name   = "${var.nodes_name}.${var.dns_zone}"

  tags {
    Name              = "${var.nodes_name}.${var.dns_zone}"
    KubernetesCluster = "${var.dns_zone}"
  }
}

data "aws_iam_role" "masters" {
  count = "${var.enabled == "true" ? 1 : 0}"
  name  = "${var.masters_name}.${var.dns_zone}"
}

data "aws_iam_role" "nodes" {
  count = "${var.enabled == "true" ? 1 : 0}"
  name  = "${var.nodes_name}.${var.dns_zone}"
}
