provider "aws" {
  region = "us-east-1"
}
# create vpc
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}
# create internet gateway
resource "aws_internet_gateway" "GW" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.igw_name
  }
}

# create public subnet
resource "aws_subnet" "pub-sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = "true"

  tags = {
    Name = var.public_subnet_name
  }
}

# create public route table
resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.public_route_table_name
  }
}


# Attach route to public route-table and internetgateway
resource "aws_route" "public_default_route" {
  route_table_id            = aws_route_table.pub-rt.id
  destination_cidr_block    = var.default_route_destination
  gateway_id = aws_internet_gateway.GW.id
}

# Subnet Association
# Attach public-subnet to public route table
resource "aws_route_table_association" "pub-subnet-rt" {
  subnet_id      = aws_subnet.pub-sub.id
  route_table_id = aws_route_table.pub-rt.id
}
