terraform {
  backend "s3" {
    bucket         = "s3-grp5"
    #key            = "terraform.tfstate"
    #region         = "eu-west-3"   # par exemple pour Paris
    dynamodb_table = "nom-de-la-table-dynamodb"  # Optionnel pour la gestion des verrous
    encrypt        = true          # Pour chiffrer le fichier tfstate côté serveur
  }
}
