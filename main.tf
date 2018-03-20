data "aws_vpc" "kops" {
  count = "${var.enabled == "true" ? 1 : 0}"

  filter {
    name   = "tag:Name"
    values = ["${var.dns_zone}"]
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
  name   = "bastion.${var.dns_zone}"

  tags {
    Name              = "bastion.${var.dns_zone}"
    KubernetesCluster = "${var.dns_zone}"
  }
}

data "aws_security_group" "masters" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"
  name   = "masters.${var.dns_zone}"

  tags {
    Name              = "masters.${var.dns_zone}"
    KubernetesCluster = "${var.dns_zone}"
  }
}

data "aws_security_group" "nodes" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"
  name   = "nodes.${var.dns_zone}"

  tags {
    Name              = "nodes.${var.dns_zone}"
    KubernetesCluster = "${var.dns_zone}"
  }
}
