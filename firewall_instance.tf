# resource "aviatrix_firewall_instance" "palo1" {
#     firewall_name = "palo1"
#     firewall_size = "m5.xlarge"
#     vpc_id = aviatrix_vpc.security.vpc_id
#     firewall_image = "Palo Alto Networks VM-Series Next-Generation Firewall Bundle 1"
#     firewall_image_version = "11.0.0"
#     zone = "us-east-1a"
#     egress_subnet = "10.64.254.16/28"
#     tags = {
#         }
#     management_subnet = "10.64.254.0/28"
# }

