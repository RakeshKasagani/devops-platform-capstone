variable "vpc_cidr_block" {
  description = "The CIDR block of VPC"
  type = string
  default = "10.0.0.0/16"
}
variable "vpc_name" {   
  description = "The name of VPC"
  type = string
  default = "aja-tf-vpc"
}
variable "igw_name" {
  description = "The name of Internet Gateway"
  type = string
  default = "aja-tf-igw"
}
variable "public_subnet_name" {
    description = "The name of public subnet"
    type = string
    default = "aja-public-sub"
  
}
variable "public_subnet_cidr" {
  description = "The cidr block of public subnet"
  type = string
  default = "10.0.0.0/24"
}
variable "public_subnet_availability_zone" {
  description = "The availability of public subnet"
  type = string
  default = "us-east-1a"
}
variable "public_route_table_name" {
  description = "The name of public route table"
  type = string
  default = "aja-pub-Rt"
}
variable "default_route_destination" {
  description = "The destination CIDR block for the default route in the public route table"
  type = string
  default = "0.0.0.0/0"
}

