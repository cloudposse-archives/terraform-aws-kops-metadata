variable "enabled" {
  default     = "true"
  description = "Set to false to prevent the module from creating or accessing any resources"
}

variable "dns_zone" {
  type        = "string"
  description = "Name of the Kops DNS zone"
}

variable "bastion_name" {
  type        = "string"
  default     = "bastion"
  description = "Bastion server subdomain name in the Kops DNS zone"
}

variable "masters_name" {
  type        = "string"
  default     = "masters"
  description = "K8s masters subdomain name in the Kops DNS zone"
}

variable "nodes_name" {
  type        = "string"
  default     = "nodes"
  description = "K8s nodes subdomain name in the Kops DNS zone"
}
