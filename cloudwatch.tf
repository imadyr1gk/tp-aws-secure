#resource "aws_cloudwatch_log_group" "cloudwatch_logs_group" {
#  name              = "cloud-watch-logs-group5-src1"
#  retention_in_days = 14
#}

resource "aws_cloudwatch_log_group" "cloudwatch_logs_group" {
  name              = var.cloudwatch_log_group_name
  retention_in_days = var.cloudwatch_log_retention_days
}
