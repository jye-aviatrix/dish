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
  region = var.region  
}
