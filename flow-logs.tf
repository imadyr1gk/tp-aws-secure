# Création du Flow Log pour le VPC
resource "aws_flow_log" "vpc_flow_log" {
  log_destination_type = "cloud-watch-logs"
  log_group_name       = aws_cloudwatch_log_group.cloudwatch_logs_group.name
  iam_role_arn         = aws_iam_role.flow_logs_role.arn
  traffic_type         = "ALL" # Choisissez ALL, ACCEPT ou REJECT selon les besoins
  vpc_id               = "group5-src1_vpc" # Remplacez par l'ID de votre VPC réel
}