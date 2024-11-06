resource "aws_internet_gateway" "group5-src1-igw" {
  vpc_id = aws_vpc.group5-src1_vpc.id

  tags = {
    Name = "group5-src1-igw"
  }
}
