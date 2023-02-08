module "mc-spoke" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version = "1.5.0"
  cloud = var.cloud
  region = var.region
  cidr = var.avx_spoke_cidr
  account = var.avx_access_account
  name = "${var.region_prefix}-spoke"
  transit_gw = module.mc-transit.transit_gateway.gw_name
}

module "aws-linux-vm-public" {
  source  = "jye-aviatrix/aws-linux-vm-public/aws"
  version = "2.0.1"
  vm_name = "${var.region_prefix}-spoke-pub"
  vpc_id = module.mc-spoke.vpc.vpc_id
  key_name = var.key_name
}