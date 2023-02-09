resource "aviatrix_aws_tgw_transit_gateway_attachment" "transit" {
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
    region = var.region
    transit_gateway_name = module.mc-transit.transit_gateway.gw_name
    vpc_account_name = var.avx_access_account
    vpc_id = module.mc-transit.vpc.vpc_id
}

