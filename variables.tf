variable "enabled" {
  default     = "true"
  description = "Set to false to prevent the module from creating or accessing any resources"
}

variable "cluster_name" {
  type        = "string"
  description = "The kuberetes cluster name"
}
