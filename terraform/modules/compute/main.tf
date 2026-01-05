provider "aws" {
  region = var.aws_region
}

# Jenkins Server
resource "aws_instance" "jenkins" {
  ami                    = var.ami_id
  instance_type           = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.jenkins_sg_id]

  tags = {
    Name = "ec2-jenkins"
  }
}

# SonarQube Server
resource "aws_instance" "sonarqube" {
  ami                    = var.ami_id
  instance_type           = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sonarqube_sg_id]

  tags = {
    Name = "ec2-sonarqube"
  }
}

# Nexus Server
resource "aws_instance" "nexus" {
  ami                    = var.ami_id
  instance_type           = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.nexus_sg_id]

  tags = {
    Name = "ec2-nexus"
  }
}

# Docker Server
resource "aws_instance" "docker" {
  ami                    = var.ami_id
  instance_type           = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.docker_sg_id]

  tags = {
    Name = "ec2-docker"
  }
}
# Ansible Server
# resource "aws_instance" "ansible" {
#   ami                    = var.ami_id
#   instance_type           = "t3.micro"
#   key_name               = var.key_name
#   subnet_id              = var.subnet_id
#   vpc_security_group_ids = [var.ansible_sg_id]

#   tags = {
#     Name = "ec2-ansible"
#   }
# }
