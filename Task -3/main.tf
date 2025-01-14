provider "aws" {
  region = var.region
}

resource "aws_instance" "myinstance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count = var.count

  tags = {
    Name = "my-demo-Instance"
  }
}

resource "aws_lb" "mylb" {
  name               = "myapplb"
  internal           = false
  load_balancer_type = "application"
  security_groups   = [aws_security_group.allow_all.id]
  subnets           = var.subnet_ids
}

resource "aws_s3_bucket" "my-task-bucket-1401" {
  bucket = var.bucket_name
}

resource "aws_security_group" "mysg" {
  name_prefix = "allow_all"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Backend Configuration
terraform {
  backend "s3" {
    bucket = "sample-task-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}