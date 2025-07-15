terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket = "ontoscale-terraform-backend"
    key    = "openai-with-aws-test3/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

variable "aws_region" {
  type    = string
  default = "eu-west-2"
}

variable "bucket_name" {
  type    = string
  default = "ontoscale-ai-london-test4"
}
