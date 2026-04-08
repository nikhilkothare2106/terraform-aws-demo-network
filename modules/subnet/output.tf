# output "subnets" {
#   value = aws_subnet.subnets
# }

output "public_subnets" {
  value = {
    for key, subnet in aws_subnet.subnets :
    key => {
      id = subnet.id
      az = subnet.availability_zone
    }
    if var.subnet_config[key].public
  }
}

output "private_subnets" {
  value = {
    for key, subnet in aws_subnet.subnets :
    key => {
      id = subnet.id
      az = subnet.availability_zone
    }
    if !var.subnet_config[key].public
  }
}

