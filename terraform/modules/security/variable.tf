variable "vpc_id" {
  description = "VPC ID where security groups will be created"
  type        = string
}

variable "allowed_cidr" {
  description = "Allowed CIDR block for inbound traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
