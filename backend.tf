terraform {
  backend "s3" {
    bucket  = "grp5-src1-s3"
    key     = "terraform.tfstate"
    region  = "eu-west-3"
    encrypt = true
  }
}
