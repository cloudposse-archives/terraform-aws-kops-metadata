variable "enabled" {
  default     = "true"
  description = "Set to false to prevent the module from creating or accessing any resources"
}

variable "dns_zone" {
  description = "Name of the kops DNS zone"
}
