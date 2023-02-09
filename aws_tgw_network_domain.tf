# Define TGW Network Domains
resource "aviatrix_aws_tgw_network_domain" "shared" {
    name = "Shared_Service_Domain"
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
}

resource "aviatrix_aws_tgw_network_domain" "edge" {
    name = "Aviatrix_Edge_Domain"
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
}

resource "aviatrix_aws_tgw_network_domain" "default" {
    name = "Default_Domain"
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
}

resource "aviatrix_aws_tgw_network_domain" "security" {
    name = "security"
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
    aviatrix_firewall = true
}

resource "aviatrix_aws_tgw_network_domain" "dev" {
    name = "dev"
    tgw_name = aviatrix_aws_tgw.aws_tgw.tgw_name
}

