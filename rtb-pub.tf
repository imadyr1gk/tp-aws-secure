# Routing table pour  private subnet dans AZ A 

resource "aws_route_table" "group5-src1-rtb-pub" {
  vpc_id = aws_vpc.group5-src1_vpc.id

  route {
    cidr_block = var.internet_cidr
    gateway_id = aws_internet_gateway.group5-src1-igw.id
  }

  tags = {
    Name = "group5-src1-rtb-pub"
  }
  depends_on = [aws_vpc.group5-src1_vpc, aws_internet_gateway.group5-src1-igw]
}

#route table association
resource "aws_route_table_association" "a-pub" {
  subnet_id      = aws_subnet.subnet_pub1.id
  route_table_id = aws_route_table.group5-src1-rtb-pub.id
}
