resource "aws_vpc" "vpc20-4" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "vpc20.4"
  }
}

resource "aws_subnet" "subnet20-4" {
  count             = length(var.subnet_cidrs)
  vpc_id            = aws_vpc.vpc20-4.id
  cidr_block        = element(var.subnet_cidrs, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name = "subnet20-4-${count.index}"
  }
}

data "aws_availability_zones" "available" {}
