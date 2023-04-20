# module "branch1" {
#   source  = "terraform-aviatrix-modules/mc-edge/aviatrix"
#   version = "v1.2.1"

#   site_id = "branch1"

#   edge_gws = {
    
#     gw1 = {
#       # ZTP configuration
#       ztp_file_download_path = "/mnt/c/gitrepos/dish"
#       ztp_file_type          = "iso"

#       gw_name = "branch1gw1"

#       # Management interface
#       management_interface_config    = "DHCP"
#       # management_interface_ip_prefix = "172.16.1.10/24"
#       # management_default_gateway_ip  = "172.16.1.1"

#       # DNS
#       # dns_server_ip           = "8.8.8.8"
#       # secondary_dns_server_ip = "8.8.4.4"

#       # WAN interface
#       wan_interface_ip_prefix = "10.1.13.2/24"
#       wan_default_gateway_ip  = "10.1.13.1"

#       wan_public_ip = "149.97.222.34" # Required for peering over internet

#       # Management over private or internet
#       enable_management_over_private_network = false
#       management_egress_ip_prefix            = "149.97.222.34/32"

#       # LAN interface configuraation
#       lan_interface_ip_prefix = "10.1.12.2/24"
#       local_as_number         = 65010

#       # prepend_as_path = [65010,65010,65010]

#       # spoke_bgp_manual_advertise_cidrs = ["192.168.1.0/24"]

#       # Only enable this when the Edge Gateway status shows up, after loaded ZTP ISO/CloudInit
#         bgp_peers = {
#           peer1 = {
#             connection_name   = "branch1gw1-peer"
#             remote_lan_ip     = "10.1.12.1"
#             bgp_remote_as_num = 65300
#           }
#         }

#       # Change attached to true, after the Edge Gateway status shows up, after loaded ZTP ISO/CloudInit
#       # Attach to transit GWs
#       transit_gws = {
#         transit1 = {
#           name                        = module.mc-transit.transit_gateway.gw_name
#           attached                    = true
#           enable_jumbo_frame          = false
#           enable_insane_mode          = true
#           enable_over_private_network = true
#           # spoke_prepend_as_path = [65010,65010,65010]
#           # transit_prepend_as_path = [65001,65001,65001]
#         }
#       }
      
#     }

#   }
# }
