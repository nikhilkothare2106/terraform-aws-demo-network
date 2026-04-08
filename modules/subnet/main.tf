resource "aws_subnet" "subnets" {
  vpc_id   = var.vpc_id
  for_each = var.subnet_config

  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az

  tags = {
    Name = each.key
  }
}