locals {
  vpc_id      = "${var.vpc_id == "" && var.enabled == "true" ? element(concat(data.aws_vpc.kops.*.id, list(""), 0)) : var.vpc_id}"
  cluster_tag = "kubernetes/cluster/${var.cluster_name}"
}

# kops 1.11, VPC gets KC and k/c tag if owned, nothing if shared.
data "aws_vpc" "kops" {
  count = "${var.enabled == "true" ? 1 : 0}"

  filter {
    name   = "tag-key"
    values = ["${local.cluster_tag}"]
  }
}

# kops 1.11 private subnet gets KC and k/c tag + SubnetType = "Private". kops 1.12 drops KC tag.
data "aws_subnet_ids" "private" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${local.vpc_id}"

  tags {
    "kubernetes.io/role/internal-elb" = "1"
  }
}

# kops 1.11 private subnet gets KC and k/c tag + SubnetType = "Utility". kops 1.12 drops KC tag.
data "aws_subnet_ids" "utility" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"

  tags {
    "kubernetes.io/role/elb" = "1"
  }
}

# kops 1.11 & 1.12 SG bastion gets KC and k/c tag plus Name = bastion.clustername
data "aws_security_group" "bastion" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"
  name   = "bastion.${var.cluster_name}"

  tags {
    Name = "bastion.${var.cluster_name}"
  }
}

# kops 1.11 & 1.12 SG masters gets KC and k/c tag plus Name = masters.clustername
data "aws_security_group" "masters" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"
  name   = "masters.${var.cluster_name}"

  tags {
    Name = "masters.${var.cluster_name}"
  }
}

# kops 1.11 & 1.12 SG masters gets KC and k/c tag plus Name = nodes.clustername
data "aws_security_group" "nodes" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${data.aws_vpc.kops.id}"
  name   = "nodes.${var.cluster_name}"

  tags {
    Name = "nodes.${var.cluster_name}"
  }
}
