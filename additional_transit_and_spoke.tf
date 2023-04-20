module "mc-transit1" {
  source                 = "terraform-aviatrix-modules/mc-transit/aviatrix"
  version                = "2.4.1"
  cloud                  = var.cloud
  region                 = "us-east-2"
  cidr                   = "10.64.2.0/23"
  account                = var.avx_access_account
  name                   = "ue2-transit"
  gw_name                = "ue2-transit"
  insane_mode            = false
  enable_transit_firenet = false
  local_as_number        = 65011
  ha_gw                  = false
}


# Create Aviatrix Spoke VPC and Spoke GW and attach to Aviatrix Transit
module "mc-spoke1" {
  source     = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version    = "1.5.0"
  cloud      = var.cloud
  region     = "us-east-2"
  cidr       = "10.16.11.0/24"
  account    = var.avx_access_account
  name       = "ue2-spoke"
  transit_gw = module.mc-transit1.transit_gateway.gw_name
  ha_gw      = false
}

module "spoke_pub_vm1" {
  source    = "jye-aviatrix/aws-linux-vm-public/aws"
  version   = "2.0.1"
  vm_name   = "ue2-spoke-pub"
  vpc_id    = module.mc-spoke1.vpc.vpc_id
  subnet_id = module.mc-spoke1.vpc.public_subnets[1].subnet_id
  key_name  = var.key_name
  use_eip   = true
  providers = {
    aws = aws.us-east-2
  }
}

output "spoke_pub_vm1" {
  value = module.spoke_pub_vm1
}

module "mc-transit2" {
  source                 = "terraform-aviatrix-modules/mc-transit/aviatrix"
  version                = "2.4.1"
  cloud                  = var.cloud
  region                 = "us-west-1"
  cidr                   = "10.64.4.0/23"
  account                = var.avx_access_account
  name                   = "uw1-transit"
  gw_name                = "uw1-transit"
  insane_mode            = false
  enable_transit_firenet = false
  local_as_number        = 65012
  ha_gw                  = false
}


# Create Aviatrix Spoke VPC and Spoke GW and attach to Aviatrix Transit
module "mc-spoke2" {
  source     = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version    = "1.5.0"
  cloud      = var.cloud
  region     = "us-west-1"
  cidr       = "10.16.12.0/24"
  account    = var.avx_access_account
  name       = "uw1-spoke"
  transit_gw = module.mc-transit2.transit_gateway.gw_name
  ha_gw      = false
}

module "spoke_pub_vm2" {
  source    = "jye-aviatrix/aws-linux-vm-public/aws"
  version   = "2.0.1"
  vm_name   = "uw1-spoke-pub"
  vpc_id    = module.mc-spoke2.vpc.vpc_id
  subnet_id = module.mc-spoke2.vpc.public_subnets[1].subnet_id
  key_name  = var.key_name
  use_eip   = true
  providers = {
    aws = aws.us-west-1
  }
}

output "spoke_pub_vm2" {
  value = module.spoke_pub_vm2
}
