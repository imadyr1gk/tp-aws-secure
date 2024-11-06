data "aws_availability_zones" "available" {
  state = "available"
}

#data source pour ec2 t2.micro
data "aws_ami" "amazon-linux-2023" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "name"
    values = ["al2023-ami-2023.*"]
    # values = ["amzn2-ami-kernel-5.10-hvm*"]
  }
}
