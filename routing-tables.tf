resource "aws_route_table" "public" {
  vpc_id = aws_vpc.Main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags = {
    "Name" = "${var.vpc_name}-public"
  }
}

resource "aws_route_table" "private-1" {
  vpc_id = aws_vpc.Main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw-1.id
  }

  tags = {
    "Name" = "${var.vpc_name}-private-1"
  }
}

resource "aws_route_table" "private-2" {
  vpc_id = aws_vpc.Main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw-2.id
  }

  tags = {
    "Name" = "${var.vpc_name}-private-2"
  }
}