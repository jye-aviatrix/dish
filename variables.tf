variable "cloud" {
  default = "AWS"
}

variable "region" {
  default = "us-east-1"
}

variable "avx_access_account" {
  default = "aws-lab-jye"
}

variable "region_prefix" {
  default = "aws-ue1"
}

variable "key_name" {
  description = "Provide EC2 Key Name"
}



variable "dev_vpc_cidr" {
  default = "10.32.1.0/24"
}

variable "shared_vpc_cidr" {
  default = "10.32.3.0/24"
}

variable "security_vpc_cidr" {
  default = "10.64.254.0/23"
}

