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