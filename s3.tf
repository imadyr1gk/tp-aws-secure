resource "aws_s3_bucket" "grp5_src1_s3" {
  bucket = "var.grp5_src1_s3"

  tags = {
    Name        = "grp5_src1_s3"
    Environment = "Dev"
  }
}