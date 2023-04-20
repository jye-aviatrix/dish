resource "aviatrix_aws_tgw_vpc_attachment" "security" {
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
    region = var.region
    network_domain_name = aviatrix_aws_tgw_network_domain.security.name
    vpc_account_name = var.avx_access_account
    vpc_id = aviatrix_vpc.security.vpc_id
    # subnets = "subnet-04ae85c6491df6dde,subnet-0d20ca58a9208f7aa"
    disable_local_route_propagation = false
}

#Regular VPC attachment to TGW

resource "aviatrix_aws_tgw_vpc_attachment" "dev" {
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
    region = var.region
    network_domain_name = aviatrix_aws_tgw_network_domain.dev.name
    vpc_account_name = var.avx_access_account
    vpc_id = aviatrix_vpc.dev.vpc_id
    disable_local_route_propagation = false
}

resource "aviatrix_aws_tgw_vpc_attachment" "shared" {
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
    region = var.region
    network_domain_name = aviatrix_aws_tgw_network_domain.shared.name
    vpc_account_name = var.avx_access_account
    vpc_id = aviatrix_vpc.shared.vpc_id
    disable_local_route_propagation = false
}

