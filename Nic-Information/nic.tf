# resource "azurerm_network_interface" "nic-project" {

#   for_each = {

#     vm1 = {
#       name      = "corp-prod-nic01"
#       rg        = "corp-prod-rg-eastus"
#       location  = "East US"
#       subnet_id = "<PROD_SUBNET_ID>"
#     }

#     vm2 = {
#       name      = "corp-dev-nic01"
#       rg        = "corp-dev-rg-eastus"
#       location  = "West US"
#       subnet_id = "<DEV_SUBNET_ID>"
#     }

#   }

#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.rg

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = each.value.subnet_id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

