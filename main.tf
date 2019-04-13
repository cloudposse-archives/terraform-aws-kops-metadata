
data "aws_iam_role" "masters" {
  count = "${var.enabled == "true" ? 1 :0}"
  name = "masters.${var.cluster_name}"
}

data "aws_iam_role" "nodes" {
  count = "${var.enabled == "true" ? 1 :0}"
  name = "nodes.${var.cluster_name}"
}
