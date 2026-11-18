terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "my_first_bucket" {
  bucket = "kani-2k05-first-bucket-12345"

  tags = {
    Name = "MyFirstBucket"
    Owner = "kani-2k05"
  }
}
