terraform {
  required_version = ">= 0.12.24"
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    alias   = "AWS-Account-00"
    region  = var.region
    profile = var.profile
}

provider "aws" {
    alias   = "AWS-Account-01"
    region  = var.region
    profile = var.profile
}

