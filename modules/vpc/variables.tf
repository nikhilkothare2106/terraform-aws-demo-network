variable "vpc_config" {
  description = "CIDR and Name of VPC"
  type = object({
    cidr_block = string
    name       = string
  })
  validation {
    condition     = can(cidrnetmask(var.vpc_config.cidr_block))
    error_message = "Invalid cidr format - ${var.vpc_config.cidr_block}"
  }
}

variable "region" {
  description = "Region of the resources"
  type        = string
}