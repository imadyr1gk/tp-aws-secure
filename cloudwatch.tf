resource "aws_cloudwatch_log_group" "cloudwatch_logs_group" {
  name              = "cloud-watch-logs-group5-src1"
  retention_in_days = 14
  #depends_on        = [aws_flow_log.vpc_flow_log]
}