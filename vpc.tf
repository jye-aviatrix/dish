# Create AWS VPCs using Aviatrix Useful Tools
resource "aviatrix_vpc" "security" {
    cloud_type = 1
    account_name = var.avx_access_account
    name = "security"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = true
    enable_native_gwlb = true
    region = var.region
    cidr = var.security_vpc_cidr
}

resource "aviatrix_vpc" "dev" {
    cloud_type = 1
    account_name = var.avx_access_account
    name = "dev"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
    region = var.region
    cidr = var.dev_vpc_cidr
}

module "dev_pub_vm" {
  source  = "jye-aviatrix/aws-linux-vm-public/aws"
  version = "2.0.1"
  vm_name = "${var.region_prefix}-shared-pub"
  vpc_id = aviatrix_vpc.dev.vpc_id
  subnet_id = aviatrix_vpc.dev.public_subnets[1].subnet_id
  key_name = var.key_name
  use_eip = true
}

output "dev_pub_vm" {
  value = module.dev_pub_vm
}

resource "aviatrix_vpc" "shared" {
    cloud_type = 1
    account_name = var.avx_access_account
    name = "shared"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
    region = var.region
    cidr = var.shared_vpc_cidr
}


module "shared_pub_vm" {
  source  = "jye-aviatrix/aws-linux-vm-public/aws"
  version = "2.0.1"
  vm_name = "${var.region_prefix}-shared-pub"
  vpc_id = aviatrix_vpc.shared.vpc_id
  subnet_id = aviatrix_vpc.shared.public_subnets[1].subnet_id
  key_name = var.key_name
  use_eip = true
}

output "shared_pub_vm" {
  value = module.shared_pub_vm
}


