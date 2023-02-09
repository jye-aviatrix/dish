# Create Aviatrix Transit
module "mc-transit" {
  source  = "terraform-aviatrix-modules/mc-transit/aviatrix"
  version = "2.4.1"
  cloud = var.cloud
  region = var.region
  cidr = var.avx_transit_cidr
  account = var.avx_access_account
  name = "${var.region_prefix}-transit"
  gw_name = "${var.region_prefix}-transit"
  insane_mode = true
  enable_transit_firenet = true
  local_as_number = var.avx_transit_asn
}

