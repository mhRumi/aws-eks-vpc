#  Creating the NAT Gateway using subnet_id and allocation_id
resource "aws_nat_gateway" "nat-gw-1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    "Name" = "${var.vpc_name}-nat-1"
  }
}

resource "aws_nat_gateway" "nat-gw-2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public-subnet-2.id

  tags = {
    "Name" = "${var.vpc_name}-nat-2"
  }
}