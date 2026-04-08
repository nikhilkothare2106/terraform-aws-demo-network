resource "aws_route_table" "rt" {
  count  = length(var.public_subnets) > 0 ? 1 : 0
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }
  tags = {
    Name = "public_rt"
  }
}

resource "aws_route_table" "private_rt" {
  count  = length(var.private_subnets) > 0 ? 1 : 0
  vpc_id = var.vpc_id

  tags = {
    Name = "private-rt"
  }
}

resource "aws_route_table_association" "rta" {
  for_each       = var.public_subnets
  subnet_id      = each.value.id
  route_table_id = aws_route_table.rt[0].id
}
resource "aws_route_table_association" "private_rta" {
  for_each = var.private_subnets

  subnet_id      = each.value.id
  route_table_id = aws_route_table.private_rt[0].id
}