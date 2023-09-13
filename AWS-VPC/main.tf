terraform {
  required_version = ">=1.0.0"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
  }
  backend "s3" {
    bucket = "caiocardoso-remote-state"
    key    = "aws_vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "caiocardoso"
      managed-by = "terraform"
    }
  }
}
