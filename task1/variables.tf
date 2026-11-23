variable "aws_region" {
  type        = string
  description = "region in aws"
}
variable "vpc" {
  type        = string
  description = "VPC ID in aws"
}
variable "route_table" {
  type        = string
  description = "Route table ID in aws"
}
variable "subnets" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))
  description = "subnet name"
}
variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR block"
}
variable "igw" {
  type        = string
  description = "gateway name"
}
