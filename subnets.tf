data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.Main.id
  cidr_block              = var.public_subnet_1
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true # required for EKS

  tags = {
    "Name"                      = "${var.vpc_name}-public-1"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.Main.id
  cidr_block        = var.private_subnet_1
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    "Name"                      = "${var.vpc_name}-private-1"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.Main.id
  cidr_block              = var.public_subnet_2
  availability_zone       = data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch = true # required for EKS

  tags = {
    "Name"                      = "${var.vpc_name}-public-2"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.Main.id
  cidr_block        = var.private_subnet_2
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    "Name"                      = "${var.vpc_name}-private-2"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}




