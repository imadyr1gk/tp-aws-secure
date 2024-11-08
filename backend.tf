terraform {
  backend "s3" {
    bucket         = "var.grp5_src1_s3"
    key            = "terraform.tfstate"
    region         = "var.region"   # par exemple pour Paris
    encrypt        = true          # Pour chiffrer le fichier tfstate côté serveur
  }
}
