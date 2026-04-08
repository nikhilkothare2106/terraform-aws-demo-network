# terraform-aws-vpc

## Overview

This Terraform module creates an AWS VPC with a given CIDR block.  
It also creates multiple subnets (public and private).

## Features

- Creates a VPC with a specified CIDR block
- Creates public and private subnets
- Creates an Internet Gateway (IGW) for public subnets
- Sets up route tables for public and private subnets

## Usage

```hcl
vpc_config = {
  cidr_block = "10.0.0.0/16"
  name       = "vpc_1"
}

region = "ap-south-1"

subnet_config = {
  "public_subnet_1" = {
    cidr_block = "10.0.0.0/24"
    az         = "ap-south-1a"
    public     = true
  },
  "private_subnet_1" = {
    cidr_block = "10.0.1.0/24"
    az         = "ap-south-1b"
  },
  "public_subnet_2" = {
    cidr_block = "10.0.2.0/24"
    az         = "ap-south-1c"
    public     = true
  },
  "private_subnet_2" = {
    cidr_block = "10.0.3.0/24"
    az         = "ap-south-1a"
  }
}
```
