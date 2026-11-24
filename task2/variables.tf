variable "ssh_key" {
  type        = string
  description = "Provides custom public SSH key"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources"
}

variable "key_name" {
  type        = string
  description = "Name of the key pair"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "security_group_name" {
  type        = string
  description = "Name of the security group"
}

variable "aws_instance_name" {
  type        = string
  description = "Name of the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Type of the EC2 instance"
}
variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources"
}
