# Create TGWO (Orchestrated TGW)

resource "aviatrix_aws_tgw" "aws_tgw" {
    tgw_name = "ue1tgw"
    account_name = var.avx_access_account
    region = var.region
    aws_side_as_number = 64512
    inspection_mode = "Connection-based"
}
