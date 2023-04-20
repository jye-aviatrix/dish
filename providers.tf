terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    aviatrix = {
      source = "AviatrixSystems/aviatrix"
      version = "~> 3.0.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
}


provider "aws" {
  alias = "us-west-1"
  region = "us-west-1"
}