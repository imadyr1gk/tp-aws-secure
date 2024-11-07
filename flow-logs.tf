# Création du Flow Log pour le VPC
resource "aws_flow_log" "vpc_flow_log" {
  log_destination_type = "cloud-watch-logs"
  log_group_name       = aws_cloudwatch_log_group.cloudwatch_logs_group.name
  iam_role_arn         = data.aws_iam_role.role_vpc_fl.arn
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.group5-src1_vpc.id
}
