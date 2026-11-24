variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources"
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources"
}
variable "s3_bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}
