variable "vpc_config" {
  description = "Cidr and Name of VPC"
  type = object({
    cidr_block = string
    name       = string
  })
}

variable "region" {
  description = "Region of the resources"
  type        = string
}

variable "subnet_config" {
  description = "CIDR and AZ of Subnets"
  type = map(object({
    cidr_block = string
    az         = string
    public     = optional(bool, false)

  }))
}
