terraform {
  required_version = "~> 1.3.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.3"
    }
  }

  backend "s3" {
    bucket = "willsresume-terraform"
    key    = "prod/terraform.tfstate"
    region = "ca-central-1"
  }
}

provider "aws" {
  region = "ca-central-1"
}

provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
}