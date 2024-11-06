resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon-linux-2023.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet_pub1.id
  vpc_security_group_ids = [aws_security_group.group5-src1_sg.id]
  tags = {
    Name = "group5-EC2"
  }
}
