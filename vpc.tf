#Create a VPC
resource "aws_vpc" "group5-src1_vpc" {
  cidr_block = var.vpc_cidr
  tags       = { Name = "group5-src1-vpc" }
}
