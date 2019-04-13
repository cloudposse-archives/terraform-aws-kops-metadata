variable "enabled" {
  default     = "true"
  description = "Set to false to prevent the module from creating or accessing any resources"
}

variable "cluster_name" {
  type        = "string"
  description = "The kubernetes cluster name"
}

variable "vpc_id" {
  default     = ""
  description = "The kops VPC id"
}
