output "vpc_id" {
  value = module.vpc.vpc_id
}


output "public_subnets" {
  value = module.subnet.public_subnets
}

output "private_subnets" {
  value = module.subnet.private_subnets
}
