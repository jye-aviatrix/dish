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


resource "aviatrix_vpc" "shared" {
    cloud_type = 1
    account_name = var.avx_access_account
    name = "shared"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
    region = var.region
    cidr = var.shared_vpc_cidr
}



