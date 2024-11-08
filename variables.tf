variable "region" {
  description = "AWS region"
  #default     = "us-west-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}

variable "public_subnets_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.1.1.0/24"]
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}


variable "internet_cidr" {
  description = "CIDR block for internet out"
  default     = "0.0.0.0/0"
}

variable "cloudwatch_log_retention_days" {
  description = "logs retention days"
  default     = 14
}

variable "cloudwatch_log_group_name" {
  description = "cloudwatch log group name"
  default     = "cloud-watch-logs-group5-src1"
}

variable "flow_log_traffic_type" {
  default = "ALL"
}

variable "vpc_id" {
  description = "ID du VPC"
  type        = string
  #  default     = "aws_vpc.group5-src1_vpc.id"
}

variable "vpc_name" {
  description = "Nom du VPC"
  type        = string
  default     = "group5-src1-vpc"
}

variable "s3_bucket_name" {
  description = "Nom du bucket S3"
  type        = string
  default     = "grp5-src1-s3"
}
