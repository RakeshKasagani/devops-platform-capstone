# ==========================
# Jenkins Security Group
# ==========================
resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins-sg"
  description = "Security group for Jenkins"
  vpc_id      = var.vpc_id

  ingress {
    description = "Jenkins Web UI"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "jenkins-sg"
  }
}

# ==========================
# SonarQube Security Group
# ==========================
resource "aws_security_group" "sonarqube_sg" {
  name        = "sonarqube-sg"
  description = "Security group for SonarQube"
  vpc_id      = var.vpc_id

  ingress {
    description = "SonarQube Web UI"
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "sonarqube-sg"
  }
}

# ==========================
# Nexus Security Group
# ==========================
resource "aws_security_group" "nexus_sg" {
  name        = "nexus-sg"
  description = "Security group for Nexus"
  vpc_id      = var.vpc_id

  ingress {
    description = "Nexus Web UI"
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "nexus-sg"
  }
}

# ==========================
# Docker Registry Security Group
# ==========================
resource "aws_security_group" "docker_registry_sg" {
  name        = "docker-registry-sg"
  description = "Security group for Docker Registry"
  vpc_id      = var.vpc_id

  ingress {
    description = "Docker Registry"
    from_port   = 2375
    to_port     = 2376
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "docker-registry-sg"
  }
}
# ==========================
# Ansible Security Group
# ==========================
# resource "aws_security_group" "ansible_sg" {
#   name        = "ansible-sg"
#   description = "Security group for ansible"
#   vpc_id      = var.vpc_id

  
#   ingress {
#     description = "SSH"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = var.allowed_cidr
#   }
