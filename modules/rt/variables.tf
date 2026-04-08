variable "vpc_id" {
  description = "Id of the vpc"
  type        = string
}

variable "igw_id" {
  description = "Internet Gateway Id"
  type        = string
}

variable "public_subnets" {
  description = "All public subnets"
}

variable "private_subnets" {
  description = "All public subnets"
}