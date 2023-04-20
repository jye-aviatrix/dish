# Enable Security VPC FireNet feature
# resource "aviatrix_firenet" "security" {
#     vpc_id = aviatrix_vpc.security.vpc_id
#     inspection_enabled = true
#     egress_enabled = true
#     tgw_segmentation_for_egress_enabled = false
#     hashing_algorithm = "5-Tuple"
#     depends_on = [
#       aviatrix_aws_tgw_vpc_attachment.security
#     ]
# }