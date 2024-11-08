output "subnet_pub1_id" {
  description = "ID du sous-réseau public"
  value       = aws_subnet.subnet_pub1.id
}

output "group5-src1_vpc_id" {
  description = "ID de la VPC"
  value       = aws_vpc.group5-src1_vpc.id
}

output "groupe5-src1-nacl_id" {
  description = "ID du Network-ACL"
  value       = aws_network_acl.groupe5-src1-nacl.id
}

output "cloudwatch_logs_group_id" {
  description = "ID du Cloudwatch"
  value       = aws_cloudwatch_log_group.cloudwatch_logs_group.id
}

output "group5-src1_sg_id" {
  description = "ID du security group"
  value       = aws_security_group.group5-src1_sg.id
}

