variable "aws_region" {
  type    = string
  default = "us-east-1"
}


variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t2.medium"
}

variable "key_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "jenkins_sg_id" {
    type = string
  
}
variable "sonarqube_sg_id" {
    type = string
  
}
variable "nexus_sg_id" {
    type = string
  
}
variable "docker_sg_id" {
    type = string
  
}
# variable "ansible_sg_id" {
#   type = string
# }
