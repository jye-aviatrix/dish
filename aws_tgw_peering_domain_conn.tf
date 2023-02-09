# Defines TGWO connection policies between network domains
resource "aviatrix_aws_tgw_peering_domain_conn" "shared_to_dev" {
    tgw_name1 = aviatrix_aws_tgw.aws_tgw.tgw_name
    domain_name1 = "Shared_Service_Domain"
    tgw_name2 = aviatrix_aws_tgw.aws_tgw.tgw_name
    domain_name2 = "dev"
}

resource "aviatrix_aws_tgw_peering_domain_conn" "shared_to_edge" {
    tgw_name1 = aviatrix_aws_tgw.aws_tgw.tgw_name
    domain_name1 = "Aviatrix_Edge_Domain"
    tgw_name2 = aviatrix_aws_tgw.aws_tgw.tgw_name
    domain_name2 = "Shared_Service_Domain"
}

resource "aviatrix_aws_tgw_peering_domain_conn" "default_to_edge" {
    tgw_name1 = aviatrix_aws_tgw.aws_tgw.tgw_name
    domain_name1 = "Aviatrix_Edge_Domain"
    tgw_name2 = aviatrix_aws_tgw.aws_tgw.tgw_name
    domain_name2 = "Default_Domain"
}

resource "aviatrix_aws_tgw_peering_domain_conn" "dev_to_edge" {
    tgw_name1 = aviatrix_aws_tgw.aws_tgw.tgw_name
    domain_name1 = "Aviatrix_Edge_Domain"
    tgw_name2 = aviatrix_aws_tgw.aws_tgw.tgw_name
    domain_name2 = "dev"
}

