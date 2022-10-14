terraform {
  required_version = ">= 0.12.24"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.34.0"
        region  = var.region
    }
  }
}

provider "aws" {
    alias   = "AWS-Account-0"
    region  = var.region
}

provider "aws" {
    alias   = "AWS-Account-1"
    region  = var.region
}

