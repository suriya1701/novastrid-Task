variable "region" {
  type        = string
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
  default     = {}
}

variable "instance_type" {
  type        = string
  description = "The type of instance to use for the EC2"
  default     = {}
}

variable "subnet_ids" {
  type        = list(string)
  description = "The subnet IDs for the load balancer"
  default     = {}
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
  default     = {}
}