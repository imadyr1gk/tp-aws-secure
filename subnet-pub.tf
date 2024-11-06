resource "aws_subnet" "subnet_pub1" {
  vpc_id                  = aws_vpc.group5-src1_vpc.id
  cidr_block              = var.public_subnets_cidrs[0]
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true
  tags = {
    Name = "group5-src1_src1_subnet_pub1"
  }
}

